//
//  LLHomeViewController.m
//  LLRiseTabBarDemo
//
//  Created by HelloWorld on 10/18/15.
//  Copyright © 2015 melody. All rights reserved.
//

#import "LLHomeViewController.h"
#import "LYTestController.h"

@interface LLHomeViewController ()

@end

@implementation LLHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)pushButtonAction:(UIButton *)sender {
    LYTestController *testController = [[LYTestController alloc] init];
    testController.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:testController animated:YES];
}


@end
