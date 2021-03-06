//
//  StreetManFactory.h
//  HomeworkPatterns
//
//  Created by Владимир on 08/05/2019.
//  Copyright © 2019 Владимир. All rights reserved.
//

#ifndef StreetManFactory_h
#define StreetManFactory_h

#import "StreetMan.h"
#import "StreetCat.h"
#import "StreetDog.h"

@protocol StreetManFactory <NSObject>

-(id<StreetPerson>)createPerson;
-(id<StreetCat>)createCat;
-(id<StreetDog>)createDog;

@end


#endif /* StreetManFactory_h */
