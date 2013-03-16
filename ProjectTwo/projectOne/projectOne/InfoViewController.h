//
//  InfoViewController.h
//  projectTwo
//
//  Created by Dale Tupling on 3/12/13.
//  Copyright (c) 2013 Dale Tupling. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface InfoViewController : UIViewController <MFMailComposeViewControllerDelegate>

- (IBAction)sendEmail:(id)sender;


@end
