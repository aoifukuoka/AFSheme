//
//  UIViewController+StoryBoard.h
//  AFSheme
//
//  Created by aoponaopon on 2016/08/06.
//  Copyright © 2016年 Aoi Fukuoka. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NSObject+ClassName.h"

@interface UIViewController (StoryBoard)

+ (instancetype)instantiate;
+ (instancetype)instantiateWithStoryBoard;
+ (BOOL)hasStoryBoard;

@end
