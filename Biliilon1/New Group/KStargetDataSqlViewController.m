//
//  KStargetDataSqlViewController.m
//  Biliilon1
//
//  Created by 杨倩 on 2020/3/4.
//  Copyright © 2020 杨倩. All rights reserved.
//

#import "KStargetDataSqlViewController.h"
#import "sqlite3.h"

@interface KStargetDataSqlViewController ()

@end

@implementation KStargetDataSqlViewController{
    sqlite3 *_db;//句柄：数据库的句柄，可用对数据库的操作
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)openSqlDataBase{
    //获取数据库路径
    NSString *docPath = [NSSearchPathForDirectoriesInDomains(NSDocumentationDirectory, NSUserDomainMask, YES)lastObject];
    NSString *fileName = [docPath stringByAppendingPathComponent:@"target.sqlite"];
    
    NSLog(@"fileNamePath = %@",fileName);
    
    //将oc的字符串替换成c的字符串
    const char *cFileName = fileName.UTF8String;
    
    //打开数据库，打不开则创建一个
    int result = sqlite3_open(cFileName, &_db);

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
