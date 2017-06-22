//
//  YTClientAPIManager.m
//  coding_test
//
//  Created by yangxutao on 2017/6/22.
//  Copyright © 2017年 yangxutao. All rights reserved.
//

#import "YTClientAPIManager.h"

#define kBaseUrlStr_Test @"https://coding.net/"

@implementation YTClientAPIManager

+ (instancetype)shareInstance {
    static YTClientAPIManager *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[YTClientAPIManager alloc] initWithBaseURL:[NSURL URLWithString:kBaseUrlStr_Test]];
    });
    return instance;
}

- (instancetype)initWithBaseURL:(NSURL *)url {
    if (self = [super initWithBaseURL:url]) {
        self.responseSerializer = [AFHTTPResponseSerializer serializer];
        self.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/plain", @"text/javascript", @"text/json", @"text/html", nil];
        self.requestSerializer = [AFHTTPRequestSerializer serializer];
        [self.requestSerializer setValue:@"application/json" forKey:@"accept"];
        [self.requestSerializer setValue:url.absoluteString forHTTPHeaderField:@"referer"];
        self.securityPolicy.allowInvalidCertificates = YES;
    }
    return self;
}








@end
