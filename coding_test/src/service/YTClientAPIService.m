//
//  YTClientAPIService.m
//  coding_test
//
//  Created by yangxutao on 2017/6/22.
//  Copyright © 2017年 yangxutao. All rights reserved.
//

#import "YTClientAPIService.h"
#import "YTClientAPIManager.h"
#import "YTUserModel.h"
//获取用户信息
static NSString * const YTClientAPIUserInfo = @"api/user/key/taotaoyy/";





@implementation YTClientAPIService

+ (instancetype)shareInstance {
    static YTClientAPIService *service = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        service = [[YTClientAPIService alloc] init];
    });
    return service;
}

- (void)requestWithParas:(NSDictionary *)paras responsedBlock:(responsedBlock)block {
    [[YTClientAPIManager shareInstance] requestWithRequestType:YTClientAPIManagerTypeGET relativePath:YTClientAPIUserInfo paras:paras responsedClass:[YTUserModel class] responsed:^(id datas, NSError *error) {
        block(datas,error);
    }];
}









@end
