//
//  StreetMan.h
//  HomeWorkPatterns
//
//  Created by Владимир on 25/04/2019.
//  Copyright © 2019 Владимир. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, LanguageType) {
    English,
    French,
    Chinese,
    Spanish
};

@protocol StreetPerson
@required
-(void)giveGreeting;
-(id)initWithAge:(NSInteger) age;
-(NSInteger)tellAge;
@end


@interface StreetMan : NSObject <StreetPerson>
-(id)initWithAge:(NSInteger) age langType:(LanguageType)langType;
@end

// objects
@interface EnglishMan : StreetMan
@property (nonatomic, assign) NSInteger manAge;
@end

@interface FrenchMan : StreetMan
@property (nonatomic, assign) NSInteger manAge;
@end

@interface GermanMan : StreetMan
@property (nonatomic, assign) NSInteger manAge;
@end

@interface SpanishMan : StreetMan
@property (nonatomic, assign) NSInteger manAge;
@end

