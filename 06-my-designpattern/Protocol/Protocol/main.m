//
//  main.m
//  Protocol
//
//  Created by zhangcheng on 2017/6/12.
//  Copyright © 2017年 com.zccoder. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Police.h"
#import "Thief.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Person *person = [[Person alloc] init];
        [person eat];
        
//        [person work];
        
        Police *police = [[Police alloc] init];
        Thief *thief = [[Thief alloc] init];
        
        [thief steal];
        [police catchThief];
    }
    return 0;
}
