//
//  semiAuto.m
//  projectOne
//
//  Created by Dale Tupling on 3/5/13.
//  Copyright (c) 2013 Dale Tupling. All rights reserved.
//

#import "semiAuto.h"

@implementation semiAuto

@synthesize opticsCost, handRailsCost, forwardGripCost, numberOfMagazines, cost;

-(id)init
{
    if(self = [super init])
    {
        //set property values
        [self setCost:1500];
        [self setMaker:@"Colt"];
        [self setModel:@"AR-15"];
        [self setHandRailsCost:150];
        [self setForwardGripCost:125];
        [self setNumberOfMagazines:6];

    }
    return self;
}

//Total Cost of the Weapon and Attachments
-(int)TotalCostOfWeapon
{
    int totalWeaponCost = cost + handRailsCost + forwardGripCost;
    
    return totalWeaponCost;
}


//Total cost to operate the weapon
-(int)OperationCost
{

    int costPerRound = 2;
    int numberOfRoundsInMagazine = 30;
    
    int totalOperationCost = numberOfMagazines * (costPerRound * numberOfRoundsInMagazine);
    
    return totalOperationCost;
}
@end
