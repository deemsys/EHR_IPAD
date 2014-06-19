//
//  hipViewController.h
//  hip
//
//  Created by DeemsysInc on 4/18/14.
//  Copyright (c) 2014 DeemsysInc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BlockAlertView.h"
#import "BlockBackground.h"
#import "BlockUI.h"
#import "TextFieldDatePicker.h"
@interface hipViewController : UIViewController<TextFieldDatePickerDelegate>
{
    int a;
    NSMutableDictionary *recordict;

    IBOutlet UITextField *date;
    IBOutlet UITextField *patientname;
    
    IBOutlet UIButton *palright;
    
    IBOutlet UIButton *palleft;
    IBOutlet UISegmentedControl *gait;
    IBOutlet UISegmentedControl *ao;
    IBOutlet UISegmentedControl *pelvic;
    IBOutlet UIButton *palpation;
    IBOutlet UIButton *rangeofmotion;
    IBOutlet UIButton *orthotesting;
    IBOutlet UIButton *neurological;
    IBOutlet UITextField *flexionleft;
    IBOutlet UITextField *flexionright;
    IBOutlet UITextField *extensionleft;
    IBOutlet UITextField *extensionright;
    IBOutlet UITextField *abductionleft;
    IBOutlet UITextField *abductionright;
    IBOutlet UITextField *adductionleft;
    IBOutlet UITextField *adductionright;
    IBOutlet UITextField *internalleft;
    IBOutlet UITextField *internalright;
    IBOutlet UITextField *externalleft;
    IBOutlet UITextField *externalright;
    IBOutlet UITextField *patrickleft;
    IBOutlet UITextField *patrickright;
    IBOutlet UITextField *nachlasleft;
   
    IBOutlet UITextField *nachlasright;
    IBOutlet UITextField *elyleft;
    
    IBOutlet UITextField *elyright;
    IBOutlet UITextField *yeomanleft;

    IBOutlet UITextField *yeomanright;
    IBOutlet UITextField *oberleft;
    IBOutlet UITextField *oberright;
    IBOutlet UITextField *hibbsleft;
    IBOutlet UITextField *hibbsright;
    IBOutlet UITextField *thomasleft;
    IBOutlet UITextField *thomasright;
    IBOutlet UITextField *l1left;
    IBOutlet UITextField *l1right;
    IBOutlet UITextField *l2left;
    IBOutlet UITextField *l2right;
    IBOutlet UITextField *l3left;
    IBOutlet UITextField *l3right;
    IBOutlet UITextField *l4left;

       IBOutlet UITextField *l4right;

    IBOutlet UISegmentedControl *left;
    IBOutlet UITextField *rightother;
   
    IBOutlet UITextField *leftother;
    IBOutlet UISegmentedControl *right;
    IBOutlet UITextField *rightpick;
    IBOutlet UITextField *leftpick;
    IBOutlet UITextField *l5left;
    IBOutlet UITextField *l5right;
    IBOutlet UITextField *s1left;
    IBOutlet UITextField *s1right;
    IBOutlet UITextField *ml1left;
    IBOutlet UITextField *ml1right;
    IBOutlet UITextField *ml2left;

    IBOutlet UITextField *ml2right;
    IBOutlet UITextField *ml3left;
    IBOutlet UITextField *ml3right;
    IBOutlet UITextField *ml4left;
    IBOutlet UITextField *ml4right;
    IBOutlet UITextField *ml5left;
    IBOutlet UITextField *ml5right;
    IBOutlet UITextField *ms1left;
    IBOutlet UITextField *ms1right;
    NSString *pelviclabel;
    NSString *aolabel;
    NSString *gaitlabel;
    NSString *palpationlabel;
    NSString *rangeofmotionlabel;
    NSString *orthotestinglabel;
    NSString *neurologicallabel;
    NSString *leftlabel;
    NSString *rightlabel;
 NSString *temp1,*temp2,*temp3,*temp4,*temp5,*temp6,*temp7,*temp8,*temp9,*temp10,*temp11,*temp12,*temp13,*temp14,*temp15,*temp16,*temp17,*temp18,*temp19,*temp20,*temp21,*temp22,*temp23,*temp24,*temp25,*temp26,*temp27,*temp28,*temp29,*temp30,*temp31,*temp32,*temp33,*temp34,*temp35,*temp36,*temp37,*temp38,*temp39,*temp40,*temp41,*temp42,*temp43,*temp44,*temp45,*temp46,*temp47,*temp48,*temp49,*temp50,*temp51,*temp52,*temp53;
    
    
    
    
    
    

}
@property (retain, nonatomic) IBOutlet UISegmentedControl *left;
@property (retain, nonatomic) IBOutlet UISegmentedControl *right;
@property (strong, nonatomic) IBOutlet UITextField *patientname;
@property (strong, nonatomic) IBOutlet UITextField *date;
@property (nonatomic, strong) NSArray *leftarray;
@property (nonatomic, strong) NSArray *rightArray;
@property (retain, nonatomic) IBOutlet UILabel *leftlabel;
@property (retain, nonatomic) IBOutlet UILabel *rightlabel;
@property (retain, nonatomic) IBOutlet UIButton *palright;

