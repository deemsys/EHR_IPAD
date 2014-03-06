//
//  shoulderpainscoreViewController.h
//  shoulderpainscore
//
//  Created by DeemsysInc on 3/4/14.
//  Copyright (c) 2014 DeemsysInc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface shoulderpainscoreViewController : UIViewController
{
    int a;
    NSString *deg;
    NSString *incap;
    NSString *sleep,*temp1,*temp2,*temp3;
    NSString*night;
    NSString *painmotion;
    NSString *painrest;
    NSMutableDictionary *recorddict;
}
@property (strong, nonatomic) IBOutlet UIButton *nextbutton;
@property (strong, nonatomic) IBOutlet UITextField *patname;
@property (strong, nonatomic) IBOutlet UITextField *number;
@property (strong, nonatomic) IBOutlet UITextField *fdate;

@property (strong, nonatomic) IBOutlet UISegmentedControl *nightlypain;
@property (strong, nonatomic) IBOutlet UISegmentedControl *sleeping;
@property (strong, nonatomic) IBOutlet UISegmentedControl *incapability;
@property (strong, nonatomic) IBOutlet UISegmentedControl *degree;
@property (strong, nonatomic) IBOutlet UISlider *painscale;
@property(nonatomic,retain)NSMutableDictionary *recorddict;
@property (strong, nonatomic) IBOutlet UISegmentedControl *painatrestseg;
@property (strong, nonatomic) IBOutlet UISegmentedControl *painmotionseg;
@property (strong, nonatomic) IBOutlet UILabel *scaleres;

@end
