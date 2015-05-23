//
//  ChatTableViewController.h
//  TrulyChat
//
//  Created by Bruno Isola Reginato on 5/21/15.
//  Copyright (c) 2015 BReginato. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ChatTableViewController : UITableViewController <UITableViewDataSource,UITableViewDelegate,UITextViewDelegate>

@property (nonatomic,strong)  NSMutableArray *messages;

@end
