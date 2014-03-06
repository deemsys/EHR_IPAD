//
//  shoulderpainscore2ViewController.m
//  shoulderpainscore
//
//  Created by DeemsysInc on 3/4/14.
//  Copyright (c) 2014 DeemsysInc. All rights reserved.
//

#import "shoulderpainscore2ViewController.h"
#import "BlockAlertView.h"

@interface shoulderpainscore2ViewController ()

@end

@implementation shoulderpainscore2ViewController
@synthesize firstbut;
@synthesize secondbut;
@synthesize thirdbut;
@synthesize secondf;
@synthesize seconds;
@synthesize secondt;
@synthesize firstbut3;
@synthesize secondbut3;
@synthesize thirdbut3;
@synthesize firstbut4;
@synthesize secondbut4;
@synthesize thirdbut4;
@synthesize firstbut5;
@synthesize secondbut5;
@synthesize thirdbut5;
@synthesize firstbut6;
@synthesize secondbut6;
@synthesize thirdbut6;
@synthesize firstbut7;
@synthesize secondbut7;
@synthesize thirdbut7;
@synthesize firstbut8;
@synthesize secondbut8;
@synthesize thirdbut8;
@synthesize firstbut9;
@synthesize firstbut10;
@synthesize secondbut10;
@synthesize secondbut9;
@synthesize thirdbut10;
@synthesize thirdbut9;
@synthesize firstbut11;
@synthesize firstbut12;
@synthesize firstbut13;
@synthesize firstbut14;
@synthesize firstbut15;
@synthesize secondbut11;
@synthesize secondbut12;
@synthesize secondbut13;
@synthesize secondbut14;
@synthesize secondbut15;
@synthesize thirdbut11;
@synthesize thirdbut12;
@synthesize thirdbut13;
@synthesize thirdbut14;
@synthesize thirdbut15;
@synthesize recorddict;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (IBAction)first:(id)sender {
    
    firstrow=@"Yes";
    [firstbut setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [secondbut setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)second:(id)sender {
    firstrow=@"Sometimes";
    
    [secondbut setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [firstbut setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}
- (IBAction)third:(id)sender {
    firstrow=@"No";
    [thirdbut setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [firstbut setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondbut setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)first2:(id)sender {
    
    secondrow=@"Yes";
    [secondf setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [seconds setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondt setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)second2:(id)sender {
    secondrow=@"Sometimes";
    
    [seconds setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [secondt setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondf setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}
- (IBAction)third2:(id)sender {
    secondrow=@"No";
    [secondt setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [seconds setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondf setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)first3:(id)sender {
    
    thirdrow=@"Yes";
    [firstbut3 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [secondbut3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)second3:(id)sender {
    thirdrow=@"Sometimes";
    
    [secondbut3 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [firstbut3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}
- (IBAction)third3:(id)sender {
    thirdrow=@"No";
    [thirdbut3 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [firstbut3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondbut3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)first4:(id)sender {
    
    fourthrow=@"Yes";
    [firstbut4 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [secondbut4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)second4:(id)sender {
    fourthrow=@"Sometimes";
    
    [secondbut4 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [firstbut4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}
- (IBAction)third4:(id)sender {
    fourthrow=@"No";
    [thirdbut4 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [firstbut4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondbut4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)first5:(id)sender {
    
    fifthrow=@"Yes";
    [firstbut5 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [secondbut5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)second5:(id)sender {
    fifthrow=@"Sometimes";
    
    [secondbut5 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [firstbut5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}
- (IBAction)third5:(id)sender {
    fifthrow=@"No";
    [thirdbut5 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [firstbut5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondbut5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)first6:(id)sender {
    
    sixthrow=@"Yes";
    [firstbut6 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [secondbut6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)second6:(id)sender {
    sixthrow=@"Sometimes";
    
    [secondbut6 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [firstbut6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}
- (IBAction)third6:(id)sender {
    sixthrow=@"No";
    [thirdbut6 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [firstbut6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondbut6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}

- (IBAction)first7:(id)sender {
    
    seventhrow=@"Yes";
    [firstbut7 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [secondbut7 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut7 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)second7:(id)sender {
    seventhrow=@"Sometimes";
    
    [secondbut7 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [firstbut7 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut7 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}
- (IBAction)third7:(id)sender {
    seventhrow=@"No";
    [thirdbut7 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [firstbut7 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondbut7 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)first8:(id)sender {
    
    eighthrow=@"Yes";
    [firstbut8 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [secondbut8 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut8 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)second8:(id)sender {
    eighthrow=@"Sometimes";
    
    [secondbut8 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [firstbut8 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut8 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}
- (IBAction)third8:(id)sender {
    eighthrow=@"No";
    [thirdbut8 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [firstbut8 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondbut8 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)first9:(id)sender {
    
    ninethrow=@"Yes";
    [firstbut9 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [secondbut9 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut9 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)second9:(id)sender {
    ninethrow=@"Sometimes";
    
    [secondbut9 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [firstbut9 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut9 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}
- (IBAction)third9:(id)sender {
    ninethrow=@"No";
    [thirdbut9 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [firstbut9 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondbut9 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)first10:(id)sender {
    
    tenthrow=@"Yes";
    [firstbut10 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [secondbut10 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut10 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)second10:(id)sender {
    tenthrow=@"Sometimes";
    
    [secondbut10 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [firstbut10 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut10 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}
- (IBAction)third10:(id)sender {
    tenthrow=@"No";
    [thirdbut10 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [firstbut10 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondbut10 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)first11:(id)sender {
    
    eleventh=@"Yes";
    [firstbut11 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [secondbut11 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut11 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)second11:(id)sender {
    eleventh=@"Sometimes";
    
    [secondbut11 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [firstbut11 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut11 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}
- (IBAction)third11:(id)sender {
    eleventh=@"No";
    [thirdbut11 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [firstbut11 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondbut11 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)first12:(id)sender {
    
    twelve=@"Yes";
    [firstbut12 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [secondbut12 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut12 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)second12:(id)sender {
    twelve=@"Sometimes";
    
    [secondbut12 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [firstbut12 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut12 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}
- (IBAction)third12:(id)sender {
    twelve=@"No";
    [thirdbut12 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [firstbut12 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondbut12 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)first13:(id)sender {
    
    thirteern=@"Yes";
    [firstbut13 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [secondbut13 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut13 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)second13:(id)sender {
    thirteern=@"Sometimes";
    
    [secondbut13 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [firstbut13 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut13 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}
- (IBAction)third13:(id)sender {
    thirteern=@"No";
    [thirdbut13 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [firstbut13 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondbut13 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)first14:(id)sender {
    
    fourteen=@"Yes";
    [firstbut14 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [secondbut14 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut14 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)second14:(id)sender {
    fourteen=@"Sometimes";
    
    [secondbut14 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [firstbut14 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut14 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}
- (IBAction)third14:(id)sender {
    fourteen=@"No";
    [thirdbut14 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [firstbut14 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondbut14 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)first15:(id)sender {
    
    fifteen=@"Yes";
    [firstbut15 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [secondbut15 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut15 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)second15:(id)sender {
    fifteen=@"Sometimes";
    
    [secondbut15 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [firstbut15 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut15 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}
- (IBAction)third15:(id)sender {
    fifteen=@"No";
    [thirdbut15 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [firstbut15 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondbut15 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)save:(id)sender
{
    [recorddict setValue:firstrow forKey:@"eleven"];
    [recorddict setValue:secondrow forKey:@"twelve"];
     [recorddict setValue:thirdrow forKey:@"thirteen"];
    [recorddict setValue:fourthrow forKey:@"fourteen"];
     [recorddict setValue:fifthrow forKey:@"fifteen"];
     [recorddict setValue:sixthrow forKey:@"sixteen"];
     [recorddict setValue:seventhrow forKey:@"seventheen"];
     [recorddict setValue:eighthrow forKey:@"eighteen"];
     [recorddict setValue:ninethrow forKey:@"nineteen"];
     [recorddict setValue:tenthrow forKey:@"twenty"];
     [recorddict setValue:eleventh forKey:@"twentyone"];
     [recorddict setValue:twelve forKey:@"twentytwo"];
     [recorddict setValue:thirteern forKey:@"twentythree"];
     [recorddict setValue:fourteen forKey:@"twentyfour"];
     [recorddict setValue:fifteen forKey:@"twentyfive"];
    NSLog(@"final result %@",recorddict);
    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Info!" message:@"Success."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
    [alert show];
    
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    firstrow=@"";
    secondrow=@"";
    thirdrow=@"";
    fourthrow=@"";
    fifthrow=@"";
    sixthrow=@"";
    seventhrow=@"";
    eighthrow=@"";
    ninethrow=@"";
    tenthrow=@"";
    eleventh=@"";
    twelve=@"";
    thirteern=@"";
    fourteen=@"";
    fifteen=@"";
	}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
