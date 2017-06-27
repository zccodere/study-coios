//
//  SettingView.m
//  Singleton
//
//  Created by zhangcheng on 2017/6/12.
//  Copyright © 2017年 com.zccoder. All rights reserved.
//

#import "SettingView.h"
#import "User.h"

@implementation SettingView

- (void)about{
    
    User *user = [User sharedUser];
    
    NSLog(@"user = %@",user);
    
}

@end
