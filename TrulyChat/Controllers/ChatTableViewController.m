//
//  ChatTableViewController.m
//  TrulyChat
//
//  Created by Bruno Isola Reginato on 5/21/15.
//  Copyright (c) 2015 BReginato. All rights reserved.
//

#import "ChatTableViewController.h"

@implementation ChatTableViewController

-(void)viewDidLoad
{
    [self.navigationController.navigationBar setHidden:NO];
}

#pragma mark - UITableViewDelegate/Datasource
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.messages.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    cell.textLabel.text = self.messages[indexPath.row];
    
    return cell;
}

#pragma mark - Send Message
-(void)willSendMessage:(NSString *)message
{
    
}

#pragma mark - didReciveMessage
-(void)didReciveMessage:(NSString *) message {
    [self.messages addObject:message];
    [self.tableView reloadData];
}

@end
