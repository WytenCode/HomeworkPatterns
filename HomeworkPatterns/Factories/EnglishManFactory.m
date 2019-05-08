//
//  EnglishManFactory.m
//  HomeworkPatterns
//
//  Created by Владимир on 08/05/2019.
//  Copyright © 2019 Владимир. All rights reserved.
//

#import "EnglishManFactory.h"
#import "EnglishMan.h"

@implementation EnglishManFactory

-(id<StreetPerson>)createPerson
{
    return [[EnglishMan alloc] init];
}

@end
