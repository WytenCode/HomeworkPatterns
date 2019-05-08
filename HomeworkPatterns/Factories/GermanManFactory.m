//
//  GermanManFactory.m
//  HomeworkPatterns
//
//  Created by Владимир on 08/05/2019.
//  Copyright © 2019 Владимир. All rights reserved.
//

#import "GermanManFactory.h"
#import "GermanMan.h"

@implementation GermanManFactory

-(id<StreetPerson>)createPerson
{
    return [[GermanMan alloc] init];
}

@end
