//
//  FavoriteThingsTableViewDataSource.m
//  FavoriteThings-Objc
//
//  Created by Sarah on 4/29/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "FavoriteThingsTableViewDataSource.h"

static NSString *const cellID = @"cell";

@interface FavoriteThingsTableViewDataSource () <UITableViewDataSource>

@end

@implementation FavoriteThingsTableViewDataSource

-(void)registerTableView:(UITableView *)tableView
{
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:
     cellID];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection: (NSInteger) section
{
    return [self favoriteThings].count;
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:
    (NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    cell.textLabel.text = [self favoriteThings][indexPath.row];
    
    return cell;

}



- (NSArray *)favoriteThings {
        return @[@"Model S", @"BYU Football", @"BYU Basketball", @"iPhone", @"Mac", @"Podcasts", @"LOST"];
    
}
    
    
@end
