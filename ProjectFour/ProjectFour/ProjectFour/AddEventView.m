//
//  AddEventView.m
//  ProjectThree
//
//  Created by Dale Tupling on 3/18/13.
//  Copyright (c) 2013 Dale Tupling. All rights reserved.
//

#import "AddEventView.h"


@interface AddEventView ()

@end

@implementation AddEventView

@synthesize delegate;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
        delegate = nil;
    }
    return self;
}


- (void)viewDidLoad
{
    //Set Date minimum on viewDidLoad
    [datePicker setMinimumDate:[NSDate date]];

    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Close Keyboard Action
-(IBAction)closeKeyboard:(id)sender
{

    if (closeKeyboard.tag == 0)
    {
        [eventTextField resignFirstResponder];

    }
}


//Action for Date Change
-(IBAction)onChange:(id)sender
{

    
    if (datePicker != nil)
    {

        //On Date change set to formatted Date
        eventDate = formattedDate;
        
        NSLog(@"Date=%@", [datePicker date]);
    }
}

//Save Event
-(IBAction)saveEvent:(id)sender
{

    if(delegate != nil)
    {
        if(eventTextField.text.length == 0)
        {
            UIAlertView *noTextAlert = [[UIAlertView alloc] initWithTitle:@"No Event Title"
                                                                  message:@"You must enter a valid event title."
                                                                 delegate:nil
                                                        cancelButtonTitle:@"OK"
                                                        otherButtonTitles: nil];
            [noTextAlert show];
        }
        else if (eventTextField.text.length >= 1)
        {
        //Collect EventText
        eventText = eventTextField.text;
            
        //Formate Date
        NSDateFormatter *dateFormat = [[NSDateFormatter alloc]init];
        [dateFormat setDateFormat:@"MMMM dd,yyyy hh:mm a"];
        formattedDate = [dateFormat stringFromDate:datePicker.date];
        [datePicker setDate:[NSDate date]];
            
        //Collect Formated date place into eventDate
        eventDate = formattedDate;
        
        //Designated string format event
        NSString *detailsText = [NSString stringWithFormat:@"New Event: %@\n%@\n\n", eventText, eventDate];
        
        //Pass detailsText
        [delegate eventDetail:detailsText];
        
        [self dismissViewControllerAnimated:TRUE completion:nil];
        }
    }
    

}

-(IBAction)cancelEvent:(id)sender
{
    
    if(delegate != nil)
    {
        
        [self dismissViewControllerAnimated:TRUE completion:nil];
    }
    
    
}
@end
