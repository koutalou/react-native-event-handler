const RNEventHandler = require('react-native').NativeModules.RNEventHandler;
const RNEventType = {
    nativeEventTypeUserDidTakeScreenshot: 1,
};

module.exports = {
    addListener: function (callback) {
	return RNEventHandler.watch(callback);
    },
};