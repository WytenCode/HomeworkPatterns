//
//  SpanishManFactory.m
//  HomeworkPatterns
//
//  Created by Владимир on 08/05/2019.
//  Copyright © 2019 Владимир. All rights reserved.
//

#import "SpanishManFactory.h"
#import "SpanishMan.h"
#import "SpanishCat.h"
#import "SpanishDog.h"

@implementation SpanishManFactory

-(id<StreetPerson>)createPerson
{
    return [[SpanishMan alloc] init];
}

-(id<StreetCat>)createCat
{
    return [[SpanishCat alloc] init];
}

-(id<StreetDog>)createDog
{
    return [[SpanishDog alloc] init];
}

@end
