//
//  perryViewController.h
//  EHR
//
//  Created by DeemSysInc on 17/10/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface perryViewController : UIViewController
{
    NSMutableDictionary * recorddict;
    IBOutlet UITextField * name;
    IBOutlet UITextField * sign;
    IBOutlet UITextField * witness;
    IBOutlet UITextField * date;
    
}

-(IBAction)submit:(id)sender;
-(IBAction)reset:(id)sender;
@property(nonatomic,retain)NSMutableDictionary * recorddict;

@end
