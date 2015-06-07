//
//  Message.h
//  TrulyChat
//
//  Created by Bruno Isola Reginato on 5/27/15.
//  Copyright (c) 2015 BReginato. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BRPerson.h"

@interface BRMessage : NSObject

@property (copy,nonatomic) NSString *content;
@property (strong,nonatomic) BRPerson *autor;

+(BRMessage *)newMessageFromDictionary:(NSDictionary *)message;

-(NSDictionary *)dictionary;
+(NSMutableArray *)parseToArrayOfDictionaries:(NSArray *)messages;

@end
