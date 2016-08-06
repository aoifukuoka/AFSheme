//
//  UIViewController+StoryBoard.h
//  myrecoup
//
//  Created by aoponaopon on 2016/08/06.
//  Copyright © 2016年 Bondy, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NSObject+ClassName.h"

@interface UIViewController (StoryBoard)

+ (instancetype)instantiate;
+ (instancetype)instantiateWithStoryBoard;

@end
