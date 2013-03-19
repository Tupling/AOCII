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

//Access Add Event View
-(IBAction)addEvent:(id)sender
{
    AddEventView *addEventController = [[AddEventView alloc] initWithNibName:@"AddEventView" bundle:nil];
    if (addEventController != nil)
    {
            [addEventController setDelegate:self];
        [self presentViewController:addEventController animated:YES completion:nil];
    }
}


//Gather/Display event Details from AddEvent View
-(void)eventDetail:(NSString *)detailsText
{
    NSString *eventString = detailsText;
  
    //If no content in Text View add Details
    if([eventTextView.text isEqualToString:@""])
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
