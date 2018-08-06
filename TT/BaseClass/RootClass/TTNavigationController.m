//
//  TTNavigationController.m
//  TT
//
//  Created by 苏强 on 2018/8/6.
//  Copyright © 2018年 苏强. All rights reserved.
//

#import "TTNavigationController.h"
#import "TTNavigationBar.h"

@interface TTNavigationController ()

@end

@implementation TTNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    TTNavigationBar *rootNav = [[TTNavigationBar alloc] init];
    [self setValue:rootNav forKey:@"NavigationBar"];
    
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
