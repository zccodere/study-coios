//
//  PersonFactory.m
//  Factory
//
//  Created by zhangcheng on 2017/6/12.
//  Copyright © 2017年 com.zccoder. All rights reserved.
//

#import "PersonFactory.h"
#import "Student.h"
#import "Police.h"

@implementation PersonFactory

+ (Person *)personWithTask:(NSString *)task{
    Person *person = nil;
    if([task isEqualToString:@"ReadBook"]){
        person = [Student person];
        person.name = @"小明";
        person.age = 16;
        
        [person setWorkBlock:^(Person *person){
            Student *temp = (Student *)person;
            [temp readBookWithBookName:@"ios"];
        }];
    }else if ([task isEqualToString:@"CatchThief"]){
        person = [Police person];
        person.name = @"成龙";
        person.age = 30;
        
        [person setWorkBlock:^(Person *person){
            Police *temp = (Police *)person;
            [temp catchThiefWithName:@"Tom"];
        }];
    }else {
        person = [Person person];
        person.name = @"";
        person.age = 0;
    }
    return person;
}

@end
