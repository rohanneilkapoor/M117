//
//  ViewController.m
//  testm117
//
//  Created by Gargium on 5/23/16.
//  Copyright © 2016 Gargium. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.delegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];

    [self.delegate.mpcHandler setupPeerWithDisplayName:[UIDevice currentDevice].name];
    [self.delegate.mpcHandler setupSession];
    [self.delegate.mpcHandler advertiseSelf:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)m117:(id)sender {
    
//    self.delegate = (AppDelegate*)[[UIApplication sharedApplication] delegate];
//    self.browser = [[MCBrowserViewController alloc] initWithServiceType:kServiceType session:self.delegate.session];
//    [self presentViewController:self.browser animated:YES completion:nil]
    
    if (self.delegate.mpcHandler.browserSession != nil) {
        [[self.delegate mpcHandler] setupBrowser];
        [[[self.delegate mpcHandler] browser] setDelegate:self];
        [self presentViewController:self.delegate.mpcHandler.browser animated:YES completion:nil];
    }
}


- (void)browserViewControllerWasCancelled:(MCBrowserViewController *)browserViewController {
    [self.delegate.mpcHandler.browser dismissViewControllerAnimated:YES completion:nil];
}

-(void)browserViewControllerDidFinish:(MCBrowserViewController *)browserViewController {
    NSLog(@"hi");
    [self.delegate.mpcHandler.browser dismissViewControllerAnimated:YES completion:nil];
}


@end
