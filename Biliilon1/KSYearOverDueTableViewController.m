//
//  KSOverDueTableViewController.m
//  Biliilon1
//
//  Created by 杨倩 on 2020/3/3.
//  Copyright © 2020 杨倩. All rights reserved.
//

#import "KSYearOverDueTableViewController.h"

#pragma mark - Table view data source
@interface KSYearOverDueTableViewController ()<UITableViewDataSource,UITableViewDelegate>{
    NSArray *_yearOverDueArray;
}

@end

@implementation KSYearOverDueTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    //编辑数据源
    _yearOverDueArray = @[@"第一行",@"第二行",@"第三行"];
    
    //设置代理和数数据源
    self.tableView.delegate = self;
    self.tableView.dataSource = self;

}

#pragma mark - Table view delegate

//多少个区
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
 #warning Incomplete implementation, return the number of sections
    return 1;
}

//一个区多少行
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return 3;
}


//代理方法：对tableView中的行进行设置
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *yearOverDuecell = [[UITableViewCell alloc] init];
    yearOverDuecell.textLabel.text =  _yearOverDueArray[indexPath.row];
    return yearOverDuecell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
