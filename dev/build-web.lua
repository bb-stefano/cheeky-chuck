-- Web (HTML5) build: python3 -I dev/web-stage.py, CoronaBuilder build --lua dev/build-web.lua, then python3 -I dev/web-index.py.
local params = {
  platform = 'html5',
  appName = 'CheekyChuck', -- no space: the HTML5 builder's zip step splits the name and leaves the .bin out
  appVersion = '1.6',
  dstPath = '/Users/stefano/work/games/cheeky-chuck/build/web',
  projectPath = '/Users/stefano/work/games/cheeky-chuck/build/web-game', -- staged by dev/web-stage.py (4x only)
  -- CoronaBuilder does not find the HTML5 template on its own (it ships inside the Simulator app)
  webtemplateLocation = '/Applications/Corona-3736/Corona Simulator.app/Contents/Resources/webtemplate.zip',
}
return params
