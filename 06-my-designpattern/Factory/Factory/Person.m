//
//  Person.m
//  Factory
//
//  Created by zhangcheng on 2017/6/12.
//  Copyright © 2017年 com.zccoder. All rights reserved.
//

#import "Person.h"

@implementation Person

+ (instancetype)person{
    return [[self alloc] init];
}

- (void)doWork{
    if(self.workBlock){
        self.workBlock(self);
    }
}

@end
