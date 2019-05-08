//
//  FrenchMan.m
//  HomeworkPatterns
//
//  Created by Владимир on 08/05/2019.
//  Copyright © 2019 Владимир. All rights reserved.
//

#import "FrenchMan.h"

@interface FrenchMan()

@property (nonatomic, assign) NSInteger manAge;

@end

@implementation FrenchMan

-(NSString *)giveGreeting
{
    self.manAge = arc4random_uniform(21)+20;
    return [NSString stringWithFormat:@"Bonjoir! J'ai %ld ans et je viens de France", (long)self.manAge];
}

-(NSInteger)tellAge
{
    if ((self.manAge > 40) || (self.manAge < 20))
        return 19;
    return self.manAge;
}
@end
