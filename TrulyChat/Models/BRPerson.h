//
//  Person.h
//  TrulyChat
//
//  Created by Bruno Isola Reginato on 5/27/15.
//  Copyright (c) 2015 BReginato. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BRPerson : NSObject

@property (copy,nonatomic) NSString *code;
@property (copy,nonatomic) NSString *name;
@property (copy,nonatomic) NSString *imageUrl;

+(BRPerson *)newPersonFromDictionary:(NSDictionary *)person;

-(NSDictionary *)dictionary;
+(NSMutableArray *)parseToArrayOfDictionaries:(NSArray *)people;

@end
