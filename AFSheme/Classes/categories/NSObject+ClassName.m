//
//  NSObject+ClassName.m
//  AFSheme
//
//  Created by aoponaopon on 2016/08/06.
//  Copyright © 2016年 Aoi Fukuoka. All rights reserved.
//

#import "NSObject+ClassName.h"

@implementation NSObject (ClassName)

+ (NSString *)className
{
    return NSStringFromClass(self);
}

- (NSString *)className
{
    return [[self class] className];
}

@end
