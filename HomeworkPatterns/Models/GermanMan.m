//
//  GermanMan.m
//  HomeworkPatterns
//
//  Created by Владимир on 08/05/2019.
//  Copyright © 2019 Владимир. All rights reserved.
//

#import "GermanMan.h"

@interface GermanMan()

@property (nonatomic, assign) NSInteger manAge;

@end

@implementation GermanMan

-(NSString *)giveGreeting
{
    self.manAge = arc4random_uniform(21)+20;
    return [NSString stringWithFormat:@"Hallo! Ich bin %ld Jahre alt und komme aus Deutschland", (long)self.manAge];
}

-(NSInteger)tellAge
{
    if ((self.manAge > 40) || (self.manAge < 20))
        return 19;
    return self.manAge;
}
@end
