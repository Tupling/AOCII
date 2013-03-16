//
//  InfoViewController.m
//  projectTwo
//
//  Created by Dale Tupling on 3/12/13.
//  Copyright (c) 2013 Dale Tupling. All rights reserved.
//

#import "InfoViewController.h"


@interface InfoViewController ()

@end

@implementation InfoViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
//Send Email Method
- (IBAction)sendEmail:(id)sender
{
    //Set content for mail attributes
    NSString *subjectLine = @"I would like to contact Dale Tupling";
    
    //default message is blank
    NSString *message = @"";
    
    NSArray *toContact = [NSArray arrayWithObject:@"tupling@fullsail.edu"];
    
    //Allocate and Initialize Mail View Controller
    MFMailComposeViewController *mailController = [[MFMailComposeViewController alloc] init];
    mailController.mailComposeDelegate = self;
    
    
    //Assign mail controller attributes to pre dertemined content
    [mailController setSubject:subjectLine];
    [mailController setMessageBody:message isHTML:NO];
    [mailController setToRecipients:toContact];
    
    [self presentViewController:mailController animated:YES completion:nil];
    
     
     }
//Dismiss the Mail View Controller
- (void) mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error
{
    switch (result)
    {
            //Response to message canel
        case MFMailComposeResultCancelled:
        {
            UIAlertView *deleteAlert = [[UIAlertView alloc] initWithTitle:@"Draft Deleted"
                                                            message:@"Your draft email has been deleted"
                                                           delegate:nil
                                                  cancelButtonTitle:@"OK"
                                                  otherButtonTitles: nil];
            [deleteAlert show];
        }
            break;
            //Response to message saved
        case MFMailComposeResultSaved:
        {
            UIAlertView *saveAlert = [[UIAlertView alloc] initWithTitle:@"Draft Saved"
                                                                  message:@"Your draft email has been saved"
                                                                 delegate:nil
                                                        cancelButtonTitle:@"OK"
                                                        otherButtonTitles: nil];
            [saveAlert show];
        }
            break;
            //Response to message sent
        case MFMailComposeResultSent:
        {
            UIAlertView *sentAlert = [[UIAlertView alloc] initWithTitle:@"Email Sent"
                                                                  message:@"Your email has been sent"
                                                                 delegate:nil
                                                        cancelButtonTitle:@"OK"
                                                        otherButtonTitles: nil];
            [sentAlert show];
        }
            break;
            //Response to message failure
        case MFMailComposeResultFailed:
        {
            UIAlertView *deleteAlert = [[UIAlertView alloc] initWithTitle:@"Failure"
                                                                  message:[error localizedDescription]
                                                                 delegate:nil
                                                        cancelButtonTitle:@"OK"
                                                        otherButtonTitles: nil];
            [deleteAlert show];
        }
            break;
        default:
            break;
    }
    // Close the Mail Interface
    [self dismissViewControllerAnimated:YES completion:NULL];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)goBack:(id)sender;
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
