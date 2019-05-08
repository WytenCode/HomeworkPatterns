//
//  ViewController.m
//  HomeWorkPatterns
//
//  Created by Владимир on 25/04/2019.
//  Copyright © 2019 Владимир. All rights reserved.
//

#import "ViewController.h"
#import "StreetMan.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSInteger age = 30;
    StreetMan *ourMan = [[StreetMan alloc]initWithAge:age langType:English];
    [ourMan giveGreeting];
    NSLog(@"Let's meet the man with the same age and the same nation as we are!");
    
    StreetMan *nextMan;
    NSInteger randomManCount = 0;
    while (([nextMan tellAge] != [ourMan tellAge]) || ([nextMan class] != [ourMan class]))
    {
        nextMan = nil;
        nextMan = [[StreetMan alloc] initWithAge:(arc4random_uniform(21)+20) langType:arc4random_uniform(4)];
        [nextMan giveGreeting];
        randomManCount++;
    }
    
    NSLog(@"We found the man! His number is %ld, his age is %ld, he is %@", randomManCount, [nextMan tellAge], [nextMan class]);
    
    // Do any additional setup after loading the view, typically from a nib.
}


@end
