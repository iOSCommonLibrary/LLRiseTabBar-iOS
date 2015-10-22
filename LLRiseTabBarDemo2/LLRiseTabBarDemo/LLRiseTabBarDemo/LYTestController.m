//
//  LYTestController.m
//  LLRiseTabBarDemo
//
//  Created by LianLeven on 15/10/23.
//  Copyright © 2015年 lichangwen. All rights reserved.
//

#import "LYTestController.h"

static NSString * const LYTestControllerCellIdentifier = @"LYTestControllerCellIdentifier";
@interface LYTestController ()

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation LYTestController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:LYTestControllerCellIdentifier];
}

#pragma mark - UITableViewDataSource and UITableViewDelegate


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 40;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:LYTestControllerCellIdentifier forIndexPath:indexPath];
    
    cell.textLabel.text = [@(indexPath.row + 1) stringValue];
    
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
