//
//  neckmidbackdisability2ViewController.m
//  neckmidbackdisability
//
//  Created by DeemsysInc on 3/7/14.
//  Copyright (c) 2014 DeemsysInc. All rights reserved.
//

#import "neckmidbackdisability2ViewController.h"
#import "BlockAlertView.h"

@interface neckmidbackdisability2ViewController ()

@end

@implementation neckmidbackdisability2ViewController

@synthesize recorddict;
@synthesize sec101;
@synthesize sec102;
@synthesize sec103;
@synthesize sec104;
@synthesize sec105;
@synthesize sec106;
@synthesize valuetext;
@synthesize save;



@synthesize disab;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(BOOL)validateNames:(NSString *)country1
{
    NSString *countryFormat1 = @"(?:[A-Za-z0-9]+[A-Za-z0-9]*)";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
- (IBAction)first:(id)sender {
    
    val10=@"0";

    [sec101 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [sec102 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec103 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec104 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec105 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec106 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    NSNumber *a=[recorddict objectForKey:@"total1"];
    NSNumber* b=[recorddict objectForKey:@"total2"];
    aa=[a intValue];
    bb=[b intValue];
    cc=[val10 intValue];
    result=aa+bb+cc;
   
    disab.text=[NSString stringWithFormat:@" %d ",result];
    [self displaytext:result];
    
    
}
- (IBAction)second:(id)sender {
    val10=@"1";
 
    [sec102 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [sec101 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec103 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec104 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec105 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec106 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    NSNumber *a=[recorddict objectForKey:@"total1"];
    NSNumber* b=[recorddict objectForKey:@"total2"];
    aa=[a intValue];
    bb=[b intValue];
    cc=[val10 intValue];
    result=aa+bb+cc;
   disab.text=[NSString stringWithFormat:@" %d ",result];
    [self displaytext:result];
}
- (IBAction)third:(id)sender {
    val10=@"2";
    [sec103 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [sec101 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec102 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec104 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec105 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec106 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    NSNumber *a=[recorddict objectForKey:@"total1"];
    NSNumber* b=[recorddict objectForKey:@"total2"];
    aa=[a intValue];
    bb=[b intValue];
    cc=[val10 intValue];
    result=aa+bb+cc;
   disab.text=[NSString stringWithFormat:@" %d ",result];
    [self displaytext:result];
    
}
- (IBAction)fourth:(id)sender {
    val10=@"3";
   
    [sec104 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [sec101 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec102 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec103 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec105 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec106 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    NSNumber *a=[recorddict objectForKey:@"total1"];
    NSNumber* b=[recorddict objectForKey:@"total2"];
    aa=[a intValue];
    bb=[b intValue];
    cc=[val10 intValue];
    result=aa+bb+cc;
    disab.text=[NSString stringWithFormat:@" %d ",result];
    [self displaytext:result];
    
}
- (IBAction)fifth:(id)sender {
    val10=@"4";

    [sec105 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [sec101 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec102 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec104 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec103 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec106 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    NSNumber *a=[recorddict objectForKey:@"total1"];
    NSNumber* b=[recorddict objectForKey:@"total2"];
    aa=[a intValue];
    bb=[b intValue];
    cc=[val10 intValue];
    result=aa+bb+cc;
    disab.text=[NSString stringWithFormat:@" %d ",result];
    [self displaytext:result];
    
}
-(IBAction)sixth:(id)sender {
    val10=@"5";
        [sec106 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [sec101 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec102 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec104 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec103 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec105 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    NSNumber *a=[recorddict objectForKey:@"total1"];
    NSNumber* b=[recorddict objectForKey:@"total2"];
    aa=[a intValue];
    bb=[b intValue];
    cc=[val10 intValue];
    result=aa+bb+cc;
   disab.text=[NSString stringWithFormat:@" %d ",result];
    [self displaytext:result];
}


- (IBAction)save:(id)sender
{
    move=1;
   
        [recorddict setValue:val10 forKey:@"sec10"];
    [recorddict setValue:valuetext.text forKey:@"valuetext"];
    [recorddict setValue:disab.text forKey:@"total"];
        BlockAlertView *alert=[[BlockAlertView alloc]initWithTitle:@"Info!" message:@"Success."];
        [alert setDestructiveButtonWithTitle:@"x" block:nil];
        [alert show];
        
        
        NSLog(@"recorddict %@",recorddict);
        
    
    
}
-(void)displaytext:(int)result1
{
    if (result1<=4) {
        valuetext.text=@"The Patient is having No Disability";
    }
   else if ((result1>=5)&&(result1<=14)) {
        valuetext.text=@"The Patient is having Mild Disability";
    }
  else if ((result1>=15)&&(result1<=24)) {
        valuetext.text=@"The Patient is having Moderate Disability";
    }
  else if ((result1>=25)&&(result1<=34)) {
      valuetext.text=@"The Patient is having Severe Disability";
  }
  else if (result1>35) {
      valuetext.text=@"The Patient is having Complete Disability";
  }
    


}
- (void)viewDidLoad
{
    [super viewDidLoad];
    val10=@"";
  
    NSNumber *a=[recorddict objectForKey:@"total1"];
    NSNumber* b=[recorddict objectForKey:@"total2"];
    aa=[a intValue];
    bb=[b intValue];
    cc=[val10 intValue];
    result=aa+bb+cc;
    disab.text=[NSString stringWithFormat:@" %d ",result];
    [self displaytext:result];
	// Do any additional setup after loading the view.
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
  
    [super dealloc];
}
@end


