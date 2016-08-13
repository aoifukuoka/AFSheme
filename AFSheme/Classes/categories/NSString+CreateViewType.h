//
//  NSString+CreateViewType.h
//  AFSheme
//
//  Created by aoponaopon on 2016/08/13.
//  Copyright © 2016年 Aoi Fukuoka. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, CreateViewType)
{
    CreateViewTypePush = 0,
    CreateViewTypeModal,
    CreateViewTypeAlert,
};

@interface NSString (CreateViewType)

- (CreateViewType)toCreateViewType;

@end
