#import "PushNotificationsStatus.h"

@implementation PushNotificationsStatus

  - (void)isPushNotificationsEnabled:(CDVInvokedUrlCommand*)command 
{

    UIUserNotificationSettings *grantedSettings = [[UIApplication sharedApplication] currentUserNotificationSettings];

    NSString *payload = @"false";
    if (grantedSettings.types & UIUserNotificationTypeAlert) {
      payload = @"true";    
    }

    CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:payload];

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
  }

@end
