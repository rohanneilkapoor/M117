//
//  ViewController.h
//  testm117
//
//  Created by Gargium on 5/23/16.
//  Copyright © 2016 Gargium. All rights reserved.
//

#import <UIKit/UIKit.h>
@import MultipeerConnectivity;
#import "AppDelegate.h"
@import AVKit;
@import AVFoundation;
@import MediaPlayer;

@interface ViewController : UIViewController <MCBrowserViewControllerDelegate>

@property (strong, nonatomic) AppDelegate *delegate;
@property (strong, nonatomic) MCBrowserViewController *browser; 
@end

