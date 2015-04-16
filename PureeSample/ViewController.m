//
//  ViewController.m
//  SampleLog
//
//  Created by kohey on 2015/04/14.
//  Copyright (c) 2015年 kohey. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)puthBtn:(id)sender {
    UIButton *_btn = (UIButton *)sender;
    // 結果がランダムで出力される
    NSArray *results = @[@"marvelous", @"fantastic", @"great", @"good"];
    NSString *result = results[rand()%[results count]];
    
    AppDelegate* delegate = [[UIApplication sharedApplication] delegate];
    // ログ生成
    [delegate.logger postLog:@{@"action_id": [NSString stringWithFormat:@"%ld", _btn.tag ], @"result": result} tag:@"action.log"];
    
    // アラートビュー生成
    UIAlertView *alter = [[UIAlertView alloc] initWithTitle:@"Results" message:result delegate:nil cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
    [alter show];
}

@end
