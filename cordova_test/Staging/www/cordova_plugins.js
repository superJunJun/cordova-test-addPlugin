cordova.define('cordova/plugin_list', function(require, exports, module) {
module.exports = [
  {
    "id": "com.lj.navpush.NavPush",
    "file": "plugins/com.lj.navpush/www/NavPush.js",
    "pluginId": "com.lj.navpush",
    "clobbers": [
      "cordova.plugins.NavPush"
    ]
  }
];
module.exports.metadata = 
// TOP OF METADATA
{
  "com.lj.navpush": "1.0.0",
  "cordova-plugin-whitelist": "1.3.3"
};
// BOTTOM OF METADATA
});