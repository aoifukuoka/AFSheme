//
//  UIViewController+Parameters.m
//  AFSheme
//
//  Created by aoponaopon on 2016/08/06.
//  Copyright © 2016年 Aoi Fukuoka. All rights reserved.
//

#import "UIViewController+Parameters.h"
#import <objc/runtime.h>

@implementation UIViewController (Parameters)

@dynamic parameters;

- (void)setParameters:(NSDictionary *)parameters
{
    objc_setAssociatedObject(self, _cmd, parameters, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSDictionary *)parameters
{
    return objc_getAssociatedObject(self, @selector(setParameters:));
}

@end
