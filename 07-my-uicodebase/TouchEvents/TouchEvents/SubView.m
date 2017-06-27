//
//  SubView.m
//  TouchEvents
//
//  Created by zhangcheng on 2017/6/26.
//  Copyright © 2017年 com.zccoder. All rights reserved.
//

#import "SubView.h"

@implementation SubView

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    [super touchesBegan:touches withEvent:event];
    NSLog(@"%@ %@",self.viewName, NSStringFromSelector(_cmd));
    
}

@end
