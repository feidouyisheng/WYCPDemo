//
//  ArenaTableViewController.h
//  WYCPDemo
//
//  Created by ZLMac on 15-4-23.
//  Copyright (c) 2015年 lgwh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ArenaTableViewController : UITableViewController
@property (weak, nonatomic) IBOutlet UIButton *buttonBall;
- (IBAction)chooseBall:(UIButton *)sender;

@end
