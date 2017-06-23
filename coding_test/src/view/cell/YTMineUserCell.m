//
//  YTMineUserCell.m
//  coding_test
//
//  Created by yangxutao on 2017/6/23.
//  Copyright © 2017年 yangxutao. All rights reserved.
//

#import "YTMineUserCell.h"
#import "YTUserModel.h"
@interface YTMineUserCell ()

@property (nonatomic, strong) UIImageView *iconView;
@property (nonatomic, strong) UILabel *nameLabel;
@property (nonatomic, strong) UILabel *specialPrefix;
@property (nonatomic, strong) UIImageView *arrowView;
//@property (nonatomic, strong) UIImageView *lineHorizontal;
//@property (nonatomic, strong) UIImageView *lineVertival;
@property (nonatomic, strong) UIButton *projectBtn;
@property (nonatomic, strong) UIButton *teamBtn;

@end


@implementation YTMineUserCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        self.accessoryType = UITableViewCellAccessoryDisclosureIndicator;//右边显示小箭头
        
        _iconView = [[UIImageView alloc] init];
        _iconView.layer.masksToBounds = YES;
        _iconView.layer.cornerRadius = 25;
        _iconView.frame = CGRectMake(15, 11, 50, 50);
        [self addSubview:_iconView];
        
        _nameLabel = [[UILabel alloc] init];
        _nameLabel.textAlignment = NSTextAlignmentLeft;
        _nameLabel.font = [UIFont  systemFontOfSize:13];
        _nameLabel.textColor = [UIColor blackColor];
        [self addSubview:_nameLabel];
        
        _specialPrefix = [[UILabel alloc] init];
        _specialPrefix.textColor = [UIColor grayColor];
        _specialPrefix.textAlignment = NSTextAlignmentLeft;
        _specialPrefix.font = [UIFont systemFontOfSize:12];
        [self addSubview:_specialPrefix];
        
        
        [_iconView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_top).offset(10);
            make.left.equalTo(self.mas_left).offset(15);
            make.size.mas_equalTo(CGSizeMake(50, 50));
        }];
        [_nameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.iconView.mas_top).offset(5);
            make.left.equalTo(self.iconView.mas_right).offset(10);
            make.size.mas_equalTo(CGSizeMake(200, 20));
        }];
        [_specialPrefix mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.nameLabel.mas_bottom).offset(20);
            make.left.equalTo(self.nameLabel.mas_left);
            make.size.mas_equalTo(CGSizeMake(200, 20));
        }];
        
        
    }
    return self;
}


+ (CGFloat)cellHeight {
    return 85;
}


- (void)refreshDataWithUserModel:(YTUserModel *)model {
    [self.iconView sd_setImageWithURL:[NSURL URLWithString:model.avatar]];
    _nameLabel.text = model.name;
    _specialPrefix.text = model.global_key;
}





@end
