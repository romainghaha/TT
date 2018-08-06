//
//  TTTabBar.m
//  TT
//
//  Created by 苏强 on 2018/8/6.
//  Copyright © 2018年 苏强. All rights reserved.
//

#import "TTTabBar.h"

@interface TTTabBar()

@property (nonatomic, strong)UIButton *goBackButton;
@property (nonatomic, strong)UIButton *toNextButton;
@property (nonatomic, strong)UIButton *settingsButton;

@end

@implementation TTTabBar

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self addPageSubviews];
    }
    return self;
}

- (void)addPageSubviews{
    [self addSubview:self.goBackButton];
    [self addSubview:self.toNextButton];
    [self addSubview:self.settingsButton];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    NSInteger tabBarItemIndex = 0;
    NSInteger tabBarButtonIndex = 0;
    CGFloat barWidth = self.bounds.size.width;
    CGFloat barHeight = self.bounds.size.height;
    
    self.goBackButton.frame = CGRectMake(0, 0, 60, 40);
    self.toNextButton.frame = CGRectMake(barWidth/5.0, 0, 60, 40);
    self.settingsButton.frame = CGRectMake(2*barWidth/5.0, 0, 60, 40);
    
    
    for(UIView *view in self.subviews){
        if ([view isKindOfClass:NSClassFromString(@"UITabBarButton")]) {
            tabBarItemIndex++;
            if(tabBarItemIndex == 1) {
                view.frame = CGRectMake(3*barWidth/5.0, 0, 60, 40);
            }
            if(tabBarItemIndex ==2) {
                view.frame = CGRectMake(4*barWidth/5.0, 0, 60, 40);
            }
        }
    }
}

- (void)goBackButtonClickAction {
    if([self.TTTabBarDelegate respondsToSelector:@selector(goBackButtonClickDelegateAction)]) {
        [self.TTTabBarDelegate goBackButtonClickDelegateAction];
    }
}
- (void)toNextButtonClickAction {
    if([self.TTTabBarDelegate respondsToSelector:@selector(toNextButtonClickDelegateAction)]) {
        [self.TTTabBarDelegate toNextButtonClickDelegateAction];
    }
}
- (void)settingsButtonClickAction {
    if([self.TTTabBarDelegate respondsToSelector:@selector(settingsButtonClickDelegateAction)]) {
        [self.TTTabBarDelegate settingsButtonClickDelegateAction];
    }
}

- (UIButton *)goBackButton {
    if (!_goBackButton) {
        _goBackButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 80, 60)];
        [_goBackButton setBackgroundColor:[UIColor redColor]];
        [_goBackButton setTitle:@"上一页" forState:UIControlStateNormal];
        [_goBackButton addTarget:self action:@selector(goBackButtonClickAction) forControlEvents:UIControlEventTouchUpInside];
    }
    return _goBackButton;
}

- (UIButton *)toNextButton {
    if (!_toNextButton) {
        _toNextButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 80, 60)];
        [_toNextButton setBackgroundColor:[UIColor redColor]];
        [_toNextButton setTitle:@"下一页" forState:UIControlStateNormal];
        [_toNextButton addTarget:self action:@selector(goBackButtonClickAction) forControlEvents:UIControlEventTouchUpInside];
    }
    return _toNextButton;
}

- (UIButton *)settingsButton {
    if (!_settingsButton) {
        _settingsButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 80, 60)];
        [_settingsButton setBackgroundColor:[UIColor redColor]];
        [_settingsButton setTitle:@"设置" forState:UIControlStateNormal];
        [_settingsButton addTarget:self action:@selector(goBackButtonClickAction) forControlEvents:UIControlEventTouchUpInside];
    }
    return _settingsButton;
}

@end
