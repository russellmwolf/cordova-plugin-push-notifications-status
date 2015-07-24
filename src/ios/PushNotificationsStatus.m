#import "PushNotificationsStatus.h"

@implementation PushNotificationsStatus

  -(void) isPushNotificationsEnabled:(CDVInvokedUrlCommand*)command {
      notificationsEnabled = [[UIApplication sharedApplication] isRegisteredForRemoteNotifications]

      [self.commandDelegate sendPluginResult:notificationsEnabled callbackId:command.callbackId];
  }

@end
