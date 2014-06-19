//
//  authorizeandconsenttreatViewController.h
//  EHR
//
//  Created by DeemSysInc on 15/10/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import <UIKit/UIKit.h>
//#import <sqlite3.h>
#import "TextFieldDatePicker.h"
@interface authorizeandconsenttreatViewController : UIViewController<TextFieldDatePickerDelegate>
{
    IBOutlet UITextField * sign;
    IBOutlet UITextField * date;
    IBOutlet UITextField * name;
    NSMutableDictionary * recorddict;
    NSString * databasePath;
   // sqlite3 * ehrdb;

}

-(IBAction)submit:(id)sender;
-(IBAction)reset:(id)sender;
@property( nonatomic, retain)NSMutableDictionary * recorddict;
@end
