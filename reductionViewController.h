//
//  reductionViewController.h
//  reduction
//
//  Created by Admin on 27/02/14.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BlockBackground.h"
#import "BlockAlertView.h"
#import "BlockUI.h"
#import "TextFieldDatePicker.h"



@interface reductionViewController : UIViewController<UITextViewDelegate,TextFieldDatePickerDelegate>
{
    int suc;
    IBOutlet UITextField *attorney;
    IBOutlet UITextView *address;
    IBOutlet UITextField *regarding;
    IBOutlet UITextField *dateofacci;
    IBOutlet UITextField *claim;
    IBOutlet UITextField *date;
    IBOutlet UITextField *name;
    NSMutableDictionary *recorddict;
    NSString *temp1,*temp2,*temp3,*temp4,*temp5,*temp6,*temp7,*temp8;
    IBOutlet UITextField *sign;
}
@property(nonatomic,retain)NSMutableDictionary *recorddict;
@end
