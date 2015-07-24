#import "PushNotificationsStatus.h"

@implementation PushNotificationsStatus

  - (void)isPushNotificationsEnabled:(CDVInvokedUrlCommand*)command {
      BOOL notificationsEnabled = [[UIApplication sharedApplication] isRegisteredForRemoteNotifications];

      NSString *payload = nil;
      payload = notificationsEnabled? @"true" : @"false";

      CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:payload];

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
  }

@end
