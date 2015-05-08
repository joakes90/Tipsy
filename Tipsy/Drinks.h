//
//  Drinks.h
//  Tipsy
//
//  Created by Justin Oakes on 5/8/15.
//  Copyright (c) 2015 Oklasoft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Drinks : NSObject

@property float alcaholContent;
@property float volumeInOunces;
@property (strong, nonatomic) NSString *name;

-(instancetype) initWithName:(NSString *)name proof:(float)proof AndVolumeInOunces:(float)volume;

@end
