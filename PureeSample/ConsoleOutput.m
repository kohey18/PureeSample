//
//  ConsoleOutput.m
//  SampleLog
//
//  Created by kohey on 2015/04/14.
//  Copyright (c) 2015年 kohey. All rights reserved.
//

#import "ConsoleOutput.h"

@implementation ConsoleOutput

- (void)configure:(NSDictionary *)settings
{
    [super configure:settings];
}

- (void)emitLog:(PURLog *)log {
    /*
     ActivityFilterを通ったのちに即時実行される
     log.tag     : filter通った時に命名したタグ
     log.date    : filter通った時の日付
     log.userInfo: filter通った際の生成したログ情報
     */
    /*
    NSLog(@"log.tag     : %@", log.tag);
    NSLog(@"log.date    : %@", log.date);
    NSLog(@"log.userInfo: %@", log.userInfo);
    */
}

@end
