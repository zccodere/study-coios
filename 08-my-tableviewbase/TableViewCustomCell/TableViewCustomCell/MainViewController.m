//
//  MainViewController.m
//  TableViewCustomCell
//
//  Created by zhangcheng on 2017/6/27.
//  Copyright © 2017年 com.zccoder. All rights reserved.
//

#import "MainViewController.h"
#import "FoodModel.h"
#import "FoodCell.h"
#import "FoodXIBCell.h"

@interface MainViewController ()<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) NSArray *foodArray;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTitle:@"自定义Cell"];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    [self setTableView:[[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain]];
    [self.tableView setDataSource:self];
    [self.tableView setDelegate:self];
    [self.view addSubview:self.tableView];
}

/*
#pragma mark - UITableViewDataSource
 */
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.foodArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    // 方式一 使用纯代码
    //FoodCell *cell = [[FoodCell alloc] init];
    
    // 方式二 使用XIB方式
    FoodXIBCell *cell = [FoodXIBCell cell];
    
    [cell updateCellWithModel:self.foodArray[indexPath.row]];
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    // 设置tableView 行高
    return 64;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSArray *)foodArray{
    if (!_foodArray) {
        NSString *path = [[NSBundle mainBundle] pathForResource:@"quanquan.plist" ofType:nil];
        NSArray *dataArray = [NSArray arrayWithContentsOfFile:path];
        
        NSMutableArray *tempArray = [NSMutableArray array];
        for (NSDictionary *dataDict in dataArray) {
            FoodModel *model = [FoodModel modelWithDict:dataDict];
            [tempArray addObject:model];
        }
        
        _foodArray = [tempArray copy];
        
    }
    
    return _foodArray;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
