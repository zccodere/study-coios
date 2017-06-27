//
//  FoodXIBCell.m
//  TableViewCustomCell
//
//  Created by zhangcheng on 2017/6/27.
//  Copyright © 2017年 com.zccoder. All rights reserved.
//

#import "FoodXIBCell.h"

@implementation FoodXIBCell

+ (instancetype)cell{

    FoodXIBCell *cell = [[[NSBundle mainBundle] loadNibNamed:@"FoodXIBCell" owner:self options:nil] lastObject];
    return cell;
}

- (void)updateCellWithModel:(FoodModel *)model{
    
    if (model.promo.length == 0) {
        [self.promoImageView setHidden:YES];
    }
    else{
        [self.promoImageView setHidden:NO];
        [self.promoImageView setImage:[UIImage imageNamed:model.promo]];
    }
    
    [self.iconImageView setImage:[UIImage imageNamed:model.icon]];
    [self.titleLabel setText:model.title];
    [self.noteLabel setText:model.note];
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
