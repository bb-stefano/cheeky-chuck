-- Google Play build: release-signed with the upload key in keys/ (password in keys/upload-password.txt, never in
-- this file), targetStore google so CoronaBuilder also writes the .aab Play needs. Usage: see docs/store-listing.md.
local f = assert(io.open('/Users/stefano/work/games/cheeky-chuck/keys/upload-password.txt'))
local pw = f:read('*l'); f:close()
return {
  platform = 'android',
  appName = 'Cheeky Chuck',
  appVersion = '1.6',
  androidVersionCode = 8,
  androidAppPackage = 'com.jocogiant.cheekychuck',
  targetStore = 'google',
  dstPath = '/Users/stefano/work/games/cheeky-chuck/build/play',
  projectPath = '/Users/stefano/work/games/cheeky-chuck/game',
  keystore = '/Users/stefano/work/games/cheeky-chuck/keys/upload.jks',
  keystorePassword = pw,
  keystoreAlias = 'upload',
  keystoreAliasPassword = pw,
}
