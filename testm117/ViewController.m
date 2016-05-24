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
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)m117:(id)sender {
    
    AppDelegate *delegate = (AppDelegate*)[[UIApplication sharedApplication] delegate];
    MCBrowserViewController *browserViewController = [[MCBrowserViewController alloc] initWithServiceType:kServiceType session:delegate.session];
    [self presentViewController:browserViewController animated:YES completion:nil];

    
    
}

@end
