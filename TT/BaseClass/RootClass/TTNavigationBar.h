//
//  TTNavigationBar.h
//  TT
//
//  Created by 苏强 on 2018/8/6.
//  Copyright © 2018年 苏强. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol TTNavigationBarDelegate <NSObject>

@end

@interface TTNavigationBar : UINavigationBar

@property (nonatomic, weak)id<TTNavigationBarDelegate> TTNavigationBarDelegate;

@end
