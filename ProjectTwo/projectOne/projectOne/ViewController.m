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
        }else if (bgSelectionIndex == 1)
        {
            self.view.backgroundColor = [UIColor grayColor];
        }else
        {
            self.view.backgroundColor = [UIColor orangeColor];
        }
    }
}
//Onclick Method for Selected Weapon Buttons
-(IBAction)onClick:(id)sender
{
    
}

-(IBAction)viewInfo:(id)sender
{
    InfoViewController *infoController = [[InfoViewController alloc] initWithNibName:@"InfoView" bundle:nil];
    if (infoController != nil)
    {
        [self presentViewController:infoController animated:YES completion:nil];
    }
}







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


- (void)keyboardDisappear {
    
    [self.view endEditing:YES];
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
