//
//  CustomTableView.h
//  TableViewRudiment
//
//  Created by zhangcheng on 2017/6/27.
//  Copyright © 2017年 com.zccoder. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableView : UITableView

+ (instancetype)tableViewWithDataSource:(id<UITableViewDataSource>)dataSource;

@end