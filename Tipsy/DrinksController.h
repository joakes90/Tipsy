//
//  DrinksController.h
//  Tipsy
//
//  Created by Justin Oakes on 5/8/15.
//  Copyright (c) 2015 Oklasoft. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Drinks.h"

@interface DrinksController : NSObject

@property (strong, nonatomic, readonly) NSArray *drinksArray;
@property (strong, nonatomic, readonly) NSArray *uniqueDrinks;

+ (instancetype) sharedInstance;

@end
