//
//  YTMineUserCell.h
//  coding_test
//
//  Created by yangxutao on 2017/6/23.
//  Copyright © 2017年 yangxutao. All rights reserved.
//

#import <UIKit/UIKit.h>
@class YTUserModel;
@interface YTMineUserCell : UITableViewCell
- (void)refreshDataWithUserModel:(YTUserModel *)model;
+ (CGFloat)cellHeight;

@end
