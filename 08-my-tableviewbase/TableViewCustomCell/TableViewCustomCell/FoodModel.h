//
//  FoodModel.h
//  TableViewCustomCell
//
//  Created by zhangcheng on 2017/6/27.
//  Copyright © 2017年 com.zccoder. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FoodModel : NSObject

@property (nonatomic,copy) NSString *title;
@property (nonatomic,copy) NSString *note;
@property (nonatomic,copy) NSString *icon;
@property (nonatomic,copy) NSString *promo;

+ (instancetype)modelWithDict:(NSDictionary *)dict;

@end
