//
//  AppDelegate.m
//  demo
//
//  Created by WangDa Mac on 2019/1/4.
//  Copyright © 2019 WangDa Mac. All rights reserved.
//

#import "AppDelegate.h"



#if CDSN


#endif

#define MGMDemo_SDK 20
NSString *sdk = @"";

#ifndef MGMDemo_SDK

NSString *sdk = @"";

#endif

@interface AppDelegate ()
@end

@implementation AppDelegate

- (instancetype)init
{
    self = [super init];
    if (self) {

    }
    return self;
}

@end
