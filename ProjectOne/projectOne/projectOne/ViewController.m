//
//  ViewController.m
//  projectOne
//
//  Created by Dale Tupling on 3/5/13.
//  Copyright (c) 2013 Dale Tupling. All rights reserved.
//

#import "ViewController.h"
#import "WeaponFactory.h"



@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    self.view.backgroundColor = [UIColor darkGrayColor];
    
    
    
    //Header Labal for Information
    headerLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 320.0f, 30.0f)];
    if (headerLabel != nil)
    {
        headerLabel.text = @"Weapon Cost Comparison";
        headerLabel.textColor = [UIColor blackColor];
        headerLabel.textAlignment = NSTextAlignmentCenter;
        headerLabel.backgroundColor = [UIColor whiteColor];
    }
    [self.view addSubview:headerLabel];
    
    
    //Semi Auto Header
    semiAutoHeaderLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 40.0f, 320.0f, 30.0f)];
    if (semiAutoHeaderLabel != nil)
    {
        semiAutoHeaderLabel.text = @"Semi Automatic Rifle";
        semiAutoHeaderLabel.textColor = [UIColor blackColor];
        semiAutoHeaderLabel.textAlignment = NSTextAlignmentCenter;
        semiAutoHeaderLabel.backgroundColor = [UIColor whiteColor];
    }
    [self.view addSubview:semiAutoHeaderLabel];

    
    //Instance of semiAuto
    semiAuto *thisSemiAuto = (semiAuto *)[WeaponFactory CreateWeapon:SEMIAUTORIFLE];
    
    //Semi Automatic Info
    semiAutoInfoLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 72.0f, 320.0f, 100.0f)];
    if (semiAutoInfoLabel != nil)
    {
        semiAutoInfoLabel.text = [NSString stringWithFormat:@"The semi automatic rifle I own is made by %@ the model is %@. With attachments I paid a total of: $%d. It will cost me $%d to operate this weapon.", [thisSemiAuto maker],[thisSemiAuto model], [thisSemiAuto TotalCostOfWeapon], [thisSemiAuto OperationCost]];
        semiAutoInfoLabel.textColor = [UIColor blackColor];
        semiAutoInfoLabel.textAlignment = NSTextAlignmentCenter;
        semiAutoInfoLabel.backgroundColor = [UIColor redColor];
        semiAutoInfoLabel.numberOfLines = 5;
    }
    
    [self.view addSubview:semiAutoInfoLabel];
    
    
    //Pistol Header
    pistolHeaderLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 182.0f, 320.0f, 30.0f)];
    if (pistolHeaderLabel != nil)
    {
        pistolHeaderLabel.text = @"Pistol";
        pistolHeaderLabel.textColor = [UIColor blackColor];
        pistolHeaderLabel.textAlignment = NSTextAlignmentCenter;
        pistolHeaderLabel.backgroundColor = [UIColor whiteColor];
    }
    [self.view addSubview:pistolHeaderLabel];
    
    //Instance of semiAuto
    Pistol *thisPistol = (Pistol *)[WeaponFactory CreateWeapon:PISTOLHANDGUN];
    
    //Semi Automatic Info
    semiAutoInfoLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 214.0f, 320.0f, 100.0f)];
    if (semiAutoInfoLabel != nil)
    {
        semiAutoInfoLabel.text = [NSString stringWithFormat:@"The pistol I purchased is made by %@ the model is %@. With attachments I paid a total of: $%d. It cost $%d to operate operate this pistol.", [thisPistol maker],[thisPistol model], [thisPistol TotalCostOfWeapon], [thisPistol OperationCost]];
        semiAutoInfoLabel.textColor = [UIColor blackColor];
        semiAutoInfoLabel.textAlignment = NSTextAlignmentCenter;
        semiAutoInfoLabel.backgroundColor = [UIColor redColor];
        semiAutoInfoLabel.numberOfLines = 5;
    }
    
    [self.view addSubview:semiAutoInfoLabel];
    
    
    //Rifle Header
    rifleHeaderLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 324.0f, 320.0f, 30.0f)];
    if (rifleHeaderLabel != nil)
    {
        rifleHeaderLabel.text = @"Hunting Rifle";
        rifleHeaderLabel.textColor = [UIColor blackColor];
        rifleHeaderLabel.textAlignment = NSTextAlignmentCenter;
        rifleHeaderLabel.backgroundColor = [UIColor whiteColor];
    }
    [self.view addSubview:rifleHeaderLabel];
    
    //Rifle Instance
    Rifle *thisRifle = (Rifle *) [WeaponFactory CreateWeapon: HUNTINGRIFLE];
    
    //Rifle Info
    rifleInfoLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 356.0f, 320.0f, 100.0f)];
    if (rifleInfoLabel != nil)
    {
        rifleInfoLabel.text = [NSString stringWithFormat:@"The rifle I purchased is made by %@ the model is %@. With attachments I paid a total of: $%d. It will cost me $%d to operate this rifle.", [thisRifle maker],[thisRifle model], [thisRifle TotalCostOfWeapon], [thisRifle OperationCost]];
        rifleInfoLabel.textColor = [UIColor blackColor];
        rifleInfoLabel.textAlignment = NSTextAlignmentCenter;
        rifleInfoLabel.backgroundColor = [UIColor redColor];
        rifleInfoLabel.numberOfLines = 5;
    }
    
    [self.view addSubview:rifleInfoLabel];
    
    
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
