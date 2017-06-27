//
//  FoodModel.m
//  TableViewCustomCell
//
//  Created by zhangcheng on 2017/6/27.
//  Copyright © 2017年 com.zccoder. All rights reserved.
//

#import "FoodModel.h"

@implementation FoodModel

- (void)setValue:(id)value forUndefinedKey:(NSString *)key{
}

+ (instancetype)modelWithDict:(NSDictionary *)dict{
    
    FoodModel *model = [[self alloc] init];
    
    [model setValuesForKeysWithDictionary:dict];
    
    return model;
    
}

@end
