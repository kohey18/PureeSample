//
//  AppDelegate.h
//  SampleLog
//
//  Created by kohey on 2015/04/14.
//  Copyright (c) 2015年 kohey. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Puree.h>
#import "ActivityFilter.h"
#import "ConsoleOutput.h"
#import "LogServerOutput.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) PURLoggerConfiguration *configuration;
@property (readonly, strong, nonatomic) PURLogger *logger;

@end

