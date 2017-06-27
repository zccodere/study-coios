//
//  FoodCell.m
//  TableViewCustomCell
//
//  Created by zhangcheng on 2017/6/27.
//  Copyright © 2017年 com.zccoder. All rights reserved.
//

#import "FoodCell.h"

@implementation FoodCell

- (instancetype)init{
    
    self = [super init];
    if (self) {
        [self setIconImageView:[[UIImageView alloc] initWithFrame:CGRectMake(10, 0, 64, 64)]];
        [self.contentView addSubview:self.iconImageView];
        
        [self setPromoImageView:[[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 30, 30)]];
        [self.contentView addSubview:self.promoImageView];
        
        [self setTitleLabel:[[UILabel alloc] initWithFrame:CGRectMake(75, 10, 220, 21)]];
        [self.titleLabel setFont:[UIFont systemFontOfSize:18]];
        [self.contentView addSubview:self.titleLabel];
        
        [self setNoteLabel:[[UILabel alloc] initWithFrame:CGRectMake(75, 40, 250, 21)]];
        [self.titleLabel setFont:[UIFont systemFontOfSize:15]];
        [self.noteLabel setTextColor:[UIColor lightGrayColor]];
        [self.contentView addSubview:self.noteLabel];
    }
    return self;
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

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
