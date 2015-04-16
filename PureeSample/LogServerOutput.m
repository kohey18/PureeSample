//
//  LogServerOutput.m
//  SampleLog
//
//  Created by kohey on 2015/04/15.
//  Copyright (c) 2015年 kohey. All rights reserved.
//

#import "LogServerOutput.h"

@implementation LogServerOutput

- (void)configure:(NSDictionary *)settings
{
    [super configure:settings];
}

- (void)writeChunk:(PURBufferedOutputChunk *)chunk completion:(void (^)(BOOL))completion
{
 
    /*
     LogBuffer内に溜まったログが定期的(セッティングした)に呼び出される
     */
    NSMutableArray *logs = [NSMutableArray new];
    for (PURLog *log in chunk.logs) {
        NSMutableDictionary *logDict = [log.userInfo mutableCopy];
        logDict[@"date"] = log.date;
        [logs addObject:logDict];
    }
    
    NSLog(@"logs %@", logs);
}

@end
