//
//  physicalexamViewController.h
//  EHR
//
//  Created by DeemSysInc on 26/10/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//
#import <UIKit/UIKit.h>
#import "BlockBackground.h"
#import "BlockAlertView.h"
#import "BlockUI.h"


@interface physicalexamViewController : UIViewController
{
    IBOutlet UITextField *physiciansign;

    IBOutlet UITextField *sex;
    IBOutlet UITextField *patname;

    IBOutlet UITextField *patid;
    IBOutlet UITextField *date;
    IBOutlet UITextField *vitalsage;

    IBOutlet UITextField *weight;
    IBOutlet UITextField *height;

    IBOutlet UITextField *temp;

    IBOutlet UITextField *pulse;
    IBOutlet UITextField *bp;
     NSMutableDictionary *recorddict;
    IBOutlet UISegmentedControl *appearance;
    IBOutlet UISegmentedControl *gait;
    IBOutlet UISegmentedControl *weightseg;
    IBOutlet UISegmentedControl *posture;
    IBOutlet UISegmentedControl *visceral;
    IBOutlet UISegmentedControl *head;
    IBOutlet UISegmentedControl *romberg;
    IBOutlet UISegmentedControl *cnexam;
    IBOutlet UITextField *abnormalfind;
}
@property(nonatomic,retain)NSMutableDictionary*recorddict;
- (IBAction)seg8:(id)sender;
- (IBAction)seg7:(id)sender;
- (IBAction)seg6:(id)sender;
- (IBAction)seg1:(id)sender;

- (IBAction)seg3:(id)sender;
- (IBAction)seg2:(id)sender;
- (IBAction)seg4:(id)sender;
- (IBAction)seg5:(id)sender;

- (IBAction)submit:(id)sender;

@end
