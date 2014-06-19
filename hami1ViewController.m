//
//  hami1ViewController.m
//  hamil
//
//  Created by Admin on 06/03/14.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//

#import "hami1ViewController.h"
#import "BlockAlertView.h"
#import "hamil2ViewController.h"
@interface hami1ViewController ()

@end

@implementation hami1ViewController
@synthesize recorddict;
-(IBAction)checkboxSelected:(UIButton*)sender {
    sender.selected = !sender.selected;
    if(sender.selected){
        [sender setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
    }
    else{
        [sender setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    }
}
-(BOOL)validateNames:(NSString *)country1
{
    NSString *countryFormat1 = @"(?:[A-Za-z]+[A-Za-z0-9]*)";
    
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
-(BOOL)validateDate:(NSString *)country1
{
    NSString *countryFormat1 =  @"[0-9]{2}+[/]+[0-9]{2}+[/]+[0-9]{4}";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
- (IBAction)atseg:(id)sender
{
    if(atpreseg.selectedSegmentIndex==0)
    {
        at_pre_injury=@"Slightly";
    }
    else if (atpreseg.selectedSegmentIndex==1)
    {
        at_pre_injury=@"Moderately";
    }
    else if (atpreseg.selectedSegmentIndex==2)
    {
        at_pre_injury=@"Greately";
    }
}

- (IBAction)next:(id)sender

{
    
    
   // recorddict=[[NSMutableDictionary alloc]init];
    if (b1.selected)
    {
        [recorddict setValue:@"Constant" forKey:@"const"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"const"];
    }
    if (b2.selected)
    {
        [recorddict setValue:@"Intermittent" forKey:@"intermit"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"intermit"];
    }
    if (b3.selected)
    {
        [recorddict setValue:@"Local" forKey:@"local"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"local"];
    }
    if (b4.selected)
    {
        [recorddict setValue:@"Diffuse" forKey:@"diffuse"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"diffuse"];
    }
    if (b5.selected)
    {
        
        [recorddict setValue:@"Radiates to" forKey:@"radiate"];
        
    }
    else
    {
        
        [recorddict setValue:@"" forKey:@"radiate"];
        
    }
    if (b6.selected)
    {
        [recorddict setValue:@"Mild" forKey:@"mild"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"mild"];
    }
    if (b7.selected)
    {
        [recorddict setValue:@"Moderate" forKey:@"moder"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"moder"];
    }
    if (b8.selected)
    {
        [recorddict setValue:@"Severe" forKey:@"severe"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"severe"];
    }
    if (b9.selected)
    {
        [recorddict setValue:@"Crippling" forKey:@"crip"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"crip"];
    }
    if (b10.selected)
    {
        [recorddict setValue:@"AM" forKey:@"am"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"am"];
    }
    if (b11.selected)
    {
        [recorddict setValue:@"PM" forKey:@"pm"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"pm"];
    }
    if (b12.selected)
    {
        
        [recorddict setValue:@"other" forKey:@"morning other"];
        
        
    }
    else
    {
        
        [recorddict setValue:@"" forKey:@"morning other"];
        
    }
    if (b13.selected)
    {
        [recorddict setValue:@"Better" forKey:@"better"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"better"];
    }
    if (b14.selected)
    {
        [recorddict setValue:@"Same" forKey:@"same"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"same"];
    }
    if (b15.selected)
    {
        [recorddict setValue:@"Progressively Worse" forKey:@"progressively"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"progressively"];
    }
    if (b16.selected)
    {
        [recorddict setValue:@"Yes" forKey:@"yes"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"yes"];
    }
    if (b17.selected)
    {
        [recorddict setValue:@"No" forKey:@"no"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"no"];
    }
    if (b18.selected)
    {
        [recorddict setValue:@"Work" forKey:@"work"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"work"];
    }
    if (b19.selected)
    {
        [recorddict setValue:@"Sleep" forKey:@"sleep"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"sleep"];
    }
    if (b20.selected)
    {
        
        [recorddict setValue:@"other" forKey:@"condition affected other"];
        
    }
    else
    {
        
        [recorddict setValue:@"" forKey:@"condition affected other"];
        
    }
    if (b21.selected)
    {
        [recorddict setValue:@"Same" forKey:@"same diag"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"same diag"];
    }
    if (b22.selected)
    {
        [recorddict setValue:@"Improved" forKey:@"improved"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"improved"];
    }
    if (b23.selected)
    {
        [recorddict setValue:@"Worse" forKey:@"worse"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"worse"];
    }
    if (b24.selected)
    {
        [recorddict setValue:@"Plateau" forKey:@"plateau"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"plateau"];
    }
    if (b25.selected)
    {
        [recorddict setValue:@"At pre-injury status" forKey:@"AT pre"];
    }
    else
    {
        
        [recorddict setValue:@"" forKey:@"At pre"];
    }
    if (b26.selected)
    {
        [recorddict setValue:@"Skilled Chiropractic Spinal Manipulation" forKey:@"skilled"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"skilled"];
    }
    if (b27.selected)
    {
        [recorddict setValue:@"EMS" forKey:@"ems"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"ems"];
    }
    if (b28.selected)
    {
        [recorddict setValue:@"Ice" forKey:@"treatment_ice"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"treatment_ice"];
    }
    if (b29.selected)
    {
        [recorddict setValue:@"Heat" forKey:@"treatment_heat"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"treatment_heat"];
    }
    if (b30.selected)
    {
        [recorddict setValue:@"Nimmo" forKey:@"nimmo"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"nimmo"];
    }
    if (b31.selected)
    {
        [recorddict setValue:@"Ultrasound" forKey:@"ultra"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"ultra"];
    }
    if (b32.selected)
    {
        [recorddict setValue:@"Manual Traction" forKey:@"manual"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"manual"];
    }
    if (b33.selected)
    {
        [recorddict setValue:@"Massage" forKey:@"treatment_massage"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"treatment_massage"];
    }
    if (b34.selected)
    {
        [recorddict setValue:@"Neuromuscular Re-education" forKey:@"Neuro"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"neuro"];
    }
    if (b35.selected)
    {
        [recorddict setValue:@"Stretching" forKey:@"treat_stretch"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"treat_stretch"];
    }
    if (b36.selected)
    {
        [recorddict setValue:@"Strenthening" forKey:@"treat_strength"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"treat_strength"];
    }
    if (b37.selected)
    {
        [recorddict setValue:@"Remobilization" forKey:@"remo"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"remo"];
    }
    if (b38.selected)
    {
        [recorddict setValue:@"Rehab" forKey:@"rehab"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"rehab"];
    }
    if (b39.selected)
    {
        [recorddict setValue:@"Modificat" forKey:@"modificate"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"modificate"];
    }
    if (b40.selected)
    {
        [recorddict setValue:@"Release from care" forKey:@"release"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"release"];
    }
    if (b41.selected)
    {
        [recorddict setValue:@"Refer" forKey:@"refer"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"refer"];
    }
    if (b42.selected)
    {
        [recorddict setValue:@"Decrease Pain" forKey:@"decrease pain"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"decrease pain"];
    }
    if (b43.selected)
    {
        [recorddict setValue:@"Decrease Spam" forKey:@"decrease spam"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"decrease spam"];
    }
    if (b44.selected)
    {
        [recorddict setValue:@"Increase ROM" forKey:@"inc rom"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"inc rom"];
    }
    if (b45.selected)
    {
        [recorddict setValue:@"Improve ADL" forKey:@"imp adl"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"imp adl"];
    }
    if (b46.selected)
    {
        [recorddict setValue:@"Improve Subluxations" forKey:@"imp sub"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"imp sub"];
    }
    if (b47.selected)
    {
        [recorddict setValue:@"Full Activity" forKey:@"full acti"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"full acti"];
    }
    if (b48.selected)
    {
        [recorddict setValue:@"Return to Work" forKey:@"return to"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"retrn to"];
    }
    if (b49.selected)
    {
        [recorddict setValue:@"Renew sports" forKey:@"renew sport"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"renew sport"];
    }
    
    
    temp1 = [radiates.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp2 = [mo_ni_oth.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp3 = [last_day.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp4 = [cond_aff_oth.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    a=1;
    if((([temp1 length]>0)&&([self validateNames:temp1]==1))||([temp1 length]==0))
    {
        if((([temp2 length]>0)&&([self validateNames:temp2 ]==1))||([temp2 length]==0))
        {
            if((([temp3 length]>0)&&([self validateDate:temp3 ]==1))||([temp3 length]==0))
            {
                if((([temp4 length]>0)&&([self validateNames:temp4 ]==1))||([temp4 length]==0))
                {
                    [recorddict setValue:radiates.text forKey:@"radiates text"];
                    [recorddict setValue:mo_ni_oth.text forKey:@"morning other text"];
                    [recorddict setValue:last_day.text forKey:@"last day"];
                    [recorddict setValue:cond_aff_oth.text forKey:@"condition affected text"];
                    [recorddict setValue:at_pre_injury forKey:@"At_pre_segment"];
                    
                    if(a==1)
                    {
                        [self performSegueWithIdentifier:@"hami3" sender:self];
                    }
                    
                  //  NSLog(@"success%@",recorddict);
                }
                else
                {
                    a=0;
                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid condition affected."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                    [alert show];
                }
                
            }
            else
            {
                a=0;
                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid last day."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                [alert show];
            }
            
        }
        else
        {
            a=0;
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid morning or night other."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
            [alert show];
        }
        
    }
    else
    {
        a=0;
        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid radiates to."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
        [alert show];
    }
}
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
     at_pre_injury=@"Slightly";
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    
    if([identifier isEqual:@"hami3"])
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
    
    if ([segue.identifier isEqualToString:@"hami3"])
    {
        
        hamil2ViewController*destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
       NSLog(@"recorddict in hmail second %@",recorddict);
    }
    
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
