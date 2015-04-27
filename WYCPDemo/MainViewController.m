//
//  MainViewController.m
//  WYCPDemo
//
//  Created by ZLMac on 15-4-22.
//  Copyright (c) 2015年 lgwh. All rights reserved.
//

#import "MainViewController.h"
#import "ZlTabBar.h"

@interface MainViewController ()
@end

@implementation MainViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    [self initSubViews];
}

- (void)initSubViews
{
    ZlTabBar *tabbar = [[ZlTabBar alloc] init];
    tabbar.delegate = self;
    tabbar.frame = self.tabBar.bounds;
    self.tabBar.backgroundColor = [UIColor clearColor];
    [self.tabBar addSubview:tabbar];
    
    //添加对应个数的按钮
    
    for (int i = 0; i < self.viewControllers.count; i++) {
        NSString *name = [NSString stringWithFormat:@"TabBar_%d",i];
        NSString *selectedName = [NSString stringWithFormat:@"TabBar_%d_selected",i];
        [tabbar addTabBarButtonWithName:name selectedName:selectedName];
    }
    
}
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


#pragma mark - ZlTabBarDelegate
- (void)tabBar:(ZlTabBar*)tabBar didSelectItemIndex:(int)index{
    
    self.selectedIndex = index;
    
}
@end
