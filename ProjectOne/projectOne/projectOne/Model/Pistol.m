//
//  Pistol.m
//  projectOne
//
//  Created by Dale Tupling on 3/5/13.
//  Copyright (c) 2013 Dale Tupling. All rights reserved.
//

#import "Pistol.h"

@implementation Pistol

@synthesize laserSightCost, fatGripCost, iridiumSightCost, cost, numberOfMagazines;

-(id)init
{
    if(self = [super init])
    {
        //set property values
        [self setCost:750];
        [self setMaker:@"Springfield"];
        [self setModel:@"XDM 45"];
        [self setLaserSightCost:150];
        [self setFatGripCost:125];
        [self setIridiumSightCost:200];
        [self setNumberOfMagazines:6];
        
    }
    return self;
}

//Total Cost of the Weapon and Attachments
-(int)TotalCostOfWeapon
{
    int totalWeaponCost = cost + fatGripCost + laserSightCost + iridiumSightCost;
    
    return totalWeaponCost;
}


//Total cost to operate the weapon
-(int)OperationCost
{
    
    int costPerRound = 3;
    int numberOfRoundsInMagazine = 15;
    
    //Calculate totalOperationCost byt multiplying costPerRound by numberOfRoundinMagazaine then multiply that by numberOfMagazines
    int totalOperationCost = numberOfMagazines * (costPerRound * numberOfRoundsInMagazine);
    
    return totalOperationCost;
}
@end
