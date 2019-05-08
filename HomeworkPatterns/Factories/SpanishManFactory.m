//
//  SpanishManFactory.m
//  HomeworkPatterns
//
//  Created by Владимир on 08/05/2019.
//  Copyright © 2019 Владимир. All rights reserved.
//

#import "SpanishManFactory.h"
#import "SpanishMan.h"

@implementation SpanishManFactory

-(id<StreetPerson>)createPerson
{
    return [[SpanishMan alloc] init];
}

@end
