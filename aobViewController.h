//
//  aobViewController.h
//  EHR
//
//  Created by DeemSysInc on 16/10/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TextFieldDatePicker.h"
@interface aobViewController : UIViewController<TextFieldDatePickerDelegate>
{
    NSMutableDictionary * RECORDDICT;
    IBOutlet UITextField * day;
    IBOutlet UITextField * year;
    IBOutlet UITextField * nextday;
    IBOutlet UITextField * patientname;
    IBOutlet UITextField * patientsign;
    IBOutlet UITextField * custodialparent;
    IBOutlet UITextField * guardsign;
    IBOutlet UITextField * perrychiro;
    IBOutlet UITextField * date1;
    IBOutlet UITextField * date2;
    IBOutlet UITextField * date3;
      IBOutlet UITextField * newy;
}

-(IBAction)submit:(id)sender;
-(IBAction)reset:(id)sender;
@property(nonatomic ,retain)NSMutableDictionary * recorddict;
@end
