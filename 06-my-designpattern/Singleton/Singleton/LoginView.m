//
//  LoginView.m
//  Singleton
//
//  Created by zhangcheng on 2017/6/12.
//  Copyright © 2017年 com.zccoder. All rights reserved.
//

#import "LoginView.h"
#import "User.h"

@implementation LoginView

- (void)login{
    User *user = [User sharedUser];
    user.username = @"Tom";
    user.age = 20;
    
    
}

@end
