//
//  elbow1ViewController.h
//  elbow
//
//  Created by Admin on 25/02/14.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface elbow1ViewController : UIViewController
{
    NSMutableDictionary *recorddict;
    NSMutableArray *Functional_Deficit;
    NSMutableArray *Treatment;
    NSString *patient_status;
    int a,c;
    NSString *temp1,*temp2,*temp3,*temp4,*temp5,*temp6,*temp7,*temp8,*temp9,*temp10,*temp11,*temp12,*temp13,*temp14,*temp15,*temp16,*temp17,*temp18,*temp19;
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

    IBOutlet UITextField *assessment;
    NSString *over;
    NSString *lift;
    NSString *other;
    NSString *span;
    NSString *supp;
    NSString *nerv;
    NSString *chir;
    NSString *hep;
    NSString *emg;
    NSString *phys;
    NSString *radi;
    NSString *outs;
    NSString *ort;
    NSString *mri;
    NSString *dc;
    NSString *moda;
    NSString *ct;
    NSString *oth1;
  
    IBOutlet UITextField *planother;
    IBOutlet UITextField *funcother;
    
    
}
@property (retain, nonatomic) IBOutlet UITextField *moc5L;
@property (retain, nonatomic) IBOutlet UITextField *moc5R;
@property (retain, nonatomic) IBOutlet UITextField *assessment;

@property (retain, nonatomic) IBOutlet UITextField *moc6L;
@property (retain, nonatomic) IBOutlet UITextField *moc6R;
@property (retain, nonatomic) IBOutlet UITextField *moc7L;
@property (retain, nonatomic) IBOutlet UITextField *moc7R;
@property (retain, nonatomic) IBOutlet UITextField *moc8L;
@property (retain, nonatomic) IBOutlet UITextField *moc8R;
@property (retain, nonatomic) IBOutlet UITextField *mot1L;
@property (retain, nonatomic) IBOutlet UITextField *mot1R;
@property (retain, nonatomic) IBOutlet UITextField *diag1;
@property (retain, nonatomic) IBOutlet UITextField *diag2;
@property (retain, nonatomic) IBOutlet UITextField *diag3;
@property (retain, nonatomic) IBOutlet UITextField *diag4;
@property (retain, nonatomic) IBOutlet UITextField *diag5;
@property (retain, nonatomic) IBOutlet UITextField *diag6;
@property (retain, nonatomic) IBOutlet UITextField *plan1;
@property (retain, nonatomic) IBOutlet UITextField *plan2;
@property (retain, nonatomic) IBOutlet UITextField *physician_sign;
@property (strong, nonatomic) NSMutableDictionary * recorddict;
@property (retain, nonatomic) IBOutlet UITextField *funcother;
@property (retain, nonatomic) IBOutlet UITextField *planother;

@end
