//
//  AFShemeViewControllerUtility.m
//  AFSheme
//
//  Created by aoponaopon on 2016/08/13.
//  Copyright © 2016年 Aoi Fukuoka. All rights reserved.
//

#import "AFViewControllerUtility.h"

@implementation AFViewControllerUtility

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

UINavigationController *getNavigationController(UIViewController *viewController)
{
    UINavigationController *result = [[UINavigationController alloc] initWithRootViewController:viewController];
    if (topViewController().navigationController) {
        UINavigationBar *appDefaultBar = topViewController().navigationController.navigationBar;
        result.navigationBar.barTintColor = appDefaultBar.barTintColor;
        result.navigationBar.backgroundColor = appDefaultBar.backgroundColor;
        result.navigationBar.barStyle = appDefaultBar.barStyle;
        result.navigationBar.frame = appDefaultBar.frame;
        result.navigationBar.tintColor = appDefaultBar.tintColor;
    }
    return result;
}
@end
