//
//  ViewController.m
//  HomeWorkPatterns
//
//  Created by Владимир on 25/04/2019.
//  Copyright © 2019 Владимир. All rights reserved.
//

#import "ViewController.h"
#import "EnglishManFactory.h"
#import "FrenchManFactory.h"
#import "GermanManFactory.h"
#import "SpanishManFactory.h"

@interface ViewController ()

@property (nonatomic, strong) id<StreetManFactory> currentFactory;
@property (nonatomic, strong) id<StreetPerson> ourPerson;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _currentFactory = [self giveFactory];
    if (!_currentFactory)
    {
        NSLog(@"Factory is not created");
        return;
    }
    NSLog(@"Factory created : %@", [_currentFactory class]);
    ///////////////////////////////////////////////////////////////
    _ourPerson = [_currentFactory createPerson];
    if (!_ourPerson)
    {
        NSLog(@"Man is not created");
        return;
    }
    NSLog(@"Man created : %@", [_ourPerson class]);
    ///////////////////////////////////////////////////////////////
    NSLog(@"%@", [_ourPerson giveGreeting]);
    NSLog(@"Let's meet the man with the same age and the same nation as we are!");
    
    id<StreetPerson> nextMan = nil;
    NSInteger manCount = 1;
    _currentFactory = nil;
    _currentFactory = [self giveFactory];
    nextMan = [_currentFactory createPerson];
    NSLog(@"%@", [nextMan giveGreeting]);
    while (([nextMan tellAge] != [_ourPerson tellAge]) || ([nextMan class] != [_ourPerson class]))
    {
        nextMan = nil;
        _currentFactory = nil;
        _currentFactory = [self giveFactory];
        nextMan = [_currentFactory createPerson];
        NSLog(@"%@", [nextMan giveGreeting]);
        manCount++;
    }

    NSLog(@"We found the man! His number is %ld, his age is %ld, he is %@", manCount, [nextMan tellAge], [nextMan class]);
    
    // Do any additional setup after loading the view, typically from a nib.
}

-(id<StreetManFactory>)giveFactory
{
    NSInteger tmp = arc4random_uniform(4);
    id<StreetManFactory> tmpFactory = nil;
    switch (tmp) {
        case 0:
            tmpFactory = [[EnglishManFactory alloc] init];
            break;
        case 1:
            tmpFactory =  [[FrenchManFactory alloc] init];
            break;
        case 2:
            tmpFactory =  [[GermanManFactory alloc] init];
            break;
        case 3:
            tmpFactory =  [[SpanishManFactory alloc] init];
            break;
        default:
            break;
    }
    return tmpFactory;
}



@end
