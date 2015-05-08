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
    }
    return self;
}

@end
