//
//  TestViewController.m
//  ContainerDemo
//
//  Created by 刘威振 on 15/3/6.
//  Copyright (c) 2015年 WeiZhenLiu. All rights reserved.
//

#import "TestViewController.h"

@interface TestViewController ()

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blackColor];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(20, 60, self.view.bounds.size.width - 40, 40);
    [button setTitle:@"Back" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    button.center = self.view.center;
    [self.view addSubview:button];
}

- (void)buttonClick:(UIButton *)button {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
