//
//  YTClientAPIManager.h
//  coding_test
//
//  Created by yangxutao on 2017/6/22.
//  Copyright © 2017年 yangxutao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFNetworking.h>

@interface YTClientAPIManager : AFHTTPSessionManager

+ (instancetype)shareInstance;


@end
