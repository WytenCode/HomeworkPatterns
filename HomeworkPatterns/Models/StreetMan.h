//
//  StreetMan.h
//  HomeWorkPatterns
//
//  Created by Владимир on 25/04/2019.
//  Copyright © 2019 Владимир. All rights reserved.
//

#ifndef StreetMan_h
#define StreetMan_h

@protocol StreetPerson <NSObject>
@required
-(NSString *)giveGreeting;
-(NSInteger)tellAge;
@end

#endif /* StreetMan_h */
