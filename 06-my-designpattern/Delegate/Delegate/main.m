//
//  main.m
//  Delegate
//
//  Created by zhangcheng on 2017/6/12.
//  Copyright © 2017年 com.zccoder. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Boss.h"
#import "Worker.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Worker *worker = [[Worker alloc] init];
//        [worker buyWood];
        
        Boss *boss = [[Boss alloc] init];
        // 设置代理，建立连接
        [boss setDelegate:worker];
        // 发送指令
        [boss sendCommand];
        
    }
    return 0;
}
