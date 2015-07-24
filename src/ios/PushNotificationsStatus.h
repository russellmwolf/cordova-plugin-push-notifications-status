//
//  Created by Russell Wolf
//

#import <Cordova/CDV.h>

@interface PushNotificationsStatus: CDVPlugin

- (void) isPushNotificationsEnabled:(CDVInvokedUrlCommand*)command;

@end

