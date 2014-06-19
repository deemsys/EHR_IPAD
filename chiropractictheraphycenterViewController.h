//
//  chiropractictheraphycenterViewController.h
//  chiropractictheraphycenter
//
//  Created by deemsys on 2/26/14.
//  Copyright (c) 2014 deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BlockAlertView.h"
#import "BlockBackground.h"
#import "BlockUI.h"
#import "TextFieldDatePicker.h"

@interface chiropractictheraphycenterViewController : UIViewController<TextFieldDatePickerDelegate>

{
    int a;
    NSMutableDictionary *recorddict;
    NSString *temp1,*temp2;
    
    IBOutlet UITextField *date2;
    IBOutlet UITextField *date1;
    IBOutlet UITextField *dear;

    IBOutlet UITextField *re;
    
    IBOutlet UITextField *date;
    IBOutlet UITextField *ssn;
    
    IBOutlet UITextField *doi;
    
    IBOutlet UITextField *claim;
    IBOutlet UITextField *adjust;
}
@property (strong, nonatomic) IBOutlet UITextField *text1;
@property (retain, nonatomic) IBOutlet UITextField *re;
@property (retain, nonatomic) IBOutlet UITextField *claim;
@property (retain, nonatomic) IBOutlet UITextField *doi;
@property (retain, nonatomic) IBOutlet UITextField *adjust;
@property (retain, nonatomic) IBOutlet UITextField *date1;
@property (retain, nonatomic) IBOutlet UITextField *date2;

@property (retain, nonatomic) IBOutlet UITextField *date;
@property (retain, nonatomic) IBOutlet UITextField *dear;

@property (retain, nonatomic) IBOutlet UITextField *ssn;





@property(retain, nonatomic)NSMutableDictionary *recorddict;
@end
