//
//  AddEventView.h
//  ProjectThree
//
//  Created by Dale Tupling on 3/18/13.
//  Copyright (c) 2013 Dale Tupling. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol AddEventViewDelegate <NSObject>

@required
-(void)eventDetail:(NSString *)detailsText;


@end
@interface AddEventView : UIViewController <UITextFieldDelegate, UIPickerViewDelegate>
{
    //Outlets TextField and Date Picker
    IBOutlet UITextField *eventTextField;
    IBOutlet UIDatePicker *datePicker;
    IBOutlet UILabel *swipeLeftLabel;
    
    //Public Instances
    NSString *eventText;
    NSString *eventDate;
    NSString *formattedDate;
    UIButton *save;
    UIButton *closeKeyboard;
    
    //Swipe Gesture Recognizer
    UISwipeGestureRecognizer *leftSwipe;

    
    id<AddEventViewDelegate> delegate;
}




@property (strong) id<AddEventViewDelegate> delegate;

@end
