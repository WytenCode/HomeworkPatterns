//
//  EnglishMan.m
//  HomeworkPatterns
//
//  Created by Владимир on 08/05/2019.
//  Copyright © 2019 Владимир. All rights reserved.
//

#import "EnglishMan.h"

@interface EnglishMan()

@property (nonatomic, assign) NSInteger manAge;

@end

@implementation EnglishMan

-(NSString *)giveGreeting
{
    self.manAge = arc4random_uniform(21)+20;
    return [NSString stringWithFormat:@"Hello! I'm %ld years old and I'm from England", (long)self.manAge];
}

-(NSInteger)tellAge
{
    if ((self.manAge > 40) || (self.manAge < 20))
        return 19;
    return self.manAge;
}



@end
