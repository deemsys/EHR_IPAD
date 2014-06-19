//
//  shoulderpainscoreViewController.m
//  shoulderpainscore
//
//  Created by DeemsysInc on 3/4/14.
//  Copyright (c) 2014 DeemsysInc. All rights reserved.
//

#import "shoulderpainscoreViewController.h"
#import "shoulderpainscore1ViewController.h"
#import "BlockAlertView.h"

@interface shoulderpainscoreViewController ()

@end

@implementation shoulderpainscoreViewController

//@synthesize painmotion;
//@synthesize painrest;
@synthesize painscale;
@synthesize patname;
@synthesize nightlypain;
@synthesize sleeping;
@synthesize degree;
@synthesize incapability;
@synthesize number;
@synthesize fdate;
@synthesize recorddict;
@synthesize painatrestseg;
@synthesize painmotionseg;
@synthesize scaleres;


- (void)viewDidLoad
{
    [super viewDidLoad];
    recorddict=[[NSMutableDictionary alloc]init];
    painrest=@"";
    painmotion=@"";
    night=@"";
    sleep=@"";
    incap=@"";
    deg=@"";
   
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(BOOL)validateNames:(NSString *)country1
{
    NSString *countryFormat1 = @"(?:[A-Za-z]+[A-Za-z0-9]*)";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateNumber:(NSString *)country1
{
    NSString *countryFormat1 = @"[0-5]{1}";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateDate:(NSString *)country1
{
    NSString *countryFormat1 =  @"[0-9]{2}+[/]+[0-9]{2}+[/]+[0-9]{4}";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
- (void)textFieldDatePicker:(TextFieldDatePicker *)textFieldDatePicker didSelectDate:(NSDate *)date
{
    //	NSLog(@"%@", date);
    
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    
    //	NSLog(@"begin editing");
}
- (IBAction)painrest:(id)sender
{
    if (painatrestseg.selectedSegmentIndex==0)
    {
        painrest=@"None";
        
    }
    else if (painatrestseg.selectedSegmentIndex==1)
    {
     painrest=@"Light";
    }
    else if (painatrestseg.selectedSegmentIndex==2) {
     painrest=@"Average";
    }
    else if (painatrestseg.selectedSegmentIndex==3) {
     painrest=@"Severe";
    }


}
- (IBAction)painmotion:(id)sender
{
    if (painmotionseg.selectedSegmentIndex==0)
    {
        painmotion=@"None";
        
    }
    else if (painmotionseg.selectedSegmentIndex==1)
    {
        painmotion=@"Light";
    }
    else if (painmotionseg.selectedSegmentIndex==2) {
        painmotion=@"Average";
    }
    else if (painmotionseg.selectedSegmentIndex==3) {
        painmotion=@"Severe";
    }

}
- (IBAction)nightlypain:(id)sender
{
    if (nightlypain.selectedSegmentIndex==0)
    {
        night=@"None";
        
    }
    else if (nightlypain.selectedSegmentIndex==1)
    {
        night=@"Light";
    }
    else if (nightlypain.selectedSegmentIndex==2) {
        night=@"Average";
    }
    else if (nightlypain.selectedSegmentIndex==3) {
        night=@"Severe";
    }

}

- (IBAction)sleepingprob:(id)sender
{
    if (sleeping.selectedSegmentIndex==0)
    {
        sleep=@"None";
        
    }
    else if (sleeping.selectedSegmentIndex==1)
    {
        sleep=@"Light";
    }
    else if (sleeping.selectedSegmentIndex==2) {
        sleep=@"Average";
    }
    else if (sleeping.selectedSegmentIndex==3) {
        sleep=@"Severe";
    }

}
- (IBAction)incablyign:(id)sender
{
    if (incapability.selectedSegmentIndex==0)
    {
        incap=@"None";
        
    }
    else if (incapability.selectedSegmentIndex==1)
    {
        incap=@"Light";
    }
    else if (incapability.selectedSegmentIndex==2) {
        incap=@"Average";
    }
    else if (incapability.selectedSegmentIndex==3) {
        incap=@"Severe";
    }

}
- (IBAction)degrad:(id)sender
{
    if (degree.selectedSegmentIndex==0)
    {
        deg=@"None";
        
    }
    else if (degree.selectedSegmentIndex==1)
    {
        deg=@"Till halfway the upper arm";
    }
    else if (degree.selectedSegmentIndex==2) {
        deg=@"Till the elbow";
    }
    else if (degree.selectedSegmentIndex==3) {
        deg=@"Past the elbow";
    }

}
- (IBAction)scale:(id)sender {
    int val=(int)painscale.value;
    scaleres.text=[NSString stringWithFormat:@"%d",val];
}



- (IBAction)next:(id)sender
{
    a=1;
    temp1 = [patname.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp2 = [number.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp3 = [fdate.text stringByReplacingOccurrencesOfString:@" " withString:@""];
   
    [recorddict setValue:painrest forKey:@"painrest"];
    [recorddict setValue:painmotion forKey:@"painmotion"];
    [recorddict setValue:night forKey:@"nightlypain"];
    [recorddict setValue:sleep forKey:@"sleeping"];
    [recorddict setValue:incap forKey:@"incapability"];
    [recorddict setValue:deg forKey:@"degree"];
    [recorddict setValue:scaleres.text forKey:@"painscalevalues"];
   
    if( ([temp1 length]!=0)&&
       ([temp2 length]!=0)&&
       ([temp3 length]!=0))
    {
        if ([self validateNames:temp1]==1) {
            if ([self validateNames:temp2]==1)
            {
                if ([self validateDate:temp3]==1)
                {
                    
                            [recorddict setValue:fdate.text forKey:@"fdate"];
                            [recorddict setValue:patname.text forKey:@"patient name"];
                            [recorddict setValue:number.text forKey:@"number"];
                }
                
                                       else
                {
                    a=0;
                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid date."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                    [alert show];
                }
                
            }
            else
            {
                a=0;
                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid number."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                [alert show];
            }
        }
        else
        {
            a=0;
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid patient name."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
            [alert show];
        }
    }
    else{
        a=0;
        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter all the required fields."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
        [alert show];
        
    }
    if (a==1)
    {
        
    
      [self performSegueWithIdentifier:@"shoulderpain1" sender:self];

    }
}
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    
    if([identifier isEqual:@"shoulderpain1"])
    {
        if (a==1)
        {
            return YES;
        }
        else
        {
            
            return NO;
        }
    }
    else
        return NO;
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    if ([segue.identifier isEqualToString:@"shoulderpain1"])
    {
        
        shoulderpainscore1ViewController*destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        NSLog(@"recorddict in shoulder first %@",recorddict);
    }
    
    
}
@end
