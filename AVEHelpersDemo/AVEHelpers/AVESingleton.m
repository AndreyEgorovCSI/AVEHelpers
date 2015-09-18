//
//  AVESingleton.m
//  
//
//  Created by Andrey Egorov on 9/18/15.
//
//

#import "AVESingleton.h"

@implementation AVESingleton

+ (instancetype)instance
{
    static AVESingleton *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

@end
