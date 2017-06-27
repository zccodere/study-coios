//
//  CustomTableView.m
//  TableViewRudiment
//
//  Created by zhangcheng on 2017/6/27.
//  Copyright © 2017年 com.zccoder. All rights reserved.
//

#import "CustomTableView.h"

@implementation CustomTableView

+ (instancetype)tableViewWithDataSource:(id<UITableViewDataSource>)dataSource{
    
    CustomTableView *tableView = [[[NSBundle mainBundle] loadNibNamed:@"CustomTableView" owner:self options:nil] lastObject];
    [tableView setDataSource:dataSource];
    return tableView;
}

@end
