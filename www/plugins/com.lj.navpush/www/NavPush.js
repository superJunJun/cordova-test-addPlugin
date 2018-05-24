cordova.define("com.lj.navpush.NavPush", function(require, exports, module) {
var exec = require('cordova/exec');

// exports.navigationPush = function (arg0, success, error) {
//     exec(success, error, 'NavPush', 'coolMethod', [arg0]);
// };

var NavPush = function() {
};

NavPush.navigationPush = function() {
    console.warn('Showing keyboard not supported in iOS due to platform limitations.')
};

module.exports = NavPush;

});
