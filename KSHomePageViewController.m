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
@interface KSHomePageViewController ()

@end

@implementation KSHomePageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //编辑首页页面
    self.title = @"一个亿";//标题
    self.view.backgroundColor = [UIColor whiteColor];//首页背景颜色白色
    
    //1.用编辑新目标button页面跳转
    UIButton *editNewTargetButton = [[UIButton alloc] init];
    editNewTargetButton.frame = CGRectMake(0,100, self.view.frame.size.width, 50);//button位置和大小
    editNewTargetButton.backgroundColor = [UIColor grayColor];//button颜色
    [editNewTargetButton setTitle:@"新建目标" forState:UIControlStateNormal];//button上的文字
    [editNewTargetButton addTarget:self action:@selector(doClickEditNewTarget:) forControlEvents:UIControlEventTouchUpInside];//点击按钮发送消息通知处理
    [self.view addSubview:editNewTargetButton];
    
    //2.用年度目标button页面跳转
    UIButton *yearButoon = [[UIButton alloc] init];
    yearButoon.frame = CGRectMake(0,150, self.view.frame.size.width, 50);
    yearButoon.backgroundColor = [UIColor grayColor];
    [yearButoon setTitle:@"年度目标" forState:UIControlStateNormal];
    [yearButoon addTarget:self action:@selector(doClickYearTarget:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:yearButoon];
    
    //3.用季度目标button页面跳转
    UIButton *quarterTargetButton = [[UIButton alloc] init];
    quarterTargetButton.frame = CGRectMake(0,200,self.view.frame.size.width, 50);
    quarterTargetButton.backgroundColor = [UIColor grayColor];
    [quarterTargetButton setTitle:@"季度目目标" forState:UIControlStateNormal];
    [quarterTargetButton addTarget:self action:@selector(doClickQuarterTarget:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:quarterTargetButton];
    
    //4.用月目标button实现跳转
    UIButton *monthTargetButton = [[UIButton alloc] init];
    monthTargetButton.frame = CGRectMake(0,250, self.view.frame.size.width, 50);
    monthTargetButton.backgroundColor = [UIColor grayColor];
    [monthTargetButton setTitle:@"月目标" forState:UIControlStateNormal];
    [monthTargetButton addTarget:self action:@selector(doClickMonthTarget:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:monthTargetButton];
    
    //5.用日目标button实现跳转
    UIButton *dayButton = [[UIButton alloc] init];
    dayButton.frame = CGRectMake(0,300,self.view.frame.size.width,50);
    dayButton.backgroundColor = [UIColor grayColor];
    [dayButton setTitle:@"日目标" forState:UIControlStateNormal];
    [dayButton addTarget:self action:@selector(doClickDayTarget:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:dayButton];
}

//跳转编辑新目标页面
- (void)doClickEditNewTarget:(UIButton *)btn{
    //编辑新目标页面
       KSNewBuildTargetViewController *editNewTargetVC = [[KSNewBuildTargetViewController alloc] init];
    [self.navigationController pushViewController:editNewTargetVC animated:YES];
}

//跳转年目标页面
- (void)doClickYearTarget:(UIButton *)btn{
    //所有年度目标页面
    KSYearTargetViewController *yearTargetVC = [[KSYearTargetViewController alloc] init];
    [self.navigationController pushViewController:yearTargetVC animated:YES];
}

//跳转季度目标页面
- (void) doClickQuarterTarget:(UIButton *)btn{
    //所有季度目标页面
       KSQuarterViewController *quarterTargetVC = [[KSQuarterViewController alloc] init];
    [self.navigationController pushViewController:quarterTargetVC animated:YES];
}

//跳转月目标页面
- (void) doClickMonthTarget:(UIButton *)btn{
    //所有月目标页面
       KSMonthTargetViewController *monthTargetVC = [[KSMonthTargetViewController alloc] init];
    [self.navigationController pushViewController:monthTargetVC animated:YES];
}

//跳转日目标页面
- (void) doClickDayTarget:(UIButton *)btn{
    //所有日目标页面
      KSDayTargetViewController *dayTargetVC = [[KSDayTargetViewController alloc] init];
    [self.navigationController pushViewController:dayTargetVC animated:YES];
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
