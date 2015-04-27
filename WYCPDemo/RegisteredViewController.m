//
//  RegisteredViewController.m
//  WYCPDemo
//
//  Created by ZLMac on 15-4-24.
//  Copyright (c) 2015年 lgwh. All rights reserved.
//

#import "RegisteredViewController.h"

@interface RegisteredViewController ()
@property (nonatomic,assign) BOOL isEmail;
@end

@implementation RegisteredViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.isEmail = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)chooseReisteredKind:(UIButton *)sender {
   
    NSString *buttonTitle = nil;
    self.title =  self.isEmail?@"邮箱注册":@"手机注册";
    buttonTitle = self.isEmail?@"手机注册>":@"邮箱注册>";
    [sender setTitle:buttonTitle forState:UIControlStateNormal];
    self.isEmail = !self.isEmail;
}

- (IBAction)cancel:(UIBarButtonItem *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
