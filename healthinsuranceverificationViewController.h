//
//  healthinsuranceverificationViewController.h
//  EHR
//
//  Created by DeemSysInc on 15/10/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TextFieldDatePicker.h"
@interface healthinsuranceverificationViewController : UIViewController<TextFieldDatePickerDelegate>
{
    IBOutlet UILabel * healthinsuranceswitchlabel;
    IBOutlet UITextField * patientname;
    IBOutlet UITextField * accidentdate;
    IBOutlet UISwitch * healthinsuranceswitch;
    IBOutlet UITextField * employersname;
    IBOutlet UITextField * insurancecompany;
    IBOutlet UITextField * insurancephone;
    IBOutlet UITextField * policy;
    IBOutlet UITextField * group;
    IBOutlet UITextField * supplement;
    IBOutlet UITextField * supplementphone;
    IBOutlet UITextField * patientsign;
    IBOutlet UITextField * patientsigndate;
    IBOutlet UITextField * guardsign;
    IBOutlet UITextField * guardsigndate;
    NSMutableDictionary * recorddict;
    
    
}
-(IBAction)insuranceswitchchange:(id)sender;
-(IBAction)submit:(id)sender;
-(IBAction)reset:(id)sender;
@property (nonatomic,retain) UISwitch * healthinsuranceswitch;
@property(nonatomic,retain) NSMutableDictionary * recorddict;
@property(nonatomic,retain) UILabel * healthinsuranceswitchlabel;

@end
