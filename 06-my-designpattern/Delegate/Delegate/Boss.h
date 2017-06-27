//
//  Boss.h
//  Delegate
//
//  Created by zhangcheng on 2017/6/12.
//  Copyright © 2017年 com.zccoder. All rights reserved.
//

#import <Foundation/Foundation.h>

// 制定协议
@protocol BossDalegate <NSObject>

// 声明方法
- (void)buyWood;

@end

// 委托方
@interface Boss : NSObject

// 代理者
@property (nonatomic,strong) id<BossDalegate> delegate;

- (void)sendCommand;

@end
