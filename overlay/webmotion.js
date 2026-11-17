// Web build only. Solar2D's HTML5 runtime has no accelerometer, so index.html listens to the browser's motion sensor
// and keeps the latest sample in window.ccMotion; webaccel.lua reads it through this module (require("webmotion")).
window.webmotion = {
  // "x,y,z" in g, in Corona's convention (gravity points down in device axes: upright portrait y = -1,
  // face up z = -1), or "" before the first sample. A string crosses the JS/Lua bridge without surprises.
  read: function () {
    var s = window.ccMotion;
    return s ? s.x + ',' + s.y + ',' + s.z : '';
  }
};
