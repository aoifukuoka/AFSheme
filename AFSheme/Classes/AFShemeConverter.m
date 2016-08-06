//
//  AFShemeConverter.m
//  AFSheme
//
//  Created by aoponaopon on 2016/08/06.
//  Copyright © 2016年 Aoi Fukuoka. All rights reserved.
//

#import "AFShemeConverter.h"

@implementation AFShemeConverter

static AFShemeConverter *sharedData_ = nil;

+ (AFShemeConverter *)converter
{    
    @synchronized(self) {
        if (!sharedData_) {
            sharedData_ = [AFShemeConverter new];
        }
    }
    return sharedData_;
}

+ (NSString *)convertWithName:(NSString *)name
{
    return [[self converter].delegate afShemeMappingDictionary][name];
}

@end
