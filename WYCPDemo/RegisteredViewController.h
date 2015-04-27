//
//  RegisteredViewController.h
//  WYCPDemo
//
//  Created by ZLMac on 15-4-24.
//  Copyright (c) 2015年 lgwh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RegisteredViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *buttonRegistered;

- (IBAction)chooseReisteredKind:(UIButton *)sender;

- (IBAction)cancel:(UIBarButtonItem *)sender;

@end
