Push Notifications Status
======
A small cordova plugin that allows you to check whether the user has enabled/disabled notifications via iOS settings.  Wraps the ```isRegisteredForRemoteNotifications``` command in Objective-C.

Built with open source time @[philosophie](http://philosophie.is)

## Installation

```
$ cordova plugin add https://github.com/nrswolf/cordova-plugin-push-notifications-status
```

## Usage

```javascript
var successHandler = function(response) {
  alert(response);
}

var errorHandler = function(error) {
  alert(error);
}

PushNotificationsStatus.isPushNotificationsEnabled(successHandler, errorHandler);
```

