//
//  AFShemeConverter.h
//  myrecoup
//
//  Created by aoponaopon on 2016/08/06.
//  Copyright © 2016年 Bondy, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@class AFShemeConverter;

@protocol AFShemeConverterDelegate <NSObject>

@optional

- (NSDictionary *)afShemeMappingDictionary;

@end

@interface AFShemeConverter : NSObject

@property (nonatomic, weak) id<AFShemeConverterDelegate> delegate;

+ (AFShemeConverter *)converter;
+ (NSString *)convertWithName:(NSString *)name;

@end
