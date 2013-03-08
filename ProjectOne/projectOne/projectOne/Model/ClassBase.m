//
//  ClassBase.m
//  projectOne
//
//  Created by Dale Tupling on 3/5/13.
//  Copyright (c) 2013 Dale Tupling. All rights reserved.
//

#import "ClassBase.h"

@implementation ClassBase

@synthesize cost, maker, model, costPerRound, totalRoundsPerMagazine;

-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setCost:0];
        [self setMaker:nil];
        [self setModel:nil];
        [self setCostPerRound:0];
        [self setTotalRoundsPerMagazine:0];
    }
    return self;
}

//Total Operation Cost This will be overidden with subclasses specifications
-(int)OperationCost;
{
    return 0;
}

//Total Cost of Weapon with any attachments, this will also be overidden with specification from subclass
-(int)TotalCostOfWeapon;
{
    return 0;
}
@end
