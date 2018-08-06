//
//  TTTabBar.h
//  TT
//
//  Created by 苏强 on 2018/8/6.
//  Copyright © 2018年 苏强. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol TTTabBarDelegate<NSObject>

- (void)goBackButtonClickDelegateAction;
- (void)toNextButtonClickDelegateAction;
- (void)settingsButtonClickDelegateAction;

@end

@interface TTTabBar : UITabBar

@property (nonatomic, weak)id<TTTabBarDelegate> TTTabBarDelegate;

@end
