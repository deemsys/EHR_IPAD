//
//  schoolslipViewController.h
//  schoolslip
//
//  Created by Admin on 28/02/14.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BlockBackground.h"
#import "BlockAlertView.h"
#import "BlockUI.h"
#import "TextFieldDatePicker.h"


@interface schoolslipViewController : UIViewController<TextFieldDatePickerDelegate>
{
    IBOutlet UITextField *date;
    IBOutlet UITextField *name;
    IBOutlet UITextField *excuse;
    IBOutlet UITextField *confine;
    IBOutlet UIButton *b1;
    IBOutlet UIButton *b2;
    IBOutlet UIButton *b3;
    IBOutlet UIButton *b4;
    IBOutlet UIButton *b5;
    IBOutlet UIButton *b6;
    IBOutlet UIButton *b7;
    IBOutlet UIButton *b8;
    IBOutlet UIButton *b9;
    IBOutlet UIButton *b10;
    int a;
    IBOutlet UITextField *from;
    IBOutlet UITextField *to;
    IBOutlet UITextField *ret;
    IBOutlet UITextField *ondate;
    IBOutlet UITextField *diagn;
    
    IBOutlet UISegmentedControl *seg1;
    IBOutlet UISegmentedControl *seg2;
    IBOutlet UISegmentedControl *seg3;
    IBOutlet UISegmentedControl *seg4;
    IBOutlet UISegmentedControl *seg5;
    IBOutlet UISegmentedControl *seg6;
    IBOutlet UISegmentedControl *seg7;
    NSString *dri;
    NSString*beexc;
    NSString *becon;
    NSString *max;
    NSString *low;
    NSString *sit;
    NSString *stan;
    
    NSString *rep;
    NSString *cau;
    NSString*light;
    NSString *excused;
    NSString *confined;
    NSString *maximum;
    NSString *lo;
    NSString *sitting;
    NSString *standing;
    NSString *retu;
    NSString *temp1,*temp2,*temp3,*temp4,*temp5,*temp6,*temp7,*temp8,*temp9;
    NSMutableDictionary *recorddict;
    
    
    
    
}
@property(nonatomic,retain)NSMutableDictionary *recorddict;
@end
