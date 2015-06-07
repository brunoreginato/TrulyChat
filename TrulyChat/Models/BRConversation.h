//
//  Conversation.h
//  TrulyChat
//
//  Created by Bruno Isola Reginato on 5/27/15.
//  Copyright (c) 2015 BReginato. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BRPerson.h"
#import "BRMessage.h"

@interface BRConversation : NSObject

@property (strong,nonatomic) NSMutableArray *people;
@property (strong,nonatomic) NSMutableArray *messages;

+(BRConversation *)newConversationFromDictionary:(NSDictionary *)conversation;

-(NSDictionary *) dictionary;

@end
