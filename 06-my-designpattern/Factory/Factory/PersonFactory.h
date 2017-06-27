//
//  PersonFactory.h
//  Factory
//
//  Created by zhangcheng on 2017/6/12.
//  Copyright © 2017年 com.zccoder. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@interface PersonFactory : NSObject

+ (Person *)personWithTask:(NSString *)task;

@end
