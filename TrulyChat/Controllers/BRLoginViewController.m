//
//  LoginViewController.m
//  TrulyChat
//
//  Created by Bruno Isola Reginato on 5/21/15.
//  Copyright (c) 2015 BReginato. All rights reserved.
//

#import "BRLoginViewController.h"
@interface BRLoginViewController()

- (IBAction)goToChat:(id)sender;

@end

@implementation BRLoginViewController

-(void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationController.navigationBar setHidden:YES];
}

- (IBAction)goToChat:(id)sender {
}
@end