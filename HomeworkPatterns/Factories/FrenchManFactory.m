//
//  FrenchManFactory.m
//  HomeworkPatterns
//
//  Created by Владимир on 08/05/2019.
//  Copyright © 2019 Владимир. All rights reserved.
//

#import "FrenchManFactory.h"
#import "FrenchMan.h"

@implementation FrenchManFactory

-(id<StreetPerson>)createPerson
{
    return [[FrenchMan alloc] init];
}

@end
