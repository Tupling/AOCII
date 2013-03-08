//
//  WeaponFactory.h
//  projectOne
//
//  Created by Dale Tupling on 3/5/13.
//  Copyright (c) 2013 Dale Tupling. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "semiAuto.h"
#import "Rifle.h"
#import "ClassBase.h"
#import "Pistol.h"

@interface WeaponFactory : NSObject

+(ClassBase *)CreateWeapon:(int)weaponEnum;

@end
