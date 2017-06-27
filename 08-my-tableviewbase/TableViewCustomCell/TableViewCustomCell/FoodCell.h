//
//  FoodCell.h
//  TableViewCustomCell
//
//  Created by zhangcheng on 2017/6/27.
//  Copyright © 2017年 com.zccoder. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FoodModel.h"

@interface FoodCell : UITableViewCell

@property (nonatomic,strong) UIImageView *promoImageView;
@property (nonatomic,strong) UIImageView *iconImageView;
@property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *noteLabel;

- (void)updateCellWithModel:(FoodModel *)model;

@end
