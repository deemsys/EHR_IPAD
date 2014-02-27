//
//  ProtectPatientAttorneyViewController.h
//  EHR
//
//  Created by deemsys on 2/26/14.
//  Copyright (c) 2014 DeemSysInc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BlockBackground.h"
#import "BlockAlertView.h"
#import "BlockUI.h"

@interface ProtectPatientAttorneyViewController : UIViewController
{
    IBOutlet UITextField *clinicname;
    IBOutlet UITextField *addrs;
    IBOutlet UITextField *patattory;
    IBOutlet UITextField *myclient;
    IBOutlet UITextField *dofacc;
    IBOutlet UITextField *dearname;
    IBOutlet UITextField *sincname;
    IBOutlet UITextField *date;
    NSMutableDictionary *recorddict;
}
- (IBAction)submit:(id)sender;
@property(nonatomic,retain)NSMutableDictionary*recorddict;

@end
