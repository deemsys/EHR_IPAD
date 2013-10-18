//
//  hardshipViewController.h
//  EHR
//
//  Created by DeemSysInc on 16/10/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface hardshipViewController : UIViewController
{
    IBOutlet UITextField * date;
    IBOutlet UITextField * name;
    IBOutlet UITextField * sign;
    IBOutlet UITextField * witness;
    NSMutableDictionary * recorddict;
}

-(IBAction)submit:(id)sender;
-(IBAction)reset:(id)sender;
@property(nonatomic,retain)NSMutableDictionary * recorddict;
@end
