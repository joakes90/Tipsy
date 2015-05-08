//
//  Drinks.m
//  Tipsy
//
//  Created by Justin Oakes on 5/8/15.
//  Copyright (c) 2015 Oklasoft. All rights reserved.
//

#import "Drinks.h"

@implementation Drinks

-(instancetype) initWithName:(NSString *)name proof:(float)proof AndVolumeInOunces:(float)volume{
    self = [super init];
    
    if (self) {
        self.name = name;
        self.alcaholContent = proof / 2;
        self.volumeInOunces = volume;
        
        if ([name isEqualToString:@"Low Point Beer"] || [name isEqualToString:@"High Point Beer"]) {
            self.image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"beer" ofType:@"png"]];
        } else if ([name isEqualToString:@"Whiskey"]){
            self.image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"whiskey" ofType:@"png"]];
        } else if ([name isEqualToString:@"Rum"]){
            self.image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"rum" ofType:@"png"]];
        } else {
            self.image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"vodka" ofType:@"png"]];
        }
    }
    return self;
}

@end
