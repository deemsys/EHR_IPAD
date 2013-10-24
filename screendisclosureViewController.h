//
//  screendisclosureViewController.h
//  EHR
//
//  Created by DeemSysInc on 16/10/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "/usr/include/sqlite3.h"

@interface screendisclosureViewController : UIViewController
{
    IBOutlet UITextField * date;
    IBOutlet UITextField * name;
    NSMutableDictionary * recorddict;
    NSString * databasePath;
    sqlite3 * ehrdb5;

}

-(IBAction)submit:(id)sender;
-(IBAction)reset:(id)sender;
@property(nonatomic,retain)NSMutableDictionary * recorddict;
@end
