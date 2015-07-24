module.exports = PushNotificationsStatus = {};

PushNotificationsStatus.isPushNotificationsEnabled = function(successCallback, errorCallback) {
  cordova.exec(
    successCallback,
    errorCallback,
    "PushNotificationsStatus",
    "isPushNotificationsEnabled"
  );
};

return PushNotificationsStatus;

