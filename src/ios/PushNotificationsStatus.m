#import "PushNotificationsStatus.h"

@implementation PushNotificationsStatus

  - (void)isPushNotificationsEnabled:(CDVInvokedUrlCommand*)command 
{

  NSString *payload = @"false";
  
  if ([[UIApplication sharedApplication] respondsToSelector:@selector(currentUserNotificationSettings)]){
    UIUserNotificationSettings *notificationSettings = [[UIApplication sharedApplication] currentUserNotificationSettings];
    if (!notificationSettings || (notificationSettings.types == UIUserNotificationTypeNone)) {
      payload = @"false";
    } else {
      payload = @"true";
    }
  } else {
    UIRemoteNotificationType types = [[UIApplication sharedApplication] enabledRemoteNotificationTypes];
    if (types & UIRemoteNotificationTypeAlert) {
      payload = @"true";
    } else{
      payload = @"false";
    }
  }
  
  CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:payload];
  [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];

}

@end
