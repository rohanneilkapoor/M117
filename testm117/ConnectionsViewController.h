//
//  ConnectionsViewController.h
//  testm117
//
//  Created by Gargium on 5/27/16.
//  Copyright © 2016 Gargium. All rights reserved.
//

#import <UIKit/UIKit.h>
@import MultipeerConnectivity;
#import "MPCHandler.h"
#import "AppDelegate.h"

@interface ConnectionsViewController : UIViewController <MCBrowserViewControllerDelegate, UITextFieldDelegate, UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UINavigationItem *navTitle;

@property(nonatomic) NSString *groupName;

@property (weak, nonatomic) IBOutlet UITableView *tblConnectedDevices;
@property (weak, nonatomic) IBOutlet UIButton *btnDisconnect;
- (IBAction)disconnect:(id)sender;

@property (nonatomic, strong) NSMutableArray *arrConnectedDevices;
-(void)peerDidChangeStateWithNotification:(NSNotification *)notification;

@property (strong, nonatomic) AppDelegate *delegate;


@end
