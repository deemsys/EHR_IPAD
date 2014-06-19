//
//  hamil3ViewController.h
//  hamil
//
//  Created by Admin on 05/03/14.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TextFieldDatePicker.h"
@interface hamil3ViewController : UIViewController<TextFieldDatePickerDelegate>
{
    
    IBOutlet UITextField *painlevel;
    IBOutlet UIButton *b1;
    IBOutlet UIButton *b2;
    IBOutlet UIButton *b3;
    IBOutlet UIButton *b4;
    IBOutlet UIButton *b5;
    IBOutlet UIButton *b6;
    IBOutlet UIButton *b7;
    IBOutlet UIButton *b8;
    IBOutlet UIButton *b9;
    
    NSMutableDictionary *recorddict;
    NSString *temp;
    int a;
    
    
}
@property(nonatomic,retain)NSMutableDictionary *recorddict;
@end
