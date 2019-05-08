//
//  GermanManFactory.m
//  HomeworkPatterns
//
//  Created by Владимир on 08/05/2019.
//  Copyright © 2019 Владимир. All rights reserved.
//

#import "GermanManFactory.h"
#import "GermanMan.h"
#import "GermanCat.h"
#import "GermanDog.h"

@implementation GermanManFactory

-(id<StreetPerson>)createPerson
{
    return [[GermanMan alloc] init];
}

-(id<StreetCat>)createCat
{
    return [[GermanCat alloc] init];
}

-(id<StreetDog>)createDog
{
    return [[GermanDog alloc] init];
}

@end
