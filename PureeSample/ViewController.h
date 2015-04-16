//
//  ViewController.h
//  SampleLog
//
//  Created by kohey on 2015/04/14.
//  Copyright (c) 2015年 kohey. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Puree.h>

#import "AppDelegate.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *OneButton;
@property (weak, nonatomic) IBOutlet UIButton *TwoButton;
@property (weak, nonatomic) IBOutlet UIButton *ThreeButton;
@property (weak, nonatomic) IBOutlet UIButton *FourButton;

- (IBAction)puthBtn:(id)sender;

@end

