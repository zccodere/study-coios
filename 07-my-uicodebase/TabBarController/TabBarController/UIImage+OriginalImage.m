//
//  UIImage+OriginalImage.m
//  TabBarController
//
//  Created by zhangcheng on 2017/6/27.
//  Copyright © 2017年 com.zccoder. All rights reserved.
//

#import "UIImage+OriginalImage.h"

@implementation UIImage (OriginalImage)

+ (UIImage *)originalImageName:(NSString *)name{

    return [[UIImage imageNamed:name] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
}

@end
