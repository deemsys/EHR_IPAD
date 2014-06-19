//
//  radiological3ViewController.h
//  radiological
//
//  Created by deemsys on 3/3/14.
//  Copyright (c) 2014 deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BlockAlertView.h"
#import "BlockBackground.h"
#import "BlockUI.h"
#import "TextFieldDatePicker.h"
@interface radiological3ViewController : UIViewController<TextFieldDatePickerDelegate>
{
    int a;
    NSMutableDictionary *recorddict;
    NSString *temp1;
    
    IBOutlet UIButton *pos;
    IBOutlet UITextField *viewtext;
    IBOutlet UIButton *nor;
}
@property (retain, nonatomic) IBOutlet UITextField *viewtext;
@property (retain, nonatomic)NSMutableDictionary *recorddict;
@property (retain, nonatomic) IBOutlet UIButton *nor;
@property (retain, nonatomic) IBOutlet UIButton *pos;

@end
