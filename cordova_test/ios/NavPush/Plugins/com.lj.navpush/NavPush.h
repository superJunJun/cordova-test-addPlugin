//
//  NavPushClass.h
//  HelloWorld
//
//  Created by lijun on 2018/5/22.
//

#import <Cordova/CDVPlugin.h>
#import "AppDelegate.h"

@interface NavPush: CDVPlugin

- (void)navigationPush:(CDVInvokedUrlCommand*)command;

@end
