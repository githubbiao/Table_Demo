//
//  HBContentModel.m
//  demo
//
//  Created by WangDa Mac on 2019/1/14.
//  Copyright © 2019 黄启标. All rights reserved.
//

#import "HBContentModel.h"
//#import <YYKit/NSObject+YYModel.h>

@implementation Picture

@end

@implementation HBContentModel

+ (NSDictionary *)modelContainerPropertyGenericClass {
    return @{@"pictures" : @"Picture" };
}

@end
