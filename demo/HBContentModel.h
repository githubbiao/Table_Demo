//
//  HBContentModel.h
//  demo
//
//  Created by WangDa Mac on 2019/1/14.
//  Copyright © 2019 黄启标. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Picture : NSObject

@property (nonatomic, strong) NSString * height;
@property (nonatomic, strong) NSURL * src;
@property (nonatomic, strong) NSString * width;

@end

@interface HBContentModel : NSObject

@property (nonatomic, strong) NSString * author;
@property (nonatomic, assign) NSInteger commentedCount;
@property (nonatomic, strong) NSString * content;
@property (nonatomic, strong) NSString * cornerMark;
@property (nonatomic, strong) NSString * createTime;
@property (nonatomic, assign) NSInteger idField;
@property (nonatomic, assign) NSInteger likeCount;
@property (nonatomic, strong) NSString * mobile;
@property (nonatomic, strong) NSString * objectName;
@property (nonatomic, strong) NSString * objectType;
@property (nonatomic, strong) NSArray <Picture *>* pictures;
@property (nonatomic, assign) NSInteger readCount;
@property (nonatomic, strong) NSString * recoveryTime;
@property (nonatomic, assign) NSInteger status;
@property (nonatomic, strong) NSString * summary;
@property (nonatomic, strong) NSURL * summaryImages;
@property (nonatomic, strong) NSString * title;
@property (nonatomic, strong) NSString * topTags;
@property (nonatomic, strong) NSString * topicSource;
@property (nonatomic, strong) NSString * topicTags;
@property (nonatomic, strong) NSString * topicType;
@property (nonatomic, strong) NSString * updateTime;
@property (nonatomic, assign) BOOL userHasLike;
@property (nonatomic, strong) NSString * userId;

@end

NS_ASSUME_NONNULL_END
