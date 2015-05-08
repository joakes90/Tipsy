//
//  DrinksController.m
//  Tipsy
//
//  Created by Justin Oakes on 5/8/15.
//  Copyright (c) 2015 Oklasoft. All rights reserved.
//

#import "DrinksController.h"

@interface DrinksController ()

@property (strong, nonatomic) NSArray *drinksArray;
@property (strong, nonatomic) NSArray *uniqueDrinks;

@end

@implementation DrinksController


+ (instancetype) sharedInstance {
    static DrinksController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[DrinksController alloc] init];
        [sharedInstance createDefaultArray];
    });
    return sharedInstance;
}


- (void) createDefaultArray{
    NSUserDefaults *defaults = [[NSUserDefaults alloc] initWithSuiteName:@"group.com.oklasoft.tipsy"];
    
    Drinks *beerLow = [[Drinks alloc] initWithName:@"Low Point Beer" proof:8.11 AndVolumeInOunces:12];
    Drinks *beerHigh = [[Drinks alloc] initWithName:@"High Point Beer" proof:12.0 AndVolumeInOunces:12.0];
    Drinks *vodka = [[Drinks alloc] initWithName:@"Vodka" proof:80.0 AndVolumeInOunces:1.0];
    Drinks *whiskey = [[Drinks alloc] initWithName:@"Whiskey" proof:80.0 AndVolumeInOunces:1.0];
    Drinks *rum = [[Drinks alloc] initWithName:@"Rum" proof:75.0 AndVolumeInOunces:1.0];
    
    NSMutableArray *returnArray = [NSMutableArray arrayWithObjects:beerLow, beerHigh, vodka, whiskey, rum, nil];
    
    NSArray *customItems = [defaults arrayForKey:@"customDrinks"];
    [returnArray arrayByAddingObjectsFromArray:customItems];
    
    _uniqueDrinks = returnArray;
}

@end
