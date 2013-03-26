//
//  MainViewController.m
//  ProjectThree
//
//  Created by Dale Tupling on 3/17/13.
//  Copyright (c) 2013 Dale Tupling. All rights reserved.
//

#import "MainViewController.h"


@interface MainViewController ()

@end

@implementation MainViewController



- (void)viewDidLoad
{
    //Check for objects in UserDefaults
    if([[NSUserDefaults standardUserDefaults] objectForKey:@"events"] != nil)
    {
        NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
        if (userDefaults != nil)
            {
                NSString *userEvents = [userDefaults objectForKey:@"events"];
                eventTextView.text = userEvents;
            }
    }
    //if nothing exist show default text in text view
    else if ([[NSUserDefaults standardUserDefaults] objectForKey:@"events"] == nil)
        {
            eventTextView.text = @"All the events go here...";
        }


    //Set swipe gesture direction alloc and init
    rightSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(addEvent:)];
    rightSwipe.direction = UISwipeGestureRecognizerDirectionRight;
    [swipeRightLabel addGestureRecognizer:rightSwipe];
    
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}


//Clear Events 
-(IBAction)clearEvents:(id)sender
{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    if (userDefaults != nil)
        {
            [[NSUserDefaults standardUserDefaults] removeObjectForKey:@"events"];
            eventTextView.text = @"All the events go here...";
        }
}


//Save Events
-(IBAction)saveEvents:(id)sender
{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    if (userDefaults != nil)
        {
            NSString *userEvents = eventTextView.text;
            [userDefaults setObject:userEvents forKey:@"events"];
            
            //Save userDefaults data and ensures any modifications are saved to userDefaults
            [userDefaults synchronize];
        }
}

//Access Add Event View
-(void)addEvent:(UISwipeGestureRecognizer*)recognizer
{
    if (recognizer.direction == UISwipeGestureRecognizerDirectionRight)
        {
            AddEventView *addEventController = [[AddEventView alloc] initWithNibName:@"AddEventView" bundle:nil];
            if (addEventController != nil)
                {
                    [addEventController setDelegate:self];
                    [self presentViewController:addEventController animated:YES completion:nil];
                }
        }
}


//Gather/Display event Details from AddEvent View
-(void)eventDetail:(NSString *)detailsText
{
    NSString *eventString = detailsText;
  
    //If no content in Text View add Details
    if([eventTextView.text isEqualToString:@"All the events go here..."])
        {
            eventTextView.text = detailsText;
            //NSLog(@"%@", detailsText);
        }
    else
        {
            //Append New Events to previous list
            eventTextView.text = [eventTextView.text stringByAppendingString:eventString];
        }
}


@end
