//
//  main.m
//  Factory
//
//  Created by zhangcheng on 2017/6/12.
//  Copyright © 2017年 com.zccoder. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "Student.h"
//#import "Police.h"
#import "PersonFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 不使用工厂模式时
//        Student *student = [Student person];
//        [student setName:@"小明"];
//        [student setWorkBlock:^(Person *person){
//            Student *temp = (Student *)person;
//            [temp readBookWithBookName:@"ios"];
//        }];
//        [student doWork];
//        
//        Police *police = [Police person];
//        [police setWorkBlock:^(Person *person){
//            Police *temp = (Police *)person;
//            [temp catchThiefWithName:@"Tom"];
//        }];
//        [police doWork];
        
        // 使用工厂模式
        
        Person *person = [PersonFactory personWithTask:@"ReadBook"];
        [person doWork];
        
        person = [PersonFactory personWithTask:@"CatchThief"];
        [person doWork];
        
    }
    return 0;
}
