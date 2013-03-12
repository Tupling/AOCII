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
    
}

- (void)viewDidLoad
{

    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
