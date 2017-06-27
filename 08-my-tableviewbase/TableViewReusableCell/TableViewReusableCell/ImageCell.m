//
//  ImageCell.m
//  TableViewReusableCell
//
//  Created by zhangcheng on 2017/6/27.
//  Copyright © 2017年 com.zccoder. All rights reserved.
//

#import "ImageCell.h"

@implementation ImageCell

- (void)dealloc{

    NSLog(@"%zd行Cell被销毁",self.currentRow);
}
/*
- (instancetype)init{

    self = [super init];
    
    if (self) {
        [self setCellImageView:[[UIImageView alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth([UIScreen mainScreen].bounds), CGRectGetWidth([UIScreen mainScreen].bounds))]];
        [self.contentView addSubview:self.cellImageView];
        
        NSLog(@"Cell被创建");
    }
    
    return self;
}
*/

// Cell 重用
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if (self) {
        [self setCellImageView:[[UIImageView alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth([UIScreen mainScreen].bounds), CGRectGetWidth([UIScreen mainScreen].bounds))]];
        [self.contentView addSubview:self.cellImageView];
        
        NSLog(@"Cell被创建");
    }
    
    return self;
}

// 更新单元格数据
- (void)updateCellAtRow:(NSInteger)row{
    
    [self.cellImageView setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%zd",row]]];
    [self setCurrentRow:row];
    
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
