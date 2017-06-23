//
//  YTUserModel.h
//  coding_test
//
//  Created by yangxutao on 2017/6/22.
//  Copyright © 2017年 yangxutao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YTUserModel : YTBaseModel

///标签
@property (nonatomic, copy) NSString *tags_str;
///标签标记
@property (nonatomic, copy) NSString *tags;

@property (nonatomic, copy) NSString *job_str;

@property (nonatomic, copy) NSString *phone;

@property (nonatomic, assign) int job;

@property (nonatomic, assign) int sex;

@property (nonatomic, copy) NSString *birthday;
@property (nonatomic, copy) NSString *location;
@property (nonatomic, copy) NSString *company;
@property (nonatomic, copy) NSString *slogan;
@property (nonatomic, copy) NSString *website;
@property (nonatomic, copy) NSString *introduction;
@property (nonatomic, copy) NSString *avatar;
@property (nonatomic, copy) NSString *gravatar;
@property (nonatomic, copy) NSString *lavatar;
@property (nonatomic, assign) long created_at;
@property (nonatomic, assign) long last_logined_at;
@property (nonatomic, assign) long last_activity_at;
@property (nonatomic, copy) NSString *global_key;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *name_pinyin;
@property (nonatomic, assign) long updated_at;
@property (nonatomic, copy) NSString *path;
@property (nonatomic, assign) int status;
@property (nonatomic, copy) NSString *email;
@property (nonatomic, assign) int is_member;
@property (nonatomic, assign) int id;
@property (nonatomic, assign) double points_left;
@property (nonatomic, assign) int vip;
@property (nonatomic, assign) int follows_count;
@property (nonatomic, assign) int fans_count;
@property (nonatomic, assign) int tweets_count;
@property (nonatomic, copy) NSString *phone_country_code;
@property (nonatomic, copy) NSString *country;
@property (nonatomic, assign) BOOL followed;
@property (nonatomic, assign) BOOL is_phone_validated;
@property (nonatomic, assign) int email_validation;
@property (nonatomic, assign) int phone_validation;
@property (nonatomic, assign) int twofa_enabled;

@end



/**
 
 {
	"code": 0,
	"data": {
 "tags_str": "Perl, Javascript, Android, NoSQL, Mac逼神, 苹果粉, 健身达人",
 "tags": "8,11,14,17,20,23,68",
 "job_str": "打杂",
 "job": 6,
 "sex": 2,
 "phone": "13522978755",
 "birthday": "1990-01-01",
 "location": "吉林 白山",
 "company": "嗯嗯",
 "slogan": "",
 "website": "",
 "introduction": "",
 "avatar": "https://dn-coding-net-production-static.qbox.me/7f0baae4-be8a-43ea-b106-c007aa46346f.jpg",
 "gravatar": "",
 "lavatar": "https://dn-coding-net-production-static.qbox.me/7f0baae4-be8a-43ea-b106-c007aa46346f.jpg",
 "created_at": 1484562248000,
 "last_logined_at": 1498101233000,
 "last_activity_at": 1498126469116,
 "global_key": "taotaoyy",
 "name": "taouuuuuu",
 "name_pinyin": "",
 "updated_at": 1498101233000,
 "path": "/u/taotaoyy",
 "status": 1,
 "email": "",
 "is_member": 0,
 "id": 365271,
 "points_left": 0.10,
 "vip": 1,
 "follows_count": 14,
 "fans_count": 0,
 "tweets_count": 4,
 "phone_country_code": "+86",
 "country": "cn",
 "followed": false,
 "follow": false,
 "is_phone_validated": true,
 "email_validation": 0,
 "phone_validation": 1,
 "twofa_enabled": 0
	}
 }
 
 
 */

