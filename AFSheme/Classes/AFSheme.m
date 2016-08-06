//
//  AFSheme.m
//  AFSheme
//
//  Created by aoponaopon on 2016/08/06.
//  Copyright © 2016年 Aoi Fukuoka. All rights reserved.
//

#import "AFSheme.h"

@implementation AFSheme

+ (void)openShemeWithString:(NSString *)name parameters:(NSDictionary *)parameters createViewType:(CreateViewType)createViewType useStoryBoard:(BOOL)useStoryBoard
{
    if (NSClassFromString(name)) {
        [self openSheme:name parameters:parameters createViewType:createViewType useStoryBoard:useStoryBoard];
        return;
    }
    NSString *className = [AFShemeConverter convertWithName:name];
    if (className == nil) return;
    [self openSheme:className parameters:parameters createViewType:createViewType useStoryBoard:useStoryBoard];
}

+ (void)openSheme:(NSString *)className parameters:(NSDictionary *)parameters createViewType:(CreateViewType)createViewType useStoryBoard:(BOOL)useStoryBoard
{
    Class viewClass = NSClassFromString(className);
    if (![viewClass respondsToSelector:@selector(instantiateWithStoryBoard)] || ![viewClass respondsToSelector:@selector(instantiate)]) {
        return;
    }
    if (useStoryBoard) {
        [self openSheme:[viewClass instantiateWithStoryBoard] parameters:parameters createViewType:createViewType];
    }else{
        [self openSheme:[viewClass instantiate] parameters:parameters createViewType:createViewType];
    }
}

+ (void)openSheme:(UIViewController *)vc parameters:(NSDictionary *)parameters createViewType:(CreateViewType)createViewType
{
    vc.parameters = parameters;
    switch (createViewType) {
        case CreateViewTypePush:
            [self performPushTypeTransition:vc];
            break;
        case CreateViewTypeModal:
            [self performModalTypeTransition:vc];
            break;
        case CreateViewTypeAlert:
            [self performAlertTypeTransition:vc];
            break;
        default:
            break;
    }
}

+ (void)performModalTypeTransition:(UIViewController *)vc
{
    @try {
        UINavigationController *nvc = [[UINavigationController alloc] initWithRootViewController:vc];
        [topViewController() presentViewController:nvc animated:YES completion:nil];
        return;
    } @catch (NSException *exception) {
        [topViewController() presentViewController:vc animated:YES completion:nil];
    }
}

+ (void)performPushTypeTransition:(UIViewController *)vc
{
    [topViewController().navigationController pushViewController:vc animated:YES];
}

+ (void)performAlertTypeTransition:(UIViewController *)vc
{
    [topViewController() presentViewController:vc animated:YES completion:nil];
}

UIViewController *topViewController()
{
    return getTopViewControllerRecursively([UIApplication sharedApplication].keyWindow.rootViewController);
}

UIViewController *getTopViewControllerRecursively(UIViewController *viewController)
{
    UIViewController *result = nil;
    if ([viewController isKindOfClass:[UINavigationController class]]) {
        UINavigationController *navigationController = (UINavigationController *)viewController;
        viewController = getTopViewControllerRecursively(navigationController.topViewController);
        if (result != viewController) {
            result = viewController;
        }
    }else if ([viewController isKindOfClass:[UITabBarController class]]) {
        UITabBarController *tabBarController = (UITabBarController *)viewController;
        viewController = getTopViewControllerRecursively(tabBarController.selectedViewController);
        if (result != viewController) {
            result = viewController;
        }
    }else if (viewController && viewController.presentedViewController) {
        UIViewController *modalViewController = viewController.presentedViewController;
        viewController = getTopViewControllerRecursively(modalViewController);
        if (result != viewController) {
            result = viewController;
        }
    }else {
        result = viewController;
    }
    return result;
}

@end
