//
//  AppDelegate.h
//  testm117
//
//  Created by Gargium on 5/23/16.
//  Copyright © 2016 Gargium. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MPCHandler.h"

extern NSString *const kServiceType; 

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
//@property (nonatomic, strong) MCAdvertiserAssistant *advertiser;
//@property (nonatomic, strong) MCSession *session;

@property (nonatomic, strong) MPCHandler *mpcHandler;


@end

