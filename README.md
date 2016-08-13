# AFSheme

[![CI Status](http://img.shields.io/travis/Aoi Fukuoka/AFSheme.svg?style=flat)](https://travis-ci.org/Aoi Fukuoka/AFSheme)
[![Version](https://img.shields.io/cocoapods/v/AFSheme.svg?style=flat)](http://cocoapods.org/pods/AFSheme)
[![License](https://img.shields.io/cocoapods/l/AFSheme.svg?style=flat)](http://cocoapods.org/pods/AFSheme)
[![Platform](https://img.shields.io/cocoapods/p/AFSheme.svg?style=flat)](http://cocoapods.org/pods/AFSheme)

## Example

First
```Objective-C
#import AFSheme.h
```
and in AppDlegate.m

```Objective-C
@interface AppDelegate () <AFShemeConverterDelegate>

@end

- (NSDictionary *)afShemeMappingDictionary {  
    return @{@"CustomViewController":CustomViewController.className,
         };
             
```
and
```Objective-C
[AFSheme openShemeWithString:@"CustomViewController"
                  parameters:@{@"hoge":@"fuga"}
              createViewType:CreateViewTypePush
               useStoryBoard:YES];
```
or
```Objective-C
#import CustomViewController.h

[AFSheme openSheme:CustomViewController.className
        parameters:@{}
    createViewType:CreateViewTypePush
     useStoryBoard:YES];

```
or 
```Objective-C
#import CustomViewController.h

CustomViewController *customViewController = [[CustomViewController alloc] init];

[AFSheme openSheme:customViewController
        parameters:@{}
    createViewType:CreateViewTypePush];
```

To run the example project, clone the repo, and run `pod install` from the Example directory first.


## Requirements

iOS 8.0 or above.

## Installation

AFSheme is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "AFSheme"
```

## Description
AFSheme enable you to call your app's particular view or action from JavaScript easily.
This gives you three methods to use.

1. ```+(void)openShemeWithString:(NSString *)name parameters:(NSDictionary *)parameters createViewType:(CreateViewType)createViewType useStoryBoard:(BOOL)useStoryBoard;```

2. ```+(void)openSheme:(NSString *)className parameters:(NSDictionary *)parameters createViewType:(CreateViewType)createViewType useStoryBoard:(BOOL)useStoryBoard;```
3. ```+(void)openSheme:(UIViewController *)vc parameters:(NSDictionary *)parameters createViewType:(CreateViewType)createViewType;```

1.
You can call particular ViewController by string value of your ViewController's name  
ex. UIViewController, CustomViewController
This method enable you to use JavaScript to call your app's view controller easily.
If you use this methd, you must implemet delegate method in Appdelegate.m file.

2.
This method enable you to consolidate your view transition.
You have to give the ViewController's name in this app. You can get the name easily to use className method.  
ex. UIViewController.className

3.
This method also enable you to consolidate the view transition.
You have to give ViewController's instance to the method.

## Delegate method
In your AppDelegate.m, please implement
```Objective-C
- (NSDictionary *)afShemeMappingDictionary;
```
as 

```Objective-C
@interface AppDelegate () <AFShemeConverterDelegate>

@end
```
and
```Objective-C
- (NSDictionary *)afShemeMappingDictionary {  
    return @{@"CustomViewController":CustomViewController.className,  
             @"HogeViewController":HogeViewController.className};
}
```
If you implement delegate method as an example above, you can use ```openShemeWithString:@"CustomViewController"..``` and ```openShemeWithString:@"HogeViewController"...```.

## Other parameters

1.```NSDictionary *parameters```  
Parameters that you give to your ViewController.
You can access this parameters as below.
In ViewController's subclass,
self.parameters

2.```CreateViewType createViewType```  
Enum value that handle transition type.

* CreateViewTypePush  
NavigationController's pushViewControlker method style.
Your visible ViewController have to be a child of navigationcontroller.

* CreateViewTypeModal  
UIViewController's presentViewController method style.

* CreateViewTypeAlert  
UIAlertController's style.
When you want to use UIAlertControlker, plz use this type.

You can get these value from NSString as below.
```Objective-C
@"push".toCreateViewType;
@"modal".toCreateViewType;
@"alert".toCreateViewType;
```

3.```BOOL useStoryBoard```  
Whether you want to use storyboard style or not.
If you set this value as YES, you must name ViewController's class as same as storyboard's name and storyboard's identifier.  
ex. 
If you want to use class CustomViewController, you must name StoryBoard name as CustomViewController, and StoryBoard identifier as CustomViewController.

## Author

Aoi Fukuoka, aoponaopon85746@gmail.com

## License

AFSheme is available under the MIT license. See the LICENSE file for more info.
