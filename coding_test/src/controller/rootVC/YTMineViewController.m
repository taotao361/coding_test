//
//  YTMineViewController.m
//  coding_test
//
//  Created by yangxutao on 2017/6/22.
//  Copyright © 2017年 yangxutao. All rights reserved.
//

#import "YTMineViewController.h"

@interface YTMineViewController ()

@property (nonatomic, strong) UITableView *tableView;


@end

@implementation YTMineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[YTClientAPIService shareInstance] requestWithParas:nil responsedBlock:^(id responsedDatas, NSError *error) {
        ;
    }];
    
    
}




















@end
