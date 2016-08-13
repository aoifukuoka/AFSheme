//
//  AFShemeViewControllerUtility.h
//  AFSheme
//
//  Created by aoponaopon on 2016/08/13.
//  Copyright © 2016年 Aoi Fukuoka. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AFShemeViewControllerUtility : NSObject

UIViewController *topViewController();
UIViewController *getTopViewControllerRecursively(UIViewController *viewController);
UINavigationController *getNavigationController(UIViewController *viewController);

@end
