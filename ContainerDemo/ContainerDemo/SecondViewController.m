//
//  SecondViewController.m
//  ContainerDemo
//
//  Created by 刘威振 on 15/3/3.
//  Copyright (c) 2015年 WeiZhenLiu. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor greenColor];
}

- (void)viewWillShow {
    NSLog(@"%s", __func__);
}

@end
