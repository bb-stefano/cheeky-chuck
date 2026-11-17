// plugin.installreferrer — reads the Google Play install referrer (the `referrer=` part of the Play Store link
// that delivered the install) through Google's Install Referrer library, once, and hands it to Lua.
//
//   local ref = require("plugin.installreferrer")
//   ref.get(function(e) ... end)   -- e.referrer (raw string, "" when none), e.clickTime / e.installTime (seconds
//                                  -- since the epoch, 0 when unknown), e.installVersion, e.error (nil when ok)
//
// Debug / sideloaded APKs get e.error = "service unavailable" or "feature not supported"; only installs delivered
// by the Play Store carry a referrer, and Play keeps it for 90 days after the install.
package plugin.installreferrer;

import android.os.RemoteException;

import com.android.installreferrer.api.InstallReferrerClient;
import com.android.installreferrer.api.InstallReferrerStateListener;
import com.android.installreferrer.api.ReferrerDetails;
import com.ansca.corona.CoronaActivity;
import com.ansca.corona.CoronaEnvironment;
import com.ansca.corona.CoronaLua;
import com.ansca.corona.CoronaRuntime;
import com.ansca.corona.CoronaRuntimeTask;
import com.naef.jnlua.JavaFunction;
import com.naef.jnlua.LuaState;
import com.naef.jnlua.NamedJavaFunction;

@SuppressWarnings({"WeakerAccess", "unused"})
public class LuaLoader implements JavaFunction {
	private static final String EVENT_NAME = "installReferrer";

	@Override
	public int invoke(LuaState L) {
		L.register(L.toString(1), new NamedJavaFunction[] { new GetWrapper() });
		return 1;
	}

	private static class Result {
		String referrer = "", installVersion = "", error = null;
		long clickTime = 0, installTime = 0;
	}

	/** Sends the result to the Lua listener on Corona's thread, once. */
	private static void dispatch(final int listener, final Result r) {
		CoronaActivity activity = CoronaEnvironment.getCoronaActivity();
		if (activity == null) return;
		activity.getRuntimeTaskDispatcher().send(new CoronaRuntimeTask() {
			@Override
			public void executeUsing(CoronaRuntime runtime) {
				LuaState L = runtime.getLuaState();
				CoronaLua.newEvent(L, EVENT_NAME);
				L.pushString(r.referrer); L.setField(-2, "referrer");
				L.pushString(r.installVersion); L.setField(-2, "installVersion");
				L.pushNumber(r.clickTime); L.setField(-2, "clickTime");
				L.pushNumber(r.installTime); L.setField(-2, "installTime");
				if (r.error != null) { L.pushString(r.error); L.setField(-2, "error"); }
				try {
					CoronaLua.dispatchEvent(L, listener, 0);
				} catch (Exception ignored) {
				}
				CoronaLua.deleteRef(L, listener);
			}
		});
	}

	/** installreferrer.get(listener) */
	public int get(LuaState L) {
		if (!CoronaLua.isListener(L, 1, EVENT_NAME)) {
			L.pushBoolean(false);
			return 1;
		}
		final int listener = CoronaLua.newRef(L, 1);
		final CoronaActivity activity = CoronaEnvironment.getCoronaActivity();
		if (activity == null) {
			L.pushBoolean(false);
			return 1;
		}
		activity.runOnUiThread(new Runnable() {
			@Override
			public void run() {
				final Result r = new Result();
				final InstallReferrerClient client;
				try {
					client = InstallReferrerClient.newBuilder(activity.getApplicationContext()).build();
				} catch (Throwable t) {
					r.error = "client: " + t.getMessage();
					dispatch(listener, r);
					return;
				}
				try {
					client.startConnection(new InstallReferrerStateListener() {
						private boolean done = false;

						@Override
						public void onInstallReferrerSetupFinished(int code) {
							if (done) return;
							done = true;
							try {
								if (code == InstallReferrerClient.InstallReferrerResponse.OK) {
									ReferrerDetails d = client.getInstallReferrer();
									r.referrer = d.getInstallReferrer() == null ? "" : d.getInstallReferrer();
									r.installVersion = d.getInstallVersion() == null ? "" : d.getInstallVersion();
									r.clickTime = d.getReferrerClickTimestampSeconds();
									r.installTime = d.getInstallBeginTimestampSeconds();
								} else if (code == InstallReferrerClient.InstallReferrerResponse.FEATURE_NOT_SUPPORTED) {
									r.error = "feature not supported";
								} else if (code == InstallReferrerClient.InstallReferrerResponse.SERVICE_UNAVAILABLE) {
									r.error = "service unavailable";
								} else {
									r.error = "response " + code;
								}
							} catch (RemoteException e) {
								r.error = "remote: " + e.getMessage();
							} catch (Throwable t) {
								r.error = "error: " + t.getMessage();
							}
							try { client.endConnection(); } catch (Throwable ignored) {}
							dispatch(listener, r);
						}

						@Override
						public void onInstallReferrerServiceDisconnected() {
							if (done) return;
							done = true;
							r.error = "service disconnected";
							dispatch(listener, r);
						}
					});
				} catch (Throwable t) {
					r.error = "connect: " + t.getMessage();
					dispatch(listener, r);
				}
			}
		});
		L.pushBoolean(true);
		return 1;
	}

	private class GetWrapper implements NamedJavaFunction {
		@Override
		public String getName() { return "get"; }

		@Override
		public int invoke(LuaState L) { return get(L); }
	}
}
