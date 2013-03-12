//
//  WeaponFactory.m
//  projectOne
//
//  Created by Dale Tupling on 3/5/13.
//  Copyright (c) 2013 Dale Tupling. All rights reserved.
//

#import "WeaponFactory.h"
#import "semiAuto.h"
#import "Rifle.h"
#import "ClassBase.h"
#import "Pistol.h"

@implementation WeaponFactory


+(ClassBase *)CreateWeapon:(int)weaponEnum
{
    //Switch statement to return desired weapon
    switch (weaponEnum)
    {
        case 0:
            return [[semiAuto alloc] init];
        
        case 1:
            return [[Pistol alloc] init];
            
        case 2:
            return [[Rifle alloc] init];
            
        case 3:
            return nil;
    }
    return nil;
}

@end