@property (retain, nonatomic) IBOutlet UIButton *palleft;

@property (strong, nonatomic) IBOutlet UISegmentedControl *pelvic;
@property (strong, nonatomic) IBOutlet UISegmentedControl *ao;
@property (strong, nonatomic) IBOutlet UIButton *palpation;
@property (strong, nonatomic) IBOutlet UIButton *rangeofmotion;
@property (strong, nonatomic) IBOutlet UIButton *orthotesting;
@property (retain, nonatomic) IBOutlet UIButton *neurological;
@property (strong, nonatomic) IBOutlet UITextField *flexionleft;
@property (strong, nonatomic) IBOutlet UITextField *flexionright;
@property (strong, nonatomic) IBOutlet UITextField *extensionleft;
@property (strong, nonatomic) IBOutlet UITextField *extensionright;
@property (strong, nonatomic) IBOutlet UITextField *abductionleft;
@property (strong, nonatomic) IBOutlet UITextField *abductionright;
@property (strong, nonatomic) IBOutlet UITextField *adductionleft;
@property (strong, nonatomic) IBOutlet UITextField *adductionright;
@property (strong, nonatomic) IBOutlet UITextField *internalleft;
@property (strong, nonatomic) IBOutlet UITextField *internalright;
@property (strong, nonatomic) IBOutlet UITextField *externalleft;
@property (strong, nonatomic) IBOutlet UITextField *externalright;
@property (strong, nonatomic) IBOutlet UITextField *patrickleft;
@property (strong, nonatomic) IBOutlet UITextField *patrickright;
@property (strong, nonatomic) IBOutlet UITextField *nachlasleft;
@property (strong, nonatomic) IBOutlet UITextField *nachlasright;
@property (strong, nonatomic) IBOutlet UITextField *elyleft;
@property (strong, nonatomic) IBOutlet UITextField *elyright;
@property (strong, nonatomic) IBOutlet UITextField *yeomanleft;
@property (strong, nonatomic) IBOutlet UITextField *yeomanright;
@property (strong, nonatomic) IBOutlet UITextField *oberleft;
@property (strong, nonatomic) IBOutlet UITextField *oberright;
@property (strong, nonatomic) IBOutlet UITextField *hibbsleft;
@property (strong, nonatomic) IBOutlet UITextField *hibbsright;
@property (strong, nonatomic) IBOutlet UITextField *thomasleft;
@property (strong, nonatomic) IBOutlet UITextField *thomasright;

@property (strong, nonatomic) IBOutlet UITextField *l1left;
@property (strong, nonatomic) IBOutlet UITextField *l1right;
@property (strong, nonatomic) IBOutlet UITextField *l2left;
@property (strong, nonatomic) IBOutlet UITextField *l2right;
@property (strong, nonatomic) IBOutlet UITextField *l3left;
@property (strong, nonatomic) IBOutlet UITextField *l3right;
@property (strong, nonatomic) IBOutlet UITextField *l4left;
@property (strong, nonatomic) IBOutlet UITextField *l4right;
@property (strong, nonatomic) IBOutlet UITextField *l5left;
@property (strong, nonatomic) IBOutlet UITextField *l5right;
@property (strong, nonatomic) IBOutlet UITextField *s1left;
@property (strong, nonatomic) IBOutlet UITextField *s1right;
@property (strong, nonatomic) IBOutlet UITextField *ml1left;
@property (strong, nonatomic) IBOutlet UITextField *ml1right;
@property (strong, nonatomic) IBOutlet UITextField *ml2left;
@property (strong, nonatomic) IBOutlet UITextField *ml2right;
@property (strong, nonatomic) IBOutlet UITextField *ml3left;
@property (strong, nonatomic) IBOutlet UITextField *ml3right;
@property (strong, nonatomic) IBOutlet UITextField *ml4left;
@property (strong, nonatomic) IBOutlet UITextField *ml4right;
@property (strong, nonatomic) IBOutlet UITextField *ml5left;
@property (strong, nonatomic) IBOutlet UITextField *ml5right;
@property (strong, nonatomic) IBOutlet UITextField *ms1left;
@property (strong, nonatomic) IBOutlet UITextField *ms1right;
@property (retain, nonatomic) IBOutlet UISegmentedControl *gait;
@property(strong, nonatomic)NSMutableDictionary *recorddict;









@end
