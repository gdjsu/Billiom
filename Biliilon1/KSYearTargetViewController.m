//
//  KSYearTargetViewController.m
//  Biliilon1
//
//  Created by 杨倩 on 2020/3/2.
//  Copyright © 2020 杨倩. All rights reserved.
//

#import "KSYearTargetViewController.h"
#import "KSYearOngoingTableViewController.h"
#import "KSYearHaveFinishTableViewController.h"
#import "KSYearOverDueTableViewController.h"
#import "KSYearHomePageView.h"

@interface KSYearTargetViewController ()

@end

@implementation KSYearTargetViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //编辑页面
    self.title = @"年度目标";
    self.view.backgroundColor = [UIColor whiteColor];
    
    //编辑正在进行按钮：
    UIButton *onGoingTargetButton = [[UIButton alloc] init];
    onGoingTargetButton.frame = CGRectMake(0, 90, self.view.frame.size.width, 50);
    onGoingTargetButton.backgroundColor = [UIColor grayColor];
    [onGoingTargetButton setTitle:@"正在进行" forState:UIControlStateNormal];
    [onGoingTargetButton addTarget:self action:@selector(doClickOngoingTarget:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:onGoingTargetButton];
    
    //编辑已经完成按钮
    UIButton *haveFinishTargetButton = [[UIButton alloc] init];
    haveFinishTargetButton.frame = CGRectMake(0, 140, self.view.frame.size.width, 50);
    haveFinishTargetButton.backgroundColor = [UIColor grayColor];
    [haveFinishTargetButton setTitle:@"已完成" forState:UIControlStateNormal];
    [haveFinishTargetButton addTarget:self action:@selector(doClickHaveFinishTarget:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:haveFinishTargetButton];
    
    //编辑逾期按钮
    UIButton *overDueTargetButton = [[UIButton alloc] init];
    overDueTargetButton.frame = CGRectMake(0, 190, self.view.frame.size.width, 50);
    overDueTargetButton.backgroundColor = [UIColor grayColor];
    [overDueTargetButton setTitle:@"逾期" forState:UIControlStateNormal];
    [overDueTargetButton addTarget:self action:@selector(doClickOverDueTarget:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:overDueTargetButton];

    
}

//正在进行的页面跳转
- (void)doClickOngoingTarget:(UIButton *)btn{
    KSYearOngoingTableViewController *yearOngoingVC = [[KSYearOngoingTableViewController alloc] init];
    [self.navigationController pushViewController:yearOngoingVC animated:YES];
}

//已经完成的页面跳转
- (void)doClickHaveFinishTarget:(UIButton *)btn{
    KSYearHaveFinishTableViewController *haveFinishVC = [[KSYearHaveFinishTableViewController alloc] init];
    [self.navigationController pushViewController:haveFinishVC animated:YES];
}

//逾期的页面跳转
- (void)doClickOverDueTarget:(UIButton *)btn{
    KSYearOverDueTableViewController *overDueVC = [[KSYearOverDueTableViewController alloc] init];
    [self.navigationController pushViewController:overDueVC animated:YES];
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
