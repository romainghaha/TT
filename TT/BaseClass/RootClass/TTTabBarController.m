//
//  TTTabBarController.m
//  TT
//
//  Created by 苏强 on 2018/8/6.
//  Copyright © 2018年 苏强. All rights reserved.
//

#import "TTTabBarController.h"
#import "TTNavigationController.h"
#import "TTTabBar.h"

@interface TTTabBarController ()<TTTabBarDelegate>

@end

@implementation TTTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    TTTabBar *rootTabBar = [[TTTabBar alloc] init];
    rootTabBar.TTTabBarDelegate = self;
    [self setValue:rootTabBar forKey:@"TabBar"];
    
    [self addChildViewControllerWithClassName:@"TTBaseViewController" andImageName:@"" andTitle:@"首页"];
    [self addChildViewControllerWithClassName:@"TTBaseViewController" andImageName:@"" andTitle:@"折叠"];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)addChildViewControllerWithClassName:(NSString *)className andImageName:(NSString *)imageName andTitle:(NSString *)title {
    
    Class vcName = NSClassFromString(className);
    UIViewController *controller = [[vcName alloc] init];
    controller.tabBarItem.image = [[UIImage imageNamed:imageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//    controller.tabBarItem.selectedImage = [[UIImage imageNamed:[NSString stringWithFormat:@"%@_s",imageName]]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    NSMutableDictionary *dictM = [NSMutableDictionary dictionary];
//    dictM[NSForegroundColorAttributeName] = RGB47; //文字属性(前景色)
    [controller.tabBarItem setTitleTextAttributes:dictM forState:UIControlStateSelected];//点击状态下的文字颜色
    
    TTNavigationController *root = [[TTNavigationController alloc] initWithRootViewController:controller];
    root.tabBarItem.title = title;

    [self addChildViewController:root];
}

#pragma mark - TTTabBarDelegate

- (void)goBackButtonClickDelegateAction {
    NSLog(@"上一页");
}

- (void)settingsButtonClickDelegateAction {
    NSLog(@"设置");
}

- (void)toNextButtonClickDelegateAction {
    NSLog(@"下一页");
}

@end
