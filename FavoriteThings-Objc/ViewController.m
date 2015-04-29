//
//  ViewController.m
//  FavoriteThings-Objc
//
//  Created by Sarah on 4/29/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()


//@property (strong, nonatomic) UITableView *tableView;



@property (strong, nonatomic) UITableView *tableView;
@property (strong, nonatomic) FavoriteThingsTableViewDataSource *dataSource;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //    self.tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    
    //    [self.view addSubview:self.tableView];
    

    
    
    self.tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    self.dataSource = [FavoriteThingsTableViewDataSource new];
    self.tableView.dataSource = self.dataSource;
    [self.dataSource registerTableView:self.tableView];
    
    
    [self.view addSubview:self.tableView];
    
    
    
    
    
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
