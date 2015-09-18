//
//  AVELogTimeInterval.h
//  AVEHelpersDemo
//
//  Created by Andrey Egorov on 9/18/15.
//  Copyright © 2015 Andrey Egorov. All rights reserved.
//

#import "AVESingleton.h"

@interface AVELogTimeInterval : AVESingleton

@property (nonatomic, strong, readonly) NSDate *startDate;

- (void)start;
- (void)stop;
- (NSTimeInterval)timeInterval;
- (NSString *)timeIntervalString;
- (void)logTimeInterval;

@end
