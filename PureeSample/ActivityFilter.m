//
//  ActivityFilter.m
//  SampleLog
//
//  Created by kohey on 2015/04/14.
//  Copyright (c) 2015年 kohey. All rights reserved.
//

#import "ActivityFilter.h"

@implementation ActivityFilter

- (void)configure:(NSDictionary *)settings
{
    [super configure:settings];
}

- (NSArray *)logsWithObject:(id)object tag:(NSString *)tag captured:(NSString *)captured
{

    NSDictionary *dic = object;
    NSDate *currentDate = [self.logger currentDate];
    /*
     TODO: ここでobjectの内容によってPURLogの内容を編集する。
     PURLog はタグとログの日付、任意の情報(保存したい任意のログ)を詰められる userInfo プロパティを持ちます。
     (ex)
     [logger postLog:@{@"action_id": [NSString stringWithFormat:@"%ld", _btn.tag ], @"result": result} tag:@"log.http"];
     tag: "log.http"
     userInfo: postLogでの引数を用いて任意のログを生成する。
     */
    return @[[[PURLog alloc] initWithTag:tag date:currentDate userInfo:@{@"action_id": dic[@"action_id"], @"result": dic[@"result"]}]];
    
}


@end
