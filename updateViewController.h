//
//  updateViewController.h
//  update
//
//  Created by Admin on 28/02/14.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//
#import <UIKit/UIKit.h>
#import "BlockBackground.h"
#import "BlockAlertView.h"
#import "BlockUI.h"
#import "TextFieldDatePicker.h"


@interface updateViewController : UIViewController<UITextViewDelegate,TextFieldDatePickerDelegate>
{
    IBOutlet UITextView *attorney;
    IBOutlet UITextField *regards;
    IBOutlet UITextField *injury;
    IBOutlet UITextField *date;
    NSMutableDictionary *recorddict;
    NSString *temp1,*temp2,*temp3,*temp4;
    int a;
}
@property(nonatomic,retain)NSMutableDictionary *recorddict;
@end
