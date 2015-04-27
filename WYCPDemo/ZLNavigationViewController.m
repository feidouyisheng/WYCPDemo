//
//  ZLNavigationViewController.m
//  WYCPDemo
//
//  Created by ZLMac on 15-4-22.
//  Copyright (c) 2015年 lgwh. All rights reserved.
//

#import "ZLNavigationViewController.h"

@interface ZLNavigationViewController ()

@end

@implementation ZLNavigationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
 
}

+(void)initialize//系统第一次使用这个类的时候调用(一个类只会调用一次)
{
    //设置导航栏主题
    UINavigationBar *nav = [UINavigationBar appearance];
    
    //设置背景图片
    NSString *name = nil;
    
    if ([[UIDevice currentDevice].systemVersion floatValue] >= 7.0) {
        
        name = @"NavBar64";
        
    }else {
        
        name = @"NavBar";
    }
    [nav setBackgroundImage:[UIImage imageNamed:name] forBarMetrics: UIBarMetricsDefault];
    
    //设置导航栏标题字体颜色
    [nav setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor],NSFontAttributeName:[UIFont boldSystemFontOfSize:20]}];
    nav.tintColor = [UIColor whiteColor];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if (self.viewControllers.count > 0) {
     
        viewController.hidesBottomBarWhenPushed = YES;
        UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"NavChevron"] style:UIBarButtonItemStyleDone target:self action:@selector(popViewControllerAnimated:)];
        viewController.navigationItem.leftBarButtonItem = backButton;
    }
    [super pushViewController:viewController animated:YES];
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
