//
//  staffautocheckViewController.h
//  EHR
//
//  Created by DeemSysInc on 16/10/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "/usr/include/sqlite3.h"
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
           
}

-(IBAction)submit:(id)sender;
-(IBAction)reset:(id)sender;
-(IBAction)checkboxSelected:(UIButton*)sender;
@property(nonatomic,retain)NSMutableDictionary * recorddict;
@property(nonatomic,retain)NSMutableArray * selectforms;

@end
