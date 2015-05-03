//
//  BACdata.h
//  Tipsy
//
//  Created by Justin Oakes on 5/1/15.
//  Copyright (c) 2015 Oklasoft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BACdata : NSObject

@property (strong, nonatomic) NSDate *timeAtDrink;
@property (nonatomic) float alcContent;
@property (nonatomic) float volumeInOunces;
@property (nonatomic) int weightinPounds;

+(float)getCurrentBAC: (NSArray *)dataPointsArray;


@end
