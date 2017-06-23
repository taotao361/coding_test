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
        instance = [[self alloc] initWithBaseURL:[NSURL URLWithString:kBaseUrlStr_Test]];
    });
    return instance;
}

- (instancetype)initWithBaseURL:(NSURL *)url {
    if (self = [super initWithBaseURL:url]) {
        self.responseSerializer = [AFJSONResponseSerializer serializer];
        self.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/plain", @"text/javascript", @"text/json", @"text/html", nil];
        
        [self.requestSerializer setValue:@"application/json" forHTTPHeaderField:@"Accept"];
        [self.requestSerializer setValue:url.absoluteString forHTTPHeaderField:@"Referer"];
//        self.securityPolicy.allowInvalidCertificates = YES;
    }
    return self;
}


- (void)requestWithRequestType:(YTClientAPIManagerType)type
                  relativePath:(NSString *)relativePath
                         paras:(NSDictionary *)paras
                responsedClass:(__unsafe_unretained Class)responsedClass
                     responsed:(responsedBlock)responsedBlock {
    
    if (type == YTClientAPIManagerTypeGET) {
        [self GET:relativePath parameters:paras progress:^(NSProgress * _Nonnull downloadProgress) {
            ;
        } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            YTBaseModel *data = [self dealWith:responseObject class:responsedClass];
            if (data) {
                responsedBlock(data,nil);
            }
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            responsedBlock(nil,error);
        }];
    } else if (type == YTClientAPIManagerTypePOST) {
        [self POST:relativePath parameters:paras progress:^(NSProgress * _Nonnull uploadProgress) {
            ;
        } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            YTBaseModel *data  = [self dealWith:responseObject class:responsedClass];
            if (data) {
                responsedBlock(data,nil);
            }
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            responsedBlock(nil,error);
        }];
    }
}

- (YTBaseModel *)dealWith:(id)responseObject class:(Class)responsedClass {
    YTBaseModel *baseModel = nil;
    if (responseObject) {
        baseModel = [responsedClass mj_objectWithKeyValues:responseObject[@"data"]];
    }
    if (nil == baseModel) {
        baseModel = [responsedClass mj_objectWithKeyValues:responseObject];
    }
    YTLog(@"%@",responseObject)
    return baseModel;
}








@end
