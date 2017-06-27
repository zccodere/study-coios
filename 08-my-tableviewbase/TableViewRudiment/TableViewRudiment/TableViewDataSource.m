//
//  TableViewDataSource.m
//  TableViewRudiment
//
//  Created by zhangcheng on 2017/6/27.
//  Copyright © 2017年 com.zccoder. All rights reserved.
//

#import "TableViewDataSource.h"

@implementation TableViewDataSource

+ (instancetype)dataSource{
    
    TableViewDataSource *dataSource = [[TableViewDataSource alloc] init];
    return dataSource;
    
}

// pargma mark table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 20;
    
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [[UITableViewCell alloc] init];
    
    cell.textLabel.text = @"Test3";
    
    return cell;
    
}


@end
