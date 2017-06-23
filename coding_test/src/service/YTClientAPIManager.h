//
//  YTClientAPIManager.h
//  coding_test
//
//  Created by yangxutao on 2017/6/22.
//  Copyright © 2017年 yangxutao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFNetworking.h>

typedef NS_ENUM(NSInteger,YTClientAPIManagerType) {
    YTClientAPIManagerTypeGET,
    YTClientAPIManagerTypePOST
};

typedef void(^responsedBlock)(id datas,NSError *error);

@interface YTClientAPIManager : AFHTTPSessionManager

+ (instancetype)shareInstance;

- (void)requestWithRequestType:(YTClientAPIManagerType)type
                  relativePath:(NSString *)relativePath
                         paras:(NSDictionary *)paras
                responsedClass:(Class)responsedClass
                     responsed:(responsedBlock)responsedBlock;


@end
