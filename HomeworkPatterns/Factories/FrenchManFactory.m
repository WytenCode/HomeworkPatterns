//
//  FrenchManFactory.m
//  HomeworkPatterns
//
//  Created by Владимир on 08/05/2019.
//  Copyright © 2019 Владимир. All rights reserved.
//

#import "FrenchManFactory.h"
#import "FrenchMan.h"
#import "FrenchCat.h"
#import "FrenchDog.h"

@implementation FrenchManFactory

-(id<StreetPerson>)createPerson
{
    return [[FrenchMan alloc] init];
}

-(id<StreetCat>)createCat
{
    return [[FrenchCat alloc] init];
}

-(id<StreetDog>)createDog
{
    return [[FrenchDog alloc] init];
}

@end
