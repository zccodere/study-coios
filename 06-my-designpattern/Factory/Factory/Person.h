//
//  Person.h
//  Factory
//
//  Created by zhangcheng on 2017/6/12.
//  Copyright © 2017年 com.zccoder. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

{
    @protected
    NSString *_name;
    NSInteger _age;
}

@property (nonatomic,copy) NSString *name;
@property (nonatomic,assign) NSInteger age;
@property (nonatomic,copy)void (^workBlock)(Person *person);

+ (instancetype)person;
- (void)doWork;

@end
