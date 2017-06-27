//
//  ImageCell.h
//  TableViewReusableCell
//
//  Created by zhangcheng on 2017/6/27.
//  Copyright © 2017年 com.zccoder. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ImageCell : UITableViewCell

@property (nonatomic,strong) UIImageView *cellImageView;
@property (nonatomic,assign) NSUInteger currentRow;

- (void)updateCellAtRow:(NSInteger)row;

@end
