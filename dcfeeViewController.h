//
//  dcfeeViewController.h
//  dcfee
//
//  Created by Admin on 05/02/14.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BlockAlertView.h"
#import "BlockBackground.h"
#import "BlockUI.h"

#import "TextFieldDatePicker.h"
@interface dcfeeViewController : UIViewController<UIAlertViewDelegate,TextFieldDatePickerDelegate>
{
      NSString *temp1,*temp2,*temp3,*temp4,*temp5,*temp6,*temp7,*temp8,*temp9,*temp10,*temp11,*temp12,*temp13,*temp14,*temp15,*temp16,*temp17,*temp18,*temp19,*temp20,*temp21,*temp22,*temp23,*temp24,*temp25,*temp26,*temp27,*temp28,*temp29,*temp30,*temp31,*temp32,*temp33,*temp34,*temp35,*temp36,*temp37,*temp38,*temp39,*temp40,*temp41,*temp42,*temp43,*temp44,*temp45,*temp46,*temp47,*temp48,*temp49,*temp50,*temp51;
    NSMutableDictionary *recorddict;
    int c;
    float calc;
    IBOutlet UITextField *limited;
    IBOutlet UITextField *expanded;
    IBOutlet UITextField *detailed;
    
 
    IBOutlet UITextField *page1;
    IBOutlet UITextField *consultationcomp;
    IBOutlet UITextField *intermediate;
    IBOutlet UITextField *brief;
    IBOutlet UITextField *consultcomp;
    IBOutlet UITextField *consultdetail;
    IBOutlet UITextField *consultexp;
    IBOutlet UITextField *refcomp;
    IBOutlet UITextField *refdetail;
    IBOutlet UITextField *refexp;
    IBOutlet UITextField *comp;
    IBOutlet UITextField *detail;
    IBOutlet UITextField *exp;
    IBOutlet UITextField *ltd;
    IBOutlet UITextField *extended;
}
@property (strong, nonatomic) IBOutlet UITextField *patientid;
@property (strong, nonatomic) IBOutlet UITextField *patientname;
@property (strong, nonatomic) IBOutlet UITextField *physicianname;
@property (strong, nonatomic) IBOutlet UITextField *rpt;
@property (strong, nonatomic) IBOutlet UITextField *date;
@property (strong, nonatomic) IBOutlet UITextField *pta;
@property (strong, nonatomic) IBOutlet UITextField *limited;
@property (strong, nonatomic) IBOutlet UITextField *expanded;
@property (strong, nonatomic) IBOutlet UITextField *detailed;
@property (strong, nonatomic) IBOutlet UITextField *extended;
@property (strong, nonatomic) IBOutlet UITextField *ltd;
@property (strong, nonatomic) IBOutlet UITextField *exp;
@property (strong, nonatomic) IBOutlet UITextField *detail;
@property (strong, nonatomic) IBOutlet UITextField *comp;
@property (strong, nonatomic) IBOutlet UITextField *refexp;
@property (strong, nonatomic) IBOutlet UITextField *refdetail;
@property (strong, nonatomic) IBOutlet UITextField *refcomp;
@property (strong, nonatomic) IBOutlet UITextField *consultexp;
@property (strong, nonatomic) IBOutlet UITextField *consultdetail;
@property (strong, nonatomic) IBOutlet UITextField *consultcomp;
@property (strong, nonatomic) IBOutlet UITextField *brief;
@property (strong, nonatomic) IBOutlet UITextField *intermediate;
@property (strong, nonatomic) IBOutlet UITextField *consultationcomp;
@property (retain, nonatomic) IBOutlet UITextField *page1;
@property(retain, nonatomic)NSMutableDictionary *recorddict;


- (IBAction)next:(id)sender;

@end
