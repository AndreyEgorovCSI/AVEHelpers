//
//  AVELogTimeInterval.m
//  AVEHelpersDemo
//
//  Created by Andrey Egorov on 9/18/15.
//  Copyright © 2015 Andrey Egorov. All rights reserved.
//

#import "AVELogTimeInterval.h"

@interface AVELogTimeInterval()

@property (nonatomic, strong, readwrite) NSDate *startDate;

@end

@implementation AVELogTimeInterval

- (void)start
{
    self.startDate = [NSDate date];
}

- (void)stop
{
    self.startDate = nil;
}

- (NSTimeInterval)timeInterval
{
    return fabs([self.startDate timeIntervalSinceNow]);
}

- (NSString *)timeIntervalString
{
    return [NSString stringWithFormat:@"TIME INTERVAL: %.4f", [self timeInterval]];
}

- (void)logTimeInterval
{
    NSLog(@"%@", [self timeIntervalString]);
}

@end
