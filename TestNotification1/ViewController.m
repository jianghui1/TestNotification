//
//  ViewController.m
//  TestNotification1
//
//  Created by ys on 16/4/20.
//  Copyright © 2016年 jzh. All rights reserved.
//

#import "ViewController.h"

#import "MyCell.h"

@interface ViewController ()<UITableViewDataSource, UITableViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(haha) name:@"haha" object:nil];
}

- (void)haha
{
    NSLog(@"haha");
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    MyCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellId"];
    return cell;
}


@end
