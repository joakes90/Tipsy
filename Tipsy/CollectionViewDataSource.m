//
//  CollectionViewDataSource.m
//  Tipsy
//
//  Created by Justin Oakes on 5/8/15.
//  Copyright (c) 2015 Oklasoft. All rights reserved.
//

#import "CollectionViewDataSource.h"
#import "DrinksController.h"

@implementation CollectionViewDataSource

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{

    return [DrinksController sharedInstance].uniqueDrinks.count;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{

}

@end
