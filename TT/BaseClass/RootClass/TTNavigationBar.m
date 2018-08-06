//
//  TTNavigationBar.m
//  TT
//
//  Created by 苏强 on 2018/8/6.
//  Copyright © 2018年 苏强. All rights reserved.
//

#import "TTNavigationBar.h"

@implementation TTNavigationBar

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self addPageSubviews];
    }
    return self;
}

- (void)addPageSubviews {
    self.barTintColor = [UIColor orangeColor];
    UIView *titleView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 44)];

    [self addSubview:titleView];
}

@end
