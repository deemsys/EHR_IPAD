//
//  narrativeViewController.h
//  narrative
//
//  Created by deemsys on 2/26/14.
//  Copyright (c) 2014 deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BlockAlertView.h"
#import "BlockBackground.h"
#import "BlockUI.h"
#import "TextFieldDatePicker.h"

@interface narrativeViewController : UIViewController<UITextFieldDelegate,TextFieldDatePickerDelegate>
{
    int a;
    NSMutableDictionary *recorddict;
    NSString *temp2,*temp3,*temp4,*temp5,*temp6,*temp8,*temp9,*temp10,*temp11,*temp12,*temp13,*temp14,*temp15,*temp16,*temp17,*temp18,*temp19,*temp20;

    IBOutlet UISegmentedControl *s2;
    IBOutlet UILabel *patname;
    IBOutlet UILabel*patname2;
    IBOutlet UISegmentedControl *s1;
 
    IBOutlet UITextField *reportdate;
    IBOutlet UITextField *dateofvisit;
    IBOutlet UITextField *dateofinjury;
    IBOutlet UITextField *patientname;
 
    IBOutlet UITextField *text2;
    IBOutlet UITextField *text6;
    IBOutlet UITextField *to;

    IBOutlet UITextField *accon1;
   
    IBOutlet UITextField *examon;
    IBOutlet UITextField *accon;
    IBOutlet UITextField *text3;

    IBOutlet UITextField *text4;

    IBOutlet UITextField *text5;
    
    
    IBOutlet UITextField *text8;
    IBOutlet UITextField *text9;

    IBOutlet UITextField *text10;
    NSString *s1l;
    NSString *s2l;
    NSString *indexresult;
    NSString *gender;
    NSString *wasnotlabel;
}

@property (retain, nonatomic) IBOutlet UISegmentedControl *s1;
@property (retain, nonatomic) IBOutlet UILabel *narra;
@property (retain, nonatomic) IBOutlet UILabel *gen1;
@property (retain, nonatomic) IBOutlet UILabel *gen2;
@property (retain, nonatomic) IBOutlet UILabel *gen3;
@property (retain, nonatomic) IBOutlet UILabel *gen4;
@property (retain, nonatomic) IBOutlet UILabel *gen5;
@property (retain, nonatomic) IBOutlet UILabel *gen6;
@property (retain, nonatomic) IBOutlet UILabel *gen7;
@property (retain, nonatomic) IBOutlet UILabel *gen8;

@property (retain, nonatomic) IBOutlet UILabel *index1;
@property (retain, nonatomic) IBOutlet UILabel *index2;
@property (retain, nonatomic) IBOutlet UISegmentedControl *wasnot;
@property (retain, nonatomic) IBOutlet UILabel *his8;
@property (retain, nonatomic) IBOutlet UILabel *his9;
@property (retain, nonatomic) IBOutlet UILabel *index3;
@property (retain, nonatomic) IBOutlet UILabel *index4;





@property (retain, nonatomic) IBOutlet UILabel *his;
@property (retain, nonatomic) IBOutlet UILabel *his1;
@property (retain, nonatomic) IBOutlet UILabel *his2;
@property (retain, nonatomic) IBOutlet UILabel *his3;
@property (retain, nonatomic) IBOutlet UILabel *his4;
@property (retain, nonatomic) IBOutlet UILabel *his5;
@property (retain, nonatomic) IBOutlet UILabel *his6;
@property (retain, nonatomic) IBOutlet UILabel *his7;

@property (retain, nonatomic) IBOutlet UISegmentedControl *s2;
@property (retain, nonatomic) IBOutlet UISegmentedControl *gend;
@property (retain, nonatomic) IBOutlet UILabel *patname3;
@property (retain, nonatomic) IBOutlet UILabel *patname4;

@property (retain, nonatomic) IBOutlet UILabel *patname;
@property (retain, nonatomic) IBOutlet UILabel *history;
@property (retain, nonatomic) IBOutlet UILabel *patname2;

@property(retain, nonatomic)NSMutableDictionary *recorddict;
@property (strong, nonatomic) IBOutlet UITextField *text5;
@property (retain, nonatomic) IBOutlet UITextField *dateofvisit;
@property (retain, nonatomic) IBOutlet UITextField *to;

@property (retain, nonatomic) IBOutlet UITextField *text3;

@property (retain, nonatomic) IBOutlet UITextField *accon;

@property (strong, nonatomic) IBOutlet UITextField *text4;
@property (retain, nonatomic) IBOutlet UISegmentedControl *index;

@property (strong, nonatomic) IBOutlet UITextField *text6;

@property (strong, nonatomic) IBOutlet UITextField *text2;
@property (strong, nonatomic) IBOutlet UITextField *text8;
@property (retain, nonatomic) IBOutlet UILabel *precom;

@property (strong, nonatomic) IBOutlet UITextField *text9;
@property (strong, nonatomic) IBOutlet UITextField *text10;

@property (retain, nonatomic) IBOutlet UITextField *accon1;

@property (retain, nonatomic) IBOutlet UITextField *examon;

@property (retain, nonatomic) IBOutlet UITextField *dateofinjury;

@property (retain, nonatomic) IBOutlet UITextField *patientname;
@property (retain, nonatomic) IBOutlet UITextField *reportdate;

@end
