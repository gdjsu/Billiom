//
//  KSHomePageViewController.m
//  Biliilon1
//
//  Created by 杨倩 on 2020/3/2.
//  Copyright © 2020 杨倩. All rights reserved.
//

#import "KSHomePageViewController.h"
#import "KSNewBuildTargetViewController.h"
#import "KSYearTargetViewController.h"
#import "KSQuarterViewController.h"
#import "KSMonthTargetViewController.h"
#import "KSDayTargetViewController.h"
#import "KSHomePageViewController.h"
#import "KSYearHomePageView.h"

@interface KSHomePageViewController ()<KSHomePageViewDelegate>

@property (nonatomic, strong) KSYearHomePageView *yearHomePageView;

@end

@implementation KSHomePageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //编辑首页页面
    self.title = @"一个亿";//标题
    self.view.backgroundColor = [UIColor whiteColor];//首页背景颜色白色
    self.yearHomePageView = [[KSYearHomePageView alloc] initWithFrame:self.view.frame];
    self.yearHomePageView.backgroundColor = [UIColor yellowColor];
    self.yearHomePageView.homePageViewDelegate = self;
    [self.view addSubview:self.yearHomePageView];
}


/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */



- (void)doClickEditNewTarget:(nonnull UIButton *)btn {
    //编辑新目标页面
    KSNewBuildTargetViewController *editNewTargetVC = [[KSNewBuildTargetViewController alloc] init];
    [self.navigationController pushViewController:editNewTargetVC animated:YES];
}

- (void)doClickYearTarget:(nonnull UIButton *)btn {
    //所有年度目标页面
    KSYearTargetViewController *yearTargetVC = [[KSYearTargetViewController alloc] init];
    [self.navigationController pushViewController:yearTargetVC animated:YES];
}

- (void)doClickQuarterTarget:(nonnull UIButton *)btn {
    //所有季度目标页面
    KSQuarterViewController *quarterTargetVC = [[KSQuarterViewController alloc] init];
    [self.navigationController pushViewController:quarterTargetVC animated:YES];
}

- (void)doClickMonthTarget:(nonnull UIButton *)btn {
    //所有月目标页面
    KSMonthTargetViewController *monthTargetVC = [[KSMonthTargetViewController alloc] init];
    [self.navigationController pushViewController:monthTargetVC animated:YES];
}

- (void)doClickDayTarget:(nonnull UIButton *)btn {
    //所有日目标页面
    KSDayTargetViewController *dayTargetVC = [[KSDayTargetViewController alloc] init];
    [self.navigationController pushViewController:dayTargetVC animated:YES];
}

@end



