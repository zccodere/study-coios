//
//  Boss.m
//  Delegate
//
//  Created by zhangcheng on 2017/6/12.
//  Copyright © 2017年 com.zccoder. All rights reserved.
//

#import "Boss.h"

@implementation Boss

- (void)sendCommand{
    NSLog(@"boss send command");
    // 调用代理方去执行协议中的方法
    [self.delegate buyWood];
}

@end
