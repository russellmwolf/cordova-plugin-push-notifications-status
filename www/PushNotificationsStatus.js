module.exports = PushNotificationsStatus = {};

PushNotificationsStatus.isPushNotificationsEnabled = function(app, callback) {
	cordova.exec(
		// Success callback
		callback,
		// Failure callback
		function(err) { console.log('OpenSettins.settings error'); },
		// Native Class Name
		"PushNotificationsStatus",
		// Name of method in native class.
		"isPushNotificationsEnabled",
		// array of args to pass to method.
		[]
	);
};

return PushNotificationsStatus;

