//
//  ViewController.h
//  projectOne
//
//  Created by Dale Tupling on 3/5/13.
//  Copyright (c) 2013 Dale Tupling. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

{
    IBOutlet UIStepper *stepperControl;
    IBOutlet UITextField *textField;
    IBOutlet UIButton *semiAutoButton;
    IBOutlet UIButton *pistolButton;
    IBOutlet UIButton *rifleButton;
    IBOutlet UIButton *calculateButton;

    
}

-(IBAction)onSelected:(id)sender;
-(IBAction)onClick:(id)sender;
-(IBAction)viewInfo:(id)sender;
-(IBAction)stepUp:(id)sender;
-(IBAction)calculateTotal:(id)sender;

@end
