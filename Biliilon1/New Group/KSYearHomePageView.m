//
//  KSYearHomePageView.m
//  Biliilon1
//
//  Created by 杨倩 on 2020/3/3.
//  Copyright © 2020 杨倩. All rights reserved.
//

#import "KSYearHomePageView.h"
#import "KSHomePageViewController.h"

@interface KSYearHomePageView()

/// 编辑新目标的按钮，点击之后，可以增加新的目标
@property (nonatomic,strong) UIButton *editNewTargetButton;

///年目标的按钮，点击之后，会t出现所有的年目标
@property (nonatomic,strong) UIButton *yearButoon;

/// 季度目标的按钮，点击之后，会出现所有的季度目标
@property (nonatomic,strong) UIButton *quarterTargetButton;

/// 月目标的按钮，点击之后，会出现所有的月目标
@property (nonatomic,strong) UIButton *monthTargetButton;

/// 日目标的按钮，点击之后，会出现所有的日目标
@property (nonatomic,strong) UIButton *dayButton;

@end

@implementation KSYearHomePageView

#pragma mark - lifecycle
- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if(self){
        [self setupView];

    }
    return self;
}

- (void)setupView{
    
    [self addSubview:self.editNewTargetButton];
    [self addSubview:self.yearButoon];
    [self addSubview:self.quarterTargetButton];
    [self addSubview:self.monthTargetButton];
    [self addSubview:self.dayButton];
}
//- (instancetype)init
//{
//    self = [super init];
//    if (self) {
//        [self addSubview:self.editNewTargetButton];
//        [self addSubview:self.yearButoon];
//        [self addSubview:self.quarterTargetButton];
//        [self addSubview:self.monthTargetButton];
//        [self addSubview:self.dayButton];
//    }
//    return self;
//}
#pragma mark - getter and setter
- (UIButton *)editNewTargetButton{
    if (!_editNewTargetButton) {
        _editNewTargetButton = [[UIButton alloc] init];
        _editNewTargetButton.frame = CGRectMake(0,100, self.frame.size.width, 50);//button位置和大小
        _editNewTargetButton.backgroundColor = [UIColor grayColor];//button颜色
        [_editNewTargetButton setTitle:@"新建目标" forState:UIControlStateNormal];//button上的文字
        [_editNewTargetButton addTarget:self action:@selector(doClickEditNewTarget:) forControlEvents:UIControlEventTouchUpInside];//点击按钮发送消息通知处理
        
    }
    return _editNewTargetButton;
}

- (UIButton *)yearButoon{
    if(_yearButoon == nil){
        _yearButoon = [[UIButton alloc] init];
        _yearButoon.frame = CGRectMake(0,150, self.frame.size.width, 50);
        _yearButoon.backgroundColor = [UIColor grayColor];
        [_yearButoon setTitle:@"年度目标" forState:UIControlStateNormal];
        [_yearButoon addTarget:self action:@selector(doClickYearTarget:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _yearButoon;
}

- (UIButton *)quarterTargetButton{
    if(_quarterTargetButton == nil){
       _quarterTargetButton = [[UIButton alloc] init];
       _quarterTargetButton.frame = CGRectMake(0,200,self.frame.size.width, 50);
       _quarterTargetButton.backgroundColor = [UIColor grayColor];
       [_quarterTargetButton setTitle:@"季度目目标" forState:UIControlStateNormal];
       [_quarterTargetButton addTarget:self action:@selector(doClickQuarterTarget:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _quarterTargetButton;
}

- (UIButton *)monthTargetButton{
    if(_monthTargetButton == nil){
       _monthTargetButton = [[UIButton alloc] init];
          _monthTargetButton.frame = CGRectMake(0,250, self.frame.size.width, 50);
          _monthTargetButton.backgroundColor = [UIColor grayColor];
          [_monthTargetButton setTitle:@"月目标" forState:UIControlStateNormal];
          [_monthTargetButton addTarget:self action:@selector(doClickMonthTarget:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _monthTargetButton;
}

- (UIButton *)dayButton{
    if(_dayButton == nil){
       _dayButton = [[UIButton alloc] init];
       _dayButton.frame = CGRectMake(0,300,self.frame.size.width,50);
       _dayButton.backgroundColor = [UIColor grayColor];
       [_dayButton setTitle:@"日目标" forState:UIControlStateNormal];
       [_dayButton addTarget:self action:@selector(doClickDayTarget:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _dayButton;
}

#pragma mark - action

- (void)doClickEditNewTarget:(UIButton *)btn {
    if(self.homePageViewDelegate){
        [self.homePageViewDelegate doClickEditNewTarget:self.editNewTargetButton];
    }
}

- (void)doClickYearTarget:(UIButton *)btn {
    if(self.homePageViewDelegate){
        [self.homePageViewDelegate doClickYearTarget:self.yearButoon];
    }
}

- (void)doClickQuarterTarget:(UIButton *)btn {
    if(self.homePageViewDelegate){
        [self.homePageViewDelegate doClickQuarterTarget:self.quarterTargetButton];
    }
}

- (void)doClickMonthTarget:(UIButton *)btn {
    if(self.homePageViewDelegate){
        [self.homePageViewDelegate doClickMonthTarget:self.monthTargetButton];
    }
}
- (void)doClickDayTarget:(UIButton *)btn {
    if(self.homePageViewDelegate){
        [self.homePageViewDelegate doClickDayTarget:self.dayButton];
    }
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
