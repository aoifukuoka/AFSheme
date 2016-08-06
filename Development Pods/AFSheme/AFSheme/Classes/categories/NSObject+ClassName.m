//
//  NSObject+ClassName.m
//  myrecoup
//
//  Created by aoponaopon on 2016/08/06.
//  Copyright © 2016年 Bondy, Inc. All rights reserved.
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
