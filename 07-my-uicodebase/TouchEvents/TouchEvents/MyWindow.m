//
//  MyWindow.m
//  TouchEvents
//
//  Created by zhangcheng on 2017/6/26.
//  Copyright © 2017年 com.zccoder. All rights reserved.
//

#import "MyWindow.h"

@implementation MyWindow

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    //[super touchesBegan:touches withEvent:event];
    NSLog(@"%@ %@",[self class], NSStringFromSelector(_cmd));
    
}

@end
