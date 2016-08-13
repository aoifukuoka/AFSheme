//
//  NSString+CreateViewType.m
//  AFSheme
//
//  Created by aoponaopon on 2016/08/13.
//  Copyright © 2016年 Aoi Fukuoka. All rights reserved.
//

#import "NSString+CreateViewType.h"

@implementation NSString (CreateViewType)

- (CreateViewType)toCreateViewType
{
    return [self.mappingDictionary[self] integerValue];
}

- (NSDictionary *)mappingDictionary
{
    return @{@"push"  : @(CreateViewTypePush),
             @"modal" : @(CreateViewTypeModal),
             @"alert" : @(CreateViewTypeAlert),};
}

@end
