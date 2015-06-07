//
//  Conversation.m
//  TrulyChat
//
//  Created by Bruno Isola Reginato on 5/27/15.
//  Copyright (c) 2015 BReginato. All rights reserved.
//

#import "BRConversation.h"

@implementation BRConversation

+(BRConversation *)newConversationFromDictionary:(NSDictionary *)conversation{
    BRConversation *conv = [BRConversation new];
    
    conv.people = [NSMutableArray new];
    conv.messages = [NSMutableArray new];
    
    for (NSDictionary *person in conversation[@"people"]) {
        [conv.people addObject:[BRPerson newPersonFromDictionary: person]];
    }
    
    for (NSDictionary *message in conversation[@"messages"]) {
        [conv.messages addObject:[BRMessage newMessageFromDictionary: message]];
    }
    
    return conv;
}

#pragma mark - NSDictionary convertion
-(NSDictionary *)dictionary {
    return @{
                @"people": [BRPerson parseToArrayOfDictionaries:self.people],
                @"messages": [BRMessage parseToArrayOfDictionaries: self.messages]
             };
}

@end
