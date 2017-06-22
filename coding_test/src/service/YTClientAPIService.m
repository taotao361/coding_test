//
//  YTClientAPIService.m
//  coding_test
//
//  Created by yangxutao on 2017/6/22.
//  Copyright © 2017年 yangxutao. All rights reserved.
//

#import "YTClientAPIService.h"

@implementation YTClientAPIService

+ (instancetype)shareInstance {
    static YTClientAPIService *service = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        service = [[YTClientAPIService alloc] init];
    });
    return service;
}









@end
