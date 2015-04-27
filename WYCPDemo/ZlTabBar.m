//
//  ZlTabBar.m
//  WYCPDemo
//
//  Created by ZLMac on 15-4-22.
//  Copyright (c) 2015年 lgwh. All rights reserved.
//

#import "ZlTabBar.h"

@implementation ZlTabBar

//- (id)initWithFrame:(CGRect)frame
//{
//    self = [super initWithFrame:frame];
//    if (self) {
//        [self setSubviews];
//    }
//    return self;
//}

//- (void)setSubviews
//{
//    for (int i = 0; i<5; i++) {
//        ZLButton *button = [ZLButton buttonWithType:UIButtonTypeCustom];
//        button.tag = i;
//        NSString *name = [NSString stringWithFormat:@"TabBar_%d",i];
//        [button setBackgroundImage:[UIImage imageNamed:name] forState:UIControlStateNormal];
//        NSString *selectName = [NSString stringWithFormat:@"TabBar_%D_selected",i];
//        [button setBackgroundImage:[UIImage imageNamed:selectName] forState:UIControlStateSelected];
//        
//        [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchDown];
//        [self addSubview:button];
//        if (i==0) {
//            [self buttonClick:button];
//        }
//    }
//
//}

- (void)addTabBarButtonWithName:(NSString *)name selectedName:(NSString *)selectedName
{
    ZLButton *button = [ZLButton buttonWithType:UIButtonTypeCustom];
    [button setBackgroundImage:[UIImage imageNamed:name] forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageNamed:selectedName] forState:UIControlStateSelected];
    [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchDown];
    [self addSubview:button];
    if (self.subviews.count == 1) {
            [self buttonClick:button];
    }

}
- (void)layoutSubviews
{
    
    [super layoutSubviews];
    
    for (int i = 0; i<self.subviews.count; i++) {
        ZLButton *button = self.subviews[i];
        button.tag = i;
        CGFloat buttonW = self.frame.size.width/self.subviews.count;
        CGFloat buttonH = self.frame.size.height;
        CGFloat buttonX = buttonW*i;
        CGFloat buttonY = 0;
        button.frame = CGRectMake(buttonX, buttonY, buttonW, buttonH);
   }
}

- (void)buttonClick:(ZLButton*)button
{
    if ([self.delegate respondsToSelector:@selector(tabBar:didSelectItemIndex:)]) {
        [self.delegate tabBar:self didSelectItemIndex:(int)button.tag];
    }
    self.selectedButton.selected = NO;
    button.selected = YES;
    self.selectedButton = button;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
