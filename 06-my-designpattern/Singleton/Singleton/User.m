//
//  User.m
//  Singleton
//
//  Created by zhangcheng on 2017/6/12.
//  Copyright © 2017年 com.zccoder. All rights reserved.
//

#import "User.h"

@implementation User
// 保证全局可用
static User *user = nil;

// 单例模式
+ (instancetype)sharedUser{
    
    // 方式一：添加互斥锁
//    @synchronized (self) {
//        if (!user) {
//            user = [[self alloc] init];
//        }
//    }
    
    // 方式二：jcd
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (!user) {
            user = [[self alloc] init];
        }
    });
    
    return user;
}

// 重写 allocWithZone 方法，保证单例模式
+ (instancetype) allocWithZone:(struct _NSZone *)zone{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (!user) {
            user = [super allocWithZone:zone];
        }
    });
    return user;
}

// 重写 copy 方法，保证程序安全
- (id)copy{
    return user;
}

// 重写 mutableCopy 方法，保证程序安全
- (id)mutableCopy{
    return user;
}

// 重写 description 方法，方便打印调试
- (NSString *) description{
    return [NSString stringWithFormat:@"username = %@, age = %zd",_username,_age];
}

@end
