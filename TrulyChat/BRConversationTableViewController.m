//
//  ConversationTableViewController.m
//  TrulyChat
//
//  Created by Bruno Isola Reginato on 6/6/15.
//  Copyright (c) 2015 BReginato. All rights reserved.
//

#import "BRConversationTableViewController.h"
#import <Firebase/Firebase.h>
#import "BRConversation.h"

@interface BRConversationTableViewController ()
@property (strong,nonatomic) NSMutableArray *conversations;
@property (strong,nonatomic) Firebase *fireBase;
@end

@implementation BRConversationTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initFirebase];
}

NSString *const kFirebaseUrl = @"https://thrullychat.firebaseio.com/";

#pragma mark - Firebase
-(void)initFirebase {
    self.conversations = [NSMutableArray new];
    self.fireBase = [[Firebase alloc] initWithUrl: kFirebaseUrl];
    
    [self.fireBase observeEventType:FEventTypeChildAdded withBlock:^(FDataSnapshot *snapshot) {
        BRConversation *conv = [BRConversation newConversationFromDictionary:snapshot.value];
        
        [self.conversations addObject:conv];
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.conversations.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    BRConversation *__weak conv = self.conversations[indexPath.row];
    
    cell.textLabel.text = [self getPeopleName:conv];
    
    return cell;
}

-(NSString *)getPeopleName:(BRConversation *)conv {
    return [[conv.people valueForKey:@"name"] componentsJoinedByString:@","];
}

@end
