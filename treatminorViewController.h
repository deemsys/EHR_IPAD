//
//  treatminorViewController.h
//  EHR
//
//  Created by DeemSysInc on 15/10/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface treatminorViewController : UIViewController
{
    NSMutableDictionary * recorddict;
    IBOutlet UITextField * parentguardname;
    IBOutlet UITextField * age;
    IBOutlet UITextField * drname;
    IBOutlet UITextField * sign;
    IBOutlet UITextField * date;
    IBOutlet UITextField * witness;
}
-(IBAction)submit:(id)sender;
-(IBAction)reset:(id)sender;
@property(nonatomic,retain) NSMutableDictionary * recorddict;
@property(nonatomic,retain)UITextField * parentguardname;
@property(nonatomic,retain)UITextField * age;
@property(nonatomic,retain)UITextField * drname;
@property(nonatomic,retain)UITextField * sign;
@property(nonatomic,retain)UITextField * date;
@property(nonatomic,retain)UITextField * witness;
@end
