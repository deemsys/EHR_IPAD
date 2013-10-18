//
//  noticeandrequestViewController.h
//  EHR
//
//  Created by DeemSysInc on 16/10/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface noticeandrequestViewController : UIViewController
{
    IBOutlet UITextField * insurancecompanyname;
    IBOutlet UITextField * address;
    IBOutlet UITextField * patientname;
    IBOutlet UITextField * date;
    IBOutlet UITextField * enrollno;
    IBOutlet UITextField * by;
    IBOutlet UITextField * faxnumber;
    IBOutlet UITextField * sincerly;
    IBOutlet UITextField * patname2;
    IBOutlet UITextField * authcr;
    NSMutableDictionary * recorddict;
    NSMutableArray * selectforms;
    IBOutlet UIButton * button1;
}

-(IBAction)submit:(id)sender;
-(IBAction)reset:(id)sender;
@property(nonatomic,retain)NSMutableDictionary * recorddict;
-(IBAction)checkboxSelected:(UIButton*)sender;
@property(nonatomic,retain)NSMutableArray * selectforms;

@end
