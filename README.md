Push Notifications Status
======
A small Cordova plugin that allows you to check whether the user has allowed notifications for a Cordova application via a device's iOS settings.  Calls the ```currentUserNotificationSettings``` Objective-C method and checks if the response includes the ```UIUserNotificationTypeAlert``` flag.

Built with open source time @[philosophie](http://philosophie.is)

## Installation

```
$ cordova plugin add com.nrswolf.cordova.push-notifications-status
```

## Usage

```javascript
var successHandler = function(response) {
  alert(response); // response will be either 'true' or 'false'
}

var errorHandler = function(error) {
  alert(error);
}

PushNotificationsStatus.isPushNotificationsEnabled(successHandler, errorHandler);
```

