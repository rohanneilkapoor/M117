//
//  chatViewController.m
//  testm117
//
//  Created by Gargium on 5/27/16.
//  Copyright © 2016 Gargium. All rights reserved.
//

#import "chatViewController.h"

@interface chatViewController ()

@end

@implementation chatViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"got the name!: %@", self.groupName);
    [self setTitleName];
    
    // Do any additional setup after loading the view.
}

-(void) setTitleName {
    self.navTitle.title = self.groupName;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
