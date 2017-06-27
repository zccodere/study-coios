//
//  MainViewController.m
//  RollingView
//
//  Created by zhangcheng on 2017/6/27.
//  Copyright © 2017年 com.zccoder. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()<UIScrollViewDelegate>

// 滚动视图
@property (nonatomic,strong) UIScrollView *scrollView;

@property (nonatomic,strong) UIPageControl *pageControl;
// 定时任务
@property (nonatomic,strong)NSTimer *timer;
@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    [self setTitle:@"Main"];
    
    
    CGFloat width = CGRectGetWidth(self.view.bounds);
    self.scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 20, width, 220)];
    
    [self.scrollView setBackgroundColor:[UIColor grayColor]];
    
    [self.view addSubview:self.scrollView];
    
    // 设置滚动区域
    [self.scrollView setContentSize:CGSizeMake(width * 5 , 0)];
    // 设置分页效果显示
    [self.scrollView setPagingEnabled:YES];
    // 设置隐藏水平滚动条
    [self.scrollView setShowsHorizontalScrollIndicator:NO];
    [self.scrollView setDelegate:self];
    
    // 设置内容视图
    for (NSInteger i = 0 ; i < 5; i++) {
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(width * i, 0, width, 220)];
        [imageView setImage:[UIImage imageNamed:[NSString stringWithFormat:@"ad_0%zd",i]]];
        [self.scrollView addSubview:imageView];
    }
    
    self.pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(self.scrollView.frame) - 20, width, 20)];
    // 设置 pageControl 显示页码
    [self.pageControl setNumberOfPages:5];
    [self.pageControl setPageIndicatorTintColor:[UIColor blackColor]];
    [self.view addSubview:self.pageControl];
    
    [self initTimer];
    
}


- (void)initTimer{
    
    if (!self.timer) {
        // 每隔1秒执行指定方法，并重复执行
        self.timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(scrollImage) userInfo:nil repeats:YES];
        [[NSRunLoop currentRunLoop] addTimer:self.timer forMode:NSRunLoopCommonModes];
    }
}

- (void)scrollImage{

    NSInteger currentPage = self.pageControl.currentPage + 1;
    
    if (currentPage >= 5) {
        currentPage = 0;
    }
    
    // 滚动视图偏移量设置
    [self.scrollView setContentOffset:CGPointMake(currentPage * CGRectGetWidth(self.scrollView.frame), 0) animated:YES];
}

// 滚动视图时 重写 UIScrollViewDelegate 该方法
- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    
    // 设置滚动视图与pageControl相关联
    [self.pageControl setCurrentPage:(NSInteger)(scrollView.contentOffset.x / CGRectGetWidth(scrollView.frame))];
    
}

// 开始拖拽时
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    if (self.timer) {
        // 失效
        [self.timer invalidate];
        [self setTimer:nil];
    }
}

// 结束拖拽时
- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate{
    
    [self initTimer];
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
