//
//  YTRootTabbarController.m
//  coding_test
//
//  Created by yangxutao on 2017/6/22.
//  Copyright © 2017年 yangxutao. All rights reserved.
//

#import "YTRootTabbarController.h"
#import "YTMineViewController.h"
#import "YTTaskViewController.h"
#import "YTProjectViewController.h"
#import "YTTweetViewController.h"
#import "YTRootNavController.h"
#import "YTMessageViewController.h"

@interface YTRootTabbarController ()

@end

@implementation YTRootTabbarController

- (void)loadView {
    [super loadView];
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self addControllerWithNormalImage:@"project_normal" selectedImage:@"project_selected" title:@"项目" childController:@"YTProjectViewController"];
    [self addControllerWithNormalImage:@"task_normal" selectedImage:@"task_selected" title:@"任务" childController:@"YTTaskViewController"];
    [self addControllerWithNormalImage:@"tweet_normal" selectedImage:@"tweet_selected" title:@"冒泡" childController:@"YTTweetViewController"];
    [self addControllerWithNormalImage:@"privatemessage_normal" selectedImage:@"privatemessage_selected" title:@"消息" childController:@"YTMessageViewController"];
    [self addControllerWithNormalImage:@"me_normal" selectedImage:@"me_selected" title:@"wo" childController:@"YTMineViewController"];
 
}






- (void)addControllerWithNormalImage:(NSString *)normal selectedImage:(NSString *)selected title:(NSString *)title childController:(NSString *)childClass {
    UIViewController *vc = [[NSClassFromString(childClass) alloc] init];
    vc.tabBarItem.image = [UIImage imageNamed:normal];
    vc.tabBarItem.selectedImage = [UIImage imageNamed:selected];
    vc.tabBarItem.title = title;
    YTRootNavController *projectNav = [[YTRootNavController alloc] initWithRootViewController:vc];
    [self addChildViewController:projectNav];

}











@end
