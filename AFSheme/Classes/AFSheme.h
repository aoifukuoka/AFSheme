//
//  AFSheme.h
//  AFSheme
//
//  Created by aoponaopon on 2016/08/06.
//  Copyright © 2016年 Aoi Fukuoka. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIViewController+StoryBoard.h"
#import "UIViewController+Parameters.h"
#import "AFShemeConverter.h"
#import "NSObject+ClassName.h"

typedef NS_ENUM(NSUInteger, CreateViewType)
{
    CreateViewTypePush = 0,
    CreateViewTypeModal,
    CreateViewTypeAlert,
};

@interface AFSheme : NSObject

+ (void)openShemeWithString:(NSString *)name parameters:(NSDictionary *)parameters createViewType:(CreateViewType)createViewType useStoryBoard:(BOOL)useStoryBoard;
+ (void)openSheme:(NSString *)className parameters:(NSDictionary *)parameters createViewType:(CreateViewType)createViewType useStoryBoard:(BOOL)useStoryBoard;
+ (void)openSheme:(UIViewController *)vc parameters:(NSDictionary *)parameters createViewType:(CreateViewType)createViewType;

@end
