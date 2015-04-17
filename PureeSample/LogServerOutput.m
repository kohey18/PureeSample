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
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        dateFormatter.dateFormat = @"yyyy-MM-dd HH:mm";
        NSString *formattedDateString = [dateFormatter stringFromDate:log.date];
        logDict[@"date"] = formattedDateString;
        [logs addObject:logDict];
    }
    
    /*
     以下、通信部分。
     TODO: 同期処理にしない。非同期でどんどんログ収集サーバに投げるようにする。
     */
    
    NSString *urlStr = @"http://log-server-ip:log-server-port/log.http";
    AFHTTPRequestOperationManager* manager = [AFHTTPRequestOperationManager manager];
    manager.requestSerializer = [AFJSONRequestSerializer serializer];
    [manager POST:urlStr parameters:logs success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"response: %@", responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error);
    }];
}

@end
