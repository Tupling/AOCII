//
//  ViewController.m
//  projectOne
//
//  Created by Dale Tupling on 3/5/13.
//  Copyright (c) 2013 Dale Tupling. All rights reserved.
//

#import "ViewController.h"
#import "WeaponFactory.h"
#import "InfoViewController.h"



@interface ViewController ()



@end

@implementation ViewController


- (void)viewDidLoad
{


   //Tap screen to make keyboard disappear
    UITapGestureRecognizer *tapOnScreen = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(keyboardDisappear)];
    
    //set to NO, so not all touches are cancelled. If set to YES User will not be able to touch ShowDate or Info Buttons
    tapOnScreen.cancelsTouchesInView = NO;
    [self.view addGestureRecognizer:tapOnScreen];
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}



//Change Background Segment Control
-(IBAction)onSelected:(id)sender
{
    
    UISegmentedControl *backGroundColor = (UISegmentedControl*)sender;
    
    if(backGroundColor != nil)
    {
        int bgSelectionIndex = backGroundColor.selectedSegmentIndex;
        
        if(bgSelectionIndex == 0)
        {
            self.view.backgroundColor = [UIColor whiteColor];
        }
        else if (bgSelectionIndex == 1)
        {
            self.view.backgroundColor = [UIColor grayColor];
        }
        else
        {
            self.view.backgroundColor = [UIColor orangeColor];
        }
    }
    
}


//Onclick Method for Selected Weapon Buttons and Calculate Cost
-(IBAction)onClick:(id)sender
{
    UIButton *weaponButton = (UIButton *)sender;
    

    int quanity = stepperControl.value;
    

    if (weaponButton.tag == 0)
    {
        semiAutoButton.enabled = false;
        pistolButton.enabled = true;
        rifleButton.enabled = true;
        textField.text = [NSString stringWithFormat:@"%d - Colt AR-15", quanity];
        

    }
    else if (weaponButton.tag == 1)
    {
        pistolButton.enabled = false;
        semiAutoButton.enabled = true;
        rifleButton.enabled = true;
        textField.text = [NSString stringWithFormat:@"%d - Springfield XDM 45", quanity];
    }
    else if (weaponButton.tag == 2)
    {
        rifleButton.enabled = false;
        pistolButton.enabled = true;
        semiAutoButton.enabled = true;
        textField.text = [NSString stringWithFormat:@"%d - Marlin X7", quanity];
    }
}

//Set and display value of Stepper in TextField
-(IBAction)stepUp:(id)sender
    
{
    //stepperControle Value variable
    int quanity = stepperControl.value;
    
    
    //Place for stepper value to be displayed depending on which button is disabled
    if (semiAutoButton.enabled == false)
    {
        textField.text = [NSString stringWithFormat:@"%d - Colt AR-15", quanity];
    }
    
    if (pistolButton.enabled == false)
    {
        textField.text = [NSString stringWithFormat:@"%d - Springfield XDM 45", quanity];
    }
    
    if (rifleButton.enabled == false)
    {
        textField.text = [NSString stringWithFormat:@"%d - Marlin X7", quanity];
    }
}


//Calculate total cost of desired weapon amount
-(IBAction)calculateTotal:(id)sender
{
    
    //Instances
    semiAuto *thisSemiAuto = (semiAuto *)[WeaponFactory CreateWeapon:SEMIAUTORIFLE];
    Pistol *thisPistol = (Pistol*)[WeaponFactory CreateWeapon:PISTOLHANDGUN];
    Rifle *thisRifle = (Rifle*)[WeaponFactory CreateWeapon:HUNTINGRIFLE];
    
    //Vairable for stepperControle Value
    int weaponQuanity = stepperControl.value;
    
    
    //Calculate Semi Auto data
    if (semiAutoButton.enabled == false)
    {
        int totalQuanityCost = [thisSemiAuto TotalCostOfWeapon] * weaponQuanity;
        
        //Display different text depending on quanity user wants
            if(stepperControl.value > 1)
            {
                textField.text = [NSString stringWithFormat:@"%d - %@'s cost $%d", weaponQuanity, [thisSemiAuto model], totalQuanityCost];
            
            }
            else
            {
                textField.text = [NSString stringWithFormat:@"%d - %@ cost $%d", weaponQuanity, [thisSemiAuto model], totalQuanityCost];
            }
        
        //Reset Stepper Value
        stepperControl.value = 1;
    }
    
    //Calculate Pistol Data
    if (pistolButton.enabled == false)
    {
        int totalQuanityCost = [thisPistol TotalCostOfWeapon] * weaponQuanity;
        
            //Display different text depending on quanity user wants
            if(stepperControl.value > 1)
            {
                textField.text = [NSString stringWithFormat:@"%d - %@'s cost $%d", weaponQuanity, [thisPistol model], totalQuanityCost];
            }
            else
            {
                textField.text = [NSString stringWithFormat:@"%d - %@ cost $%d", weaponQuanity, [thisPistol model], totalQuanityCost];
            }
        
        //Reset Stepper Value
        stepperControl.value = 1;
    }
    
    //Calculate Rifle Data
    if (rifleButton.enabled == false)
    {
        int totalQuanityCost = [thisRifle TotalCostOfWeapon] * weaponQuanity;
        
            //Display different text depending on quanity user wants
            if(stepperControl.value > 1)
            {
                textField.text = [NSString stringWithFormat:@"%d - %@'s cost $%d", weaponQuanity,[thisRifle model], totalQuanityCost];
            }
            else
            {
                textField.text = [NSString stringWithFormat:@"%d - %@ cost $%d", weaponQuanity, [thisRifle model], totalQuanityCost];
            }
    }
}

//Action to view Information View
-(IBAction)viewInfo:(id)sender
{
    InfoViewController *infoController = [[InfoViewController alloc] initWithNibName:@"InfoView" bundle:nil];
    if (infoController != nil)
    {
        [self presentViewController:infoController animated:YES completion:nil];
    }
}





- (void)keyboardDisappear {
    
    [self.view endEditing:YES];
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
