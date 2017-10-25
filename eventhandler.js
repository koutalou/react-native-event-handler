const RNEventHandler = require('react-native').NativeModules.RNEventHandler;
export const RNEventType = {
    nativeEventTypeUserDidTakeScreenshot: 1,
};

module.exports = {
    addListener: function (callback) {
	return RNEventHandler.watch(callback);
    },
};
module.exports.eventType = RNEventType;