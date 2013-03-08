//
//  ClassBase.h
//  projectOne
//
//  Created by Dale Tupling on 3/5/13.
//  Copyright (c) 2013 Dale Tupling. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ClassBase : NSObject
{
    //Declare weaponEnum as int. This will help with my switch case statement
    int weaponEnum;
    
}

typedef enum
{
    SEMIAUTORIFLE,
    PISTOLHANDGUN,
    HUNTINGRIFLE
} weaponEnum;


//Properties that all subclass will have
@property int cost;
@property NSString *maker;
@property NSString *model;
@property int costPerRound;
@property int totalRoundsPerMagazine;


//Get total operation cost this will include the cost of the weapon initially
-(int)OperationCost;

//Caluclate total cost of the weapon with any attachments
-(int)TotalCostOfWeapon;

//Initialize
-(id)init;


@end
