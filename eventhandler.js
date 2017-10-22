const RNEventHandler = require('react-native').NativeModules.RNEventHandler;

module.exports = {
    watch: function (callback) {
	return RNEventHandler.watch(callback);
    },
};