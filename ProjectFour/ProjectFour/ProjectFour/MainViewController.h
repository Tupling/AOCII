//
//  MainViewController.h
//  ProjectThree
//
//  Created by Dale Tupling on 3/17/13.
//  Copyright (c) 2013 Dale Tupling. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddEventView.h"

@interface MainViewController : UIViewController <AddEventViewDelegate>
{
    //Outlet for TextView
    IBOutlet UITextView *eventTextView;



}

//Add Event Button Action
-(IBAction)addEvent:(id)sender;


@end
