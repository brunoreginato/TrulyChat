//
//  Message.m
//  TrulyChat
//
//  Created by Bruno Isola Reginato on 5/27/15.
//  Copyright (c) 2015 BReginato. All rights reserved.
//

#import "BRMessage.h"

@implementation BRMessage

+(BRMessage *)newMessageFromDictionary:(NSDictionary *)message {
    BRMessage *msg = [BRMessage new];
    
    msg.content = message[@"content"];
    msg.autor = [BRPerson newPersonFromDictionary:message[@"autor"]];
    
    return msg;
}

-(NSDictionary *)dictionary {
    return @{ @"autor":[self.autor dictionary],
              @"content":self.content };
}

+(NSMutableArray *)parseToArrayOfDictionaries:(NSArray *)messages {
    NSMutableArray *arrayOfDictionaries = [NSMutableArray new];
    
    for (BRMessage *message in messages) {
        [arrayOfDictionaries addObject:[message dictionary]];
    }
    
    return arrayOfDictionaries;
}

@end
