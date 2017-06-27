//
//  MainViewController.m
//  UILabel
//
//  Created by zhangcheng on 2017/6/12.
//  Copyright © 2017年 com.zccoder. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    /*
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
[self.view addSubview:label];
    
    label.backgroundColor = [UIColor blackColor];
    label.text = @"Hello World";
    label.textColor = [UIColor orangeColor];
    label.font = [UIFont systemFontOfSize:20];
    // 获得所有字体
    NSArray *fontList = [UIFont familyNames];
    NSLog(@"list:%@",fontList);
    
    label.font = [UIFont fontWithName:@"Helvetica" size:18];
    
    label.text = @"dasdasfsadfgewrfadasdasfsadfgewrfadasdasfsadfgewrfadasdasfsadfgewrfadasdasfsadfgewrfadasdasfsadfgewrfadasdasfsadfgewrfadasdasfsadfgewrfadasdasfsadfgewrfadasdasfsadfgewrfa";
    // 设置换行，0为无限行
    label.numberOfLines = 0;
    // 根据文本内容，动态调整 label 大小
    CGSize maxSize = CGSizeMake(CGRectGetWidth(label.frame), CGFLOAT_MAX);
    CGSize textSize = [[label text] boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading attributes:@{NSFontAttributeName: [UIFont fontWithName:@"Helvetica" size:18]} context:nil].size;
    CGRect frame = label.frame;
    frame.size = textSize;
    [label setFrame:frame];
    */
    
    // 设置风格化文本显示
    NSString *aString = @"iOS";
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 200, 375, 45)];
    [self.view addSubview:label];
    
    label.text = aString;
    label.textAlignment = NSTextAlignmentCenter;
    
    //NSLog(@"%@",label.attributedText);
    
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:aString];
    [attributedString addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:50] range:NSMakeRange(0, 1)];
    [attributedString addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:35] range:NSMakeRange(1, 2)];
    [attributedString addAttribute:NSBackgroundColorAttributeName value:[UIColor blackColor] range:NSMakeRange(0, 1)];
    [attributedString addAttribute:NSForegroundColorAttributeName value:[UIColor whiteColor] range:NSMakeRange(0, 1)];
    
    label.attributedText = [attributedString copy];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
