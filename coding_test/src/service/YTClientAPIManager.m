//
//  YTClientAPIManager.m
//  coding_test
//
//  Created by yangxutao on 2017/6/22.
//  Copyright © 2017年 yangxutao. All rights reserved.
//

#import "YTClientAPIManager.h"

@implementation YTClientAPIManager

+ (instancetype)shareInstance {
    static YTClientAPIManager *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[YTClientAPIManager alloc] init];
    });
    return instance;
}

- (instancetype)initWithBaseURL:(NSURL *)url {
    if (self = [super initWithBaseURL:url]) {
        
    }
    return self;
}



@end
