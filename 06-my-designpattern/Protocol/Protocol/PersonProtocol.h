//
//  PersonProtocol.h
//  Protocol
//
//  Created by zhangcheng on 2017/6/12.
//  Copyright © 2017年 com.zccoder. All rights reserved.
//

#import <Foundation/Foundation.h>

// 协议只做方法声明,规范接口
// 语法：协议声明关键字 协议名称 <父协议>
@protocol PersonProtocol <NSObject>

// 方法声明，默认遵守者需实现全部声明方法
// 该 @required 关键字下面的方法必须被实现
@required
- (void)eat;

// 该 @optional 关键字下面的方法可选被实现
@optional
- (void)work;
- (void)play;

@end
