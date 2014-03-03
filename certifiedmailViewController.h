//
//  certifiedmailViewController.h
//  certifiedmail
//
//  Created by deemsys on 2/25/14.
//  Copyright (c) 2014 deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BlockAlertView.h"
#import "BlockBackground.h"
#import "BlockUI.h"


@interface certifiedmailViewController :UIViewController<UITextViewDelegate>

{
    int a;
 
    NSMutableDictionary *recorddict;
    NSString *temp1,*temp2,*temp3,*temp4,*temp5,*temp6,*temp7,*temp8,*temp9;
    IBOutlet UITextField *insurancecompany;

    IBOutlet UITextView *insadd;
    IBOutlet UITextField *date;

    IBOutlet UITextView *attadd;
    IBOutlet UITextField *attorney;


    IBOutlet UITextField *patientname;
    IBOutlet UITextView *patadd;
    IBOutlet UITextField *amt1;
    IBOutlet UITextField *amt2;


    IBOutlet UITextField *sign;
    IBOutlet UITextView *sample;

}
@property(retain, nonatomic)NSMutableDictionary *recorddict;
@property (strong, nonatomic) IBOutlet UITextField *insurancecompany;
@property (strong, nonatomic) IBOutlet UITextView *insadd;

@property (strong, nonatomic) IBOutlet UITextField *attorney;

@property (strong, nonatomic) IBOutlet UITextView *attadd;
@property (strong, nonatomic) IBOutlet UITextField *patientname;
@property (strong, nonatomic) IBOutlet UITextView *patadd;
@property (strong, nonatomic) IBOutlet UITextField *amt1;
@property (retain, nonatomic) IBOutlet UITextField *sign;


@property (strong, nonatomic) IBOutlet UITextField *amt2;
@property (strong, nonatomic) IBOutlet UITextField *date;


@end
