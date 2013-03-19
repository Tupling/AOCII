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
    //Set Date Attributes
    NSDate *minimum = [NSDate date];
    datePicker.minimumDate = minimum;
    eventDate = [NSDate date];
    
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

}


//Action for Date Change
-(IBAction)onChange:(id)sender
{

    
    if (datePicker != nil)
    {

        NSDateFormatter *dateFormat = [[NSDateFormatter alloc]init];
        [dateFormat setDateFormat:@"EEEE, MMMM dd,yyyy hh:mm a"];
        formattedDate = [dateFormat stringFromDate:datePicker.date];
        
        eventDate = formattedDate;
        
        //NSLog(@"Date=%@", [datePicker date]);
    }
}

//Save Event
-(IBAction)saveEvent:(id)sender
{

    if(delegate != nil)
    {
        //Collect EventText and Event Date
        eventText = eventTextField.text;
        eventDate = formattedDate;
        
        //Designated string format event
        NSString *detailsText = [NSString stringWithFormat:@"New Event: %@\n%@\n\n", eventText, eventDate];
        
        //Pass detailsText
        [delegate eventDetail:detailsText];
        
        [self dismissViewControllerAnimated:TRUE completion:nil];
    }
    

}
@end
