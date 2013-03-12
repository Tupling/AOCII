//
//  Rifle.m
//  projectOne
//
//  Created by Dale Tupling on 3/5/13.
//  Copyright (c) 2013 Dale Tupling. All rights reserved.
//

#import "Rifle.h"

@implementation Rifle

@synthesize scopeCost, slingCost, buttStockPadCost, cost;

-(id)init
{
    if(self = [super init])
    {
        //Set property values
        [self setCost:550];
        [self setMaker:@"Remington"];
        [self setModel:@"700"];
        [self setScopeCost:450];
        [self setSlingCost:40];
        [self setButtStockPadCost:100];
        
    }
    return self;
}

//Total Cost of the Weapon and Attachments
-(int)TotalCostOfWeapon
{
    int totalWeaponCost = cost + scopeCost + slingCost + buttStockPadCost;
    
    return totalWeaponCost;
}


//Total cost to operate the weapon
-(int)OperationCost
{
    
    int costPerRound = 4;
    int numberOfRoundPerBox = 50;
    
    int totalOperationCost = numberOfRoundPerBox * costPerRound;
    
    return totalOperationCost;
}

@end
