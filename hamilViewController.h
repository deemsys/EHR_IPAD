//
//  hamilViewController.h
//  hamil
//
//  Created by Admin on 03/03/14.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TextFieldDatePicker.h"
@interface hamilViewController : UIViewController<UITextViewDelegate,TextFieldDatePickerDelegate>
{
    IBOutlet UITextField *gradualH;
    IBOutlet UITextField *gradualD;
    IBOutlet UITextField *injury_occur;
    IBOutlet UITextField *other1;
    IBOutlet UITextField *other2;
    IBOutlet UITextField *other3;
    IBOutlet UITextField *other4;
    IBOutlet UITextView *happen;
    NSMutableDictionary *recorddict;
    NSString *temp1,*temp2,*temp3,*temp4,*temp5,*temp6,*temp7,*temp8;
    int a;
    IBOutlet UIButton *b1;
    IBOutlet UIButton *b2;
    IBOutlet UIButton *b3;
    IBOutlet UIButton *b4;
    IBOutlet UIButton *b5;
    IBOutlet UIButton *b6;
    IBOutlet UIButton *b7;
    IBOutlet UIButton *b8;
    IBOutlet UIButton *b9;
    IBOutlet UIButton *b10;
    IBOutlet UIButton *b11;
    IBOutlet UIButton *b12;
    IBOutlet UIButton *b13;
    IBOutlet UIButton *b14;
    IBOutlet UIButton *b15;
    IBOutlet UIButton *b16;
    IBOutlet UIButton *b17;
    IBOutlet UIButton *b18;
    IBOutlet UIButton *b19;
    IBOutlet UIButton *b20;
    IBOutlet UIButton *b21;
    IBOutlet UIButton *b22;
    IBOutlet UIButton *b23;
    IBOutlet UIButton *b24;
    IBOutlet UIButton *b25;
    IBOutlet UIButton *b26;
    IBOutlet UIButton *b27;
    IBOutlet UIButton *b28;
    IBOutlet UIButton *b29;
    IBOutlet UIButton *b30;
    IBOutlet UIButton *b31;
    IBOutlet UIButton *b32;
    IBOutlet UIButton *b33;
    IBOutlet UIButton *b34;
    IBOutlet UIButton *b35;
    IBOutlet UIButton *b36;
    IBOutlet UIButton *b37;
    IBOutlet UIButton *b38;
    IBOutlet UIButton *b39;
    IBOutlet UIButton *b40;
    IBOutlet UIButton *b41;
    IBOutlet UIButton *b42;
    IBOutlet UIButton *b43;
    IBOutlet UIButton *b44;
    IBOutlet UIButton *b45;
    IBOutlet UIButton *b46;
    IBOutlet UIButton *b47;
    IBOutlet UIButton *b48;
    IBOutlet UISegmentedControl *ha;
    IBOutlet UISegmentedControl *wri;
    IBOutlet UISegmentedControl *nec;
    IBOutlet UISegmentedControl *lbp;
    IBOutlet UISegmentedControl *mb;
    IBOutlet UISegmentedControl *hip;
    IBOutlet UISegmentedControl *rib;
    IBOutlet UISegmentedControl *leg;
    IBOutlet UISegmentedControl *sho;
    IBOutlet UISegmentedControl *knee;
    IBOutlet UISegmentedControl *elb;
    IBOutlet UISegmentedControl *foo;
    IBOutlet UISegmentedControl *han;
    IBOutlet UISegmentedControl *ank;
    NSString *haseg,*wristseg,*neckseg,*lbpseg,*mbseg,*hipseg,*ribsseg,*legseg,*shoulderseg,*kneeseg,*elbowseg,*footseg,*handseg,*ankleseg;
    
    
    
}
@property (nonatomic,retain)NSMutableDictionary *recorddict;
@end
