//
//  UIViewController+StoryBoard.m
//  myrecoup
//
//  Created by aoponaopon on 2016/08/06.
//  Copyright © 2016年 Bondy, Inc. All rights reserved.
//

#import "UIViewController+StoryBoard.h"

@implementation UIViewController (StoryBoard)


+ (instancetype)instantiate
{
    return [[self alloc] init];
}

+ (instancetype)instantiateWithStoryBoard
{
    NSString *stbName = [[self className] componentsSeparatedByString:@"."].lastObject;
    return [self instantiateWithStoryBoard:stbName];
}

+ (instancetype)instantiateWithStoryBoard:(NSString *)stbName
{
    UIStoryboard *stb = [UIStoryboard storyboardWithName:stbName bundle:nil];
    return [stb instantiateViewControllerWithIdentifier:stbName];
}

@end
