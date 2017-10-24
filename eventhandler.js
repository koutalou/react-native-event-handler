const RNEventHandler = require('react-native').NativeModules.RNEventHandler;

module.exports = {
    addListener: function (callback) {
	return RNEventHandler.watch(callback);
    },
};