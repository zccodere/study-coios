//
//  Police.m
//  Protocol
//
//  Created by zhangcheng on 2017/6/12.
//  Copyright © 2017年 com.zccoder. All rights reserved.
//

#import "Police.h"

@implementation Police

- (void)eat{
    NSLog(@"police eat");
}

- (void)work{
    NSLog(@"police catch thief");
}

- (void)catchThief{
    [self work];
}

@end
