//
//  Person.m
//  TrulyChat
//
//  Created by Bruno Isola Reginato on 5/27/15.
//  Copyright (c) 2015 BReginato. All rights reserved.
//

#import "BRPerson.h"

@implementation BRPerson

+(BRPerson *)newPersonFromDictionary:(NSDictionary *)person {
    BRPerson *per = [BRPerson new];
//    per.code = person[@"code"];
    per.name = person[@"name"];
    per.imageUrl = person[@"imageUrl"];

    return per;
}

-(NSDictionary *)dictionary {
    return @{
                @"name": self.name,
                @"imageUrl": self.imageUrl
            };
}

+(NSMutableArray *)parseToArrayOfDictionaries:(NSArray *)people {
    NSMutableArray *arrayOfDictionaryies = [NSMutableArray new];
    
    for (BRPerson *person in people) {
        [arrayOfDictionaryies addObject: person.dictionary];
    }
    
    return arrayOfDictionaryies;
}

@end
