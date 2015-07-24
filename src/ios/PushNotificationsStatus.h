//
//  Created by Russell Wolf
//

#import <Cordova/CDV.h>
// @import UIKit;

@interface PushNotificationsStatus : CDVPlugin

- (void) isPushNotificationsEnabled:(CDVInvokedUrlCommand*)command;

@end

