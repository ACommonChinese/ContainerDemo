//
//  FirstViewController.m
//  ContainerDemo
//
//  Created by qianfeng on 15/3/3.
//  Copyright (c) 2015年 WeiZhenLiu. All rights reserved.
//

#import "FirstViewController.h"
#import "TestViewController.h"

@interface FirstViewController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSArray *items;
@end

@implementation FirstViewController

- (void)viewWillShow {
    NSLog(@"%s", __func__);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initModel];
    [self initUI];
}

- (void)initModel {
    self.items = @[@"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8"];
}

- (void)initUI {
    self.view.backgroundColor = [UIColor redColor];
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height) style:UITableViewStylePlain];
    self.tableView.delegate   = self;
    self.tableView.dataSource = self;
    [self.view addSubview:self.tableView];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.items.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellID = @"cellID";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    cell.textLabel.text = [self.items objectAtIndex:indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    TestViewController *testController = [[TestViewController alloc] init];
    /**
     *  Presenting view controllers on detached view controllers is discouraged:
     *  [self presentViewController:testController animated:YES completion:^{}];
     *  2014-03-06 发现此问题
     *  http://www.wahenzan.com/a/mdev/ios/2014/1113/48.html
     */
    
    //[[[[UIApplication sharedApplication] keyWindow] rootViewController] presentViewController:testController animated:YES completion:nil];
    [self.view.window.rootViewController presentViewController:testController animated:YES completion:nil];
    
}

@end
