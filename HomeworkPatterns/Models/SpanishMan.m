//
//  SpanishMan.m
//  HomeworkPatterns
//
//  Created by Владимир on 08/05/2019.
//  Copyright © 2019 Владимир. All rights reserved.
//

#import "SpanishMan.h"

@interface SpanishMan()

@property (nonatomic, assign) NSInteger manAge;

@end

@implementation SpanishMan

-(NSString *)giveGreeting
{
    self.manAge = arc4random_uniform(21)+20;
    return [NSString stringWithFormat:@"Hola! Tengo %ld años y soy de España", (long)self.manAge];
}

-(NSInteger)tellAge
{
    if ((self.manAge > 40) || (self.manAge < 20))
        return 19;
    return self.manAge;
}
@end
