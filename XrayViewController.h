//
//  XrayViewController.h
//  Xray
//
//  Created by Admin on 28/02/14.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XrayViewController : UIViewController
{
    IBOutlet UITextField *name;
    IBOutlet UITextField *borrow;
    IBOutlet UITextField *due;
    IBOutlet UITextField *sign;
    IBOutlet UITextField *date;
    NSString *temp1,*temp2,*temp3,*temp4,*temp5;
    NSMutableDictionary *recorddict;
    int a;
    
}
@property (nonatomic,retain) NSMutableDictionary *recorddict;
@end
