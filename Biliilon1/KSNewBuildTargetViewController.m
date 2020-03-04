//
//  KSNewBuildTargetViewController.m
//  Biliilon1
//
//  Created by 杨倩 on 2020/3/2.
//  Copyright © 2020 杨倩. All rights reserved.
//

#import "KSNewBuildTargetViewController.h"

@interface KSNewBuildTargetViewController ()

@property (nonatomic,strong)UIView *editNewTargetView;
@property (nonatomic,strong)UITextField *targetNameText;
@property (nonatomic,strong)UITextField *targetBeginText;
@property (nonatomic,strong)UITextField *targetEndText;
@property (nonatomic,strong)UITextField *targetDifficultText;
@property (nonatomic,strong)UIButton *saveTargetButton;

@end

@implementation KSNewBuildTargetViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self setUpView];
    
}

//添加页面
- (void)setUpView{
    self.editNewTargetView.frame = self.view.frame;
    [self.view addSubview:self.editNewTargetView];
    
    [self.view addSubview:self.targetNameText];
    [self.view addSubview:self.targetBeginText];
    [self.view addSubview:self.targetEndText];
    [self.view addSubview:self.targetDifficultText];
    [self.view addSubview:self.saveTargetButton];
}

// 初始化页面
- (UIView *)editNewTargetView{
    if(!_editNewTargetView){
        _editNewTargetView = [[UIView alloc]init];
    }
    return _editNewTargetView;
}

// 初始化输入框

- (UITextField *)targetNameText{
    if(!_targetNameText){
        _targetNameText = [[UITextField alloc]initWithFrame:CGRectMake(30, 100, 350, 50)];
        _targetNameText.borderStyle = UITextBorderStyleBezel;
        _targetNameText.placeholder = @"目标";
        _targetNameText.textColor = [UIColor blackColor];
        _targetNameText.font = [UIFont systemFontOfSize:14];
        _targetNameText.textAlignment = NSTextAlignmentCenter;
    }
    return _targetNameText;
}

- (UITextField *)targetBeginText{
    if(!_targetBeginText){
        _targetBeginText = [[UITextField alloc]initWithFrame:CGRectMake(30, 150, 350, 50)];
        _targetBeginText.borderStyle = UITextBorderStyleBezel;
        _targetBeginText.placeholder = @"开始时间";
        _targetBeginText.textColor = [UIColor blackColor];
        _targetBeginText.font = [UIFont systemFontOfSize:14];
        _targetBeginText.textAlignment = NSTextAlignmentCenter;
    }
    return _targetBeginText;
}

- (UITextField *)targetEndText{
    if(!_targetEndText){
        _targetEndText = [[UITextField alloc]initWithFrame:CGRectMake(30, 200, 350, 50)];
        _targetEndText.borderStyle = UITextBorderStyleBezel;
        _targetEndText.placeholder = @"结束时间";
        _targetEndText.textColor = [UIColor blackColor];
        _targetEndText.font = [UIFont systemFontOfSize:14];
        _targetEndText.textAlignment = NSTextAlignmentCenter;
    }
    return _targetEndText;
}

- (UITextField *)targetDifficultText{
    if(!_targetDifficultText){
        _targetDifficultText = [[UITextField alloc]initWithFrame:CGRectMake(30,250, 350, 50)];
        _targetDifficultText.borderStyle = UITextBorderStyleBezel;
        _targetDifficultText.placeholder = @"难易程度";
        _targetDifficultText.textColor = [UIColor blackColor];
        _targetDifficultText.font = [UIFont systemFontOfSize:14];
        _targetDifficultText.textAlignment = NSTextAlignmentCenter;
    }
    return _targetDifficultText;
}

//初始化button

- (UIButton *)saveTargetButton{
    if(!_saveTargetButton){
        _saveTargetButton = [[UIButton alloc]initWithFrame:CGRectMake(150, self.view.frame.size.height-200, 100, 50)];
        _saveTargetButton.backgroundColor = [UIColor purpleColor];
        [_saveTargetButton setTitle:@"保存" forState:UIControlStateNormal];
    }
    return _saveTargetButton;
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
