//
//  ArenaTableViewController.m
//  WYCPDemo
//
//  Created by ZLMac on 15-4-23.
//  Copyright (c) 2015年 lgwh. All rights reserved.
//

#import "ArenaTableViewController.h"

@interface ArenaTableViewController ()
@property (nonatomic,assign) BOOL isFootBall;
@end

@implementation ArenaTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.isFootBall = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return 0;
}


- (IBAction)chooseBall:(UIButton *)sender {
    
    NSString *imageName = nil;
    NSString *title = nil;
    if (_isFootBall) {
        imageName = @"ArenaHall_FootLogo";
        title = @"足球";
        self.navigationItem.title = @"篮球";
    }else {
        imageName = @"ArenaHall_BasketLogo";
        title = @"篮球";
        self.navigationItem.title = @"足球";
    }
    [sender setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    [sender setTitle:title forState:UIControlStateNormal];
    self.isFootBall = !self.isFootBall;
    
}
@end
