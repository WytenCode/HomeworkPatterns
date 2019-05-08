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
@property (nonatomic, strong) id<StreetCat> ourCat;
@property (nonatomic, strong) id<StreetDog> ourDog;


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
    NSLog(@"%@", [_ourPerson giveGreeting]);
    NSLog(@"This man is %ld years old", [_ourPerson tellAge]);
    ///////////////////////////////////////////////////////////////
    _ourCat = [_currentFactory createCat];
    if (!_ourCat)
    {
        NSLog(@"Cat is not created");
        return;
    }
    NSLog(@"Cat created : %@", [_ourCat class]);
    NSLog(@"The сat mews like this: %@. And it is %@", [_ourCat sayLoudMeow], [_ourCat tellColour]);
    ///////////////////////////////////////////////////////////////
    _ourDog = [_currentFactory createDog];
    if (!_ourDog)
    {
        NSLog(@"Dog is not created");
        return;
    }
    NSLog(@"Dog created : %@", [_ourDog class]);
    NSLog(@"The dog's name is %@, and it's breed is %@", [_ourDog tellDogName], [_ourDog tellDogBreed]);
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
