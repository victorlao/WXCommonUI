//
//  ViewController.m
//  TestCommonUI
//
//  Created by laozhenqiang on 15/7/26.
//  Copyright (c) 2015年 lao. All rights reserved.
//

#import "ViewController.h"
#import <WXCommonUI/WXButton.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    WXButton *btn = [[WXButton alloc] initWithFrame:CGRectZero];
    [btn test];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
