//
//  staffautocheckViewController.h
//  EHR
//
//  Created by DeemSysInc on 16/10/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import <UIKit/UIKit.h>
//#import "/usr/include/sqlite3.h"
@interface staffautocheckViewController : UIViewController
{
    NSMutableDictionary * recorddict;
    NSMutableArray * selectforms;
    IBOutlet UIButton * button1;
    IBOutlet UIButton * button2;
    IBOutlet UIButton * button3;
    IBOutlet UIButton * button4;
    IBOutlet UIButton * button5;
    IBOutlet UIButton * button6;
    IBOutlet UIButton * button7;
    IBOutlet UIButton*button8;
    IBOutlet UIButton*button9;
    IBOutlet UIButton*button10;
    IBOutlet UIButton*button11;
    IBOutlet UIButton*button12;
    IBOutlet UIButton*button13;
    IBOutlet UIButton*button14;
    IBOutlet UIButton*button15;
    
    IBOutlet UITextField * patientname;
    IBOutlet UITextField * insuramceattroney;
    IBOutlet UITextField * damageamount;
    IBOutlet UITextField * faultinsurance;
    IBOutlet UITextField * medpay;
    IBOutlet UITextField * botherattroney;
    IBOutlet UITextField * protectionreceived;
    IBOutlet UITextField * billed;
    IBOutlet UITextField * remdate;
    IBOutlet UITextField*patinfo;
        IBOutlet UITextField*screening;
        IBOutlet UITextField*aob;
        IBOutlet UITextField*history;
        IBOutlet UITextField*xray_sheet;
        IBOutlet UITextField*consent;
    IBOutlet UITextField*report;
    IBOutlet UITextField*hiv;
    IBOutlet UITextField*releaseofmed;
    IBOutlet UITextField*hippa;
    IBOutlet UITextField*hardship;
    IBOutlet UITextField*notice;
    IBOutlet UITextField *consenttotreat;
    IBOutlet UITextField *radiologic;
    IBOutlet UITextField*physicalexam;
           
}

-(IBAction)submit:(id)sender;
-(IBAction)reset:(id)sender;
-(IBAction)checkboxSelected:(UIButton*)sender;
@property(nonatomic,retain)NSMutableDictionary * recorddict;
@property(nonatomic,retain)NSMutableArray * selectforms;

@end
