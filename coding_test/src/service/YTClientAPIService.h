//
//  YTClientAPIService.h
//  coding_test
//
//  Created by yangxutao on 2017/6/22.
//  Copyright © 2017年 yangxutao. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^responsedBlock)(id responsedDatas,NSError *error);

@interface YTClientAPIService : NSObject

+ (instancetype)shareInstance;

// ------ userInfo
- (void)requestWithParas:(NSDictionary *)paras responsedBlock:(responsedBlock)block;



@end
