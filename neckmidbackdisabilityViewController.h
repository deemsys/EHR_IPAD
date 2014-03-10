//
//  neckmidbackdisabilityViewController.h
//  neckmidbackdisability
//
//  Created by DeemsysInc on 3/7/14.
//  Copyright (c) 2014 DeemsysInc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface neckmidbackdisabilityViewController : UIViewController
{
    NSString *val1;
    NSString *val2;
    NSString *val3;
    NSString *val4;
    NSMutableDictionary *recorddict;
    int clicked1,clicked2,clicked3,clicked4;
    int c;
    
    
}
@property(nonatomic,retain)NSMutableDictionary *recorddict;
@property (strong, nonatomic) IBOutlet UITextField *name;
@property (strong, nonatomic) IBOutlet UITextField *date;
@property (strong, nonatomic) IBOutlet UIButton *sec11;
@property (strong, nonatomic) IBOutlet UIButton *sec12;
@property (strong, nonatomic) IBOutlet UIButton *sec13;
@property (strong, nonatomic) IBOutlet UIButton *sec14;
@property (strong, nonatomic) IBOutlet UIButton *sec15;
@property (strong, nonatomic) IBOutlet UIButton *sec16;
@property (strong, nonatomic) IBOutlet UIButton *sec21;
@property (strong, nonatomic) IBOutlet UIButton *sec22;
@property (strong, nonatomic) IBOutlet UIButton *sec23;
@property (strong, nonatomic) IBOutlet UIButton *sec24;
@property (strong, nonatomic) IBOutlet UIButton *sec25;
@property (strong, nonatomic) IBOutlet UIButton *sec26;
@property (strong, nonatomic) IBOutlet UIButton *sec31;
@property (strong, nonatomic) IBOutlet UIButton *sec32;
@property (strong, nonatomic) IBOutlet UIButton *sec33;
@property (strong, nonatomic) IBOutlet UIButton *sec34;
@property (strong, nonatomic) IBOutlet UIButton *sec35;
@property (strong, nonatomic) IBOutlet UIButton *sec36;
@property (strong, nonatomic) IBOutlet UIButton *sec41;
@property (strong, nonatomic) IBOutlet UIButton *sec42;
@property (strong, nonatomic) IBOutlet UIButton *sec43;
@property (strong, nonatomic) IBOutlet UIButton *sec44;
@property (strong, nonatomic) IBOutlet UIButton *sec45;
@property (strong, nonatomic) IBOutlet UIButton *sec46;

@end
