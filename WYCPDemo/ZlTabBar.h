//
//  ZlTabBar.h
//  WYCPDemo
//
//  Created by ZLMac on 15-4-22.
//  Copyright (c) 2015年 lgwh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZLButton.h"

@class ZlTabBar;

@protocol ZlTabBarDelegate <NSObject>

@optional

- (void)tabBar:(ZlTabBar*)tabBar didSelectItemIndex:(int)index;

@end

@interface ZlTabBar : UIView

@property (nonatomic,weak) ZLButton *selectedButton;

@property (nonatomic,assign) id <ZlTabBarDelegate> delegate;

- (void)addTabBarButtonWithName:(NSString*)name selectedName:(NSString*)selectedName;
@end
