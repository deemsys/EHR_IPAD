//
//  authorizeandconsenttreatViewController.h
//  EHR
//
//  Created by DeemSysInc on 15/10/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface authorizeandconsenttreatViewController : UIViewController
{
    IBOutlet UITextField * sign;
    IBOutlet UITextField * date;
    IBOutlet UITextField * name;
    NSMutableDictionary * recorddict;
    
}

-(IBAction)submit:(id)sender;
-(IBAction)reset:(id)sender;
@property( nonatomic, retain)NSMutableDictionary * recorddict;
@end
