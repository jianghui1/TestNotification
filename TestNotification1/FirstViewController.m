//
//  FirstViewController.m
//  TestNotification1
//
//  Created by ys on 16/4/20.
//  Copyright © 2016年 jzh. All rights reserved.
//

#import "FirstViewController.h"

#import "MyCell.h"

@interface FirstViewController ()<UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
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

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
        [[NSNotificationCenter defaultCenter] postNotificationName:@"haha" object:nil];
}

@end
