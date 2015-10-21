//
//  LYTabBarController.m
//  LLRiseTabBarDemo
//
//  Created by LianLeven on 15/10/21.
//  Copyright © 2015年 lichangwen. All rights reserved.
//

#import "LYTabBarController.h"
#import "LLHomeViewController.h"
#import "LLSameCityViewController.h"
#import "LLMessageViewController.h"
#import "LLMineViewController.h"
#import "LYSpaceVC.h"
#import "UIImage+LYColor.h"
@implementation LYTabBarController
- (void)viewDidLoad{
    [super viewDidLoad];
    [self setupViewControllers];
    [self configureStyle];
}
- (void)configureStyle{
    //去掉上部的黑色线条，
    //如果加上黑色线条的话可以这样。view自定义高度为1，宽度为tabBar的宽度 [tabbarController.tabBar addSubview:view];
    [[UITabBar appearance] setBackgroundImage:[UIImage imageWithLYColor:[UIColor clearColor]]];
    [[UITabBar appearance] setShadowImage:[UIImage new]];
    UIView *topLineView = [[UIView alloc] init];
    topLineView.frame = CGRectMake(0, 0, CGRectGetWidth(self.tabBar.bounds), 1);
    topLineView.backgroundColor = [UIColor colorWithWhite:0.966 alpha:1.000];
    [self.tabBar addSubview:topLineView];
    
    //设置中间的tabBarItem 这个可以随便自定义
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake((self.tabBar.bounds.size.width-55)/2, self.tabBar.bounds.size.height - 100, 55, 100)];
    button.imageView.contentMode = UIViewContentModeScaleAspectFit;
    [button setImage:[UIImage imageNamed:@"post_normal"] forState:UIControlStateNormal];
    [self.tabBar addSubview:button];
    [self.tabBar bringSubviewToFront:button];
    
    [button addTarget:self action:@selector(tabBarDidSelectedRiseButton) forControlEvents:UIControlEventTouchUpInside];
}
- (void)setupViewControllers{
    
    UINavigationController *homeVC = [self navigationControllerWithController:[LLHomeViewController class]
                                                                  tabBarTitle:@"首页"
                                                                  normalImage:[UIImage imageNamed:@"home_normal"]
                                                                selectedImage:[UIImage imageNamed:@"home_highlight"]];
    UINavigationController *sameCity = [self navigationControllerWithController:[LLSameCityViewController class]
                                                                  tabBarTitle:@"同城"
                                                                  normalImage:[UIImage imageNamed:@"mycity_normal"]
                                                                selectedImage:[UIImage imageNamed:@"mycity_highlight"]];
    UINavigationController *message = [self navigationControllerWithController:[LLMessageViewController class]
                                                                    tabBarTitle:@"消息"
                                                                   normalImage:[UIImage imageNamed:@"message_normal"]
                                                                 selectedImage:[UIImage imageNamed:@"message_highlight"]];
    UINavigationController *mine = [self navigationControllerWithController:[LLMineViewController class]
                                                                   tabBarTitle:@"我"
                                                                normalImage:[UIImage imageNamed:@"account_normal"]
                                                              selectedImage:[UIImage imageNamed:@"account_highlight"]];
    LYSpaceVC *spaceVC = [[LYSpaceVC alloc] init];
    spaceVC.tabBarItem.enabled = NO;
    spaceVC.tabBarItem.title = nil;
    self.viewControllers = @[homeVC,sameCity,spaceVC,message,mine];
    
    
}
- (UINavigationController *)navigationControllerWithController:(Class)controller tabBarTitle:(NSString *)tabBarTitle normalImage:(UIImage *)normalImage selectedImage:(UIImage *)selectedImage{
    UIViewController *vc = [[controller alloc] init];;
    
    UITabBarItem *item = [[UITabBarItem alloc]
                          initWithTitle:tabBarTitle
                          image:normalImage
                          selectedImage:selectedImage];
    vc.tabBarItem = item;
    vc.title = tabBarTitle;
    item.image = [item.image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    item.selectedImage = [item.selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
    return nav;
}
#pragma mark - action

- (void)tabBarDidSelectedRiseButton {

    UIViewController *viewController = self.selectedViewController;
    
    UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:nil
                                                             delegate:nil
                                                    cancelButtonTitle:@"取消"
                                               destructiveButtonTitle:nil
                                                    otherButtonTitles:@"拍照", @"从相册选取", @"淘宝一键转卖", nil];
    [actionSheet showInView:viewController.view];
}

@end
