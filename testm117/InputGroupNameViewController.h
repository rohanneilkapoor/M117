//
//  InputGroupNameViewController.h
//  testm117
//
//  Created by Gargium on 5/24/16.
//  Copyright © 2016 Gargium. All rights reserved.
//

#import <UIKit/UIKit.h>
@import CoreLocation;
#import "MPCHandler.h"
#import "chatViewController.h"

@interface InputGroupNameViewController : UIViewController <UITextFieldDelegate, CLLocationManagerDelegate>
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UILabel *addressLabel;
@property (weak, nonatomic) IBOutlet UIButton *createGroupButton;
@property MPCHandler *mpchandler;
- (IBAction)nextButtonPressed:(id)sender;

@end
