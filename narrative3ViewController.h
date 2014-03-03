//
//  narrative3ViewController.h
//  narrative
//
//  Created by deemsys on 2/28/14.
//  Copyright (c) 2014 deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BlockAlertView.h"
#import "BlockBackground.h"
#import "BlockUI.h"

@interface narrative3ViewController : UIViewController<UITextFieldDelegate>
{
    int a;
    NSMutableDictionary*recorddict;
    NSString *temp1,*temp2,*temp3,*temp4,*temp5,*temp6,*temp7,*temp8,*temp9,*temp10,*temp11,*temp12,*temp13,*temp14,*temp15,*temp16,*temp17,*temp18,*temp19,*temp20;
    
   

    IBOutlet UITextField *i1;

    IBOutlet UITextField *i2;

    IBOutlet UITextField *de3;
    IBOutlet UITextField *i3;
    IBOutlet UITextField *de1;
    IBOutlet UITextField *de2;


    IBOutlet UITextField *date1;

    IBOutlet UITextField *date2;
   IBOutlet UITextField *exp1;

   NSString*mr,*good;
    IBOutlet UITextField *name;
    
    IBOutlet UISegmentedControl *goodseg;
    IBOutlet UISegmentedControl *meseg;

    IBOutlet UITextField *hope;
   
}


@property (retain, nonatomic) IBOutlet UITextField *i1;
@property (retain, nonatomic) IBOutlet UITextField *i2;
@property (retain, nonatomic) IBOutlet UITextField *i3;
@property (retain, nonatomic) IBOutlet UITextField *de1;

@property (retain, nonatomic) IBOutlet UITextField *de2;
@property (retain, nonatomic) IBOutlet UITextField *de3;

@property (retain, nonatomic) IBOutlet UITextField *date1;

@property (retain, nonatomic) IBOutlet UITextField *date2;

@property (retain, nonatomic) IBOutlet UITextField *exp1;

@property (retain, nonatomic) IBOutlet UISegmentedControl *mrseg;


@property (retain, nonatomic) IBOutlet UITextField *hope;

@property (retain, nonatomic) IBOutlet UISegmentedControl *goodseg;



@property (retain, nonatomic)NSMutableDictionary *recorddict;

@property (retain, nonatomic) IBOutlet UILabel *he1;

@property (retain, nonatomic) IBOutlet UILabel *his1;

@property (retain, nonatomic) IBOutlet UILabel *he2;

@property (retain, nonatomic) IBOutlet UILabel *his2;

@property (retain, nonatomic) IBOutlet UILabel *his3;


@property (retain, nonatomic) IBOutlet UILabel *his4;

@property (retain, nonatomic) IBOutlet UILabel *his5;
@property (retain, nonatomic) IBOutlet UILabel *his6;

@property (retain, nonatomic) IBOutlet UILabel *he3;


@property (retain, nonatomic) IBOutlet UITextField *name;

@property (retain, nonatomic) IBOutlet UILabel *mr1;
@property (retain, nonatomic) IBOutlet UILabel *name1;
@property (retain, nonatomic) IBOutlet UILabel *mr2;
@property (retain, nonatomic) IBOutlet UILabel *name2;
@property (retain, nonatomic) IBOutlet UILabel *name3;
@property (retain, nonatomic) IBOutlet UILabel *mr3;








@end