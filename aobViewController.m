//
//  aobViewController.m
//  EHR
//
//  Created by DeemSysInc on 16/10/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import "aobViewController.h"
#import "BlockAlertView.h"
#import "BlockBackground.h"
#import "BlockUI.h"
@interface aobViewController ()

@end

@implementation aobViewController
@synthesize recorddict;
int a;


-(BOOL)onlyalphabetsexpress:(NSString *)country1
{
    NSString *countryFormat1 = @"(?:[A-Za-z]+[a-z]*)";
    
    // [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)dateexpress:(NSString *)country1
{
    NSString *countryFormat1 = @"[0-9]{2}+[/]+[0-9]{2}+[/]+[0-9]{4}";
    
    //  [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
- (void)textFieldDatePicker:(TextFieldDatePicker *)textFieldDatePicker didSelectDate:(NSDate *)date
{
    //	NSLog(@"%@", date);
    
}
-(BOOL)number:(NSString *)zipnumber{
    NSString *zipFormat1 =  @"[0-9]{1,2}?";
    
    //  [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *zipTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", zipFormat1];
    return [zipTest1 evaluateWithObject:zipnumber];
    
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    
    //	NSLog(@"begin editing");
}
-(IBAction)submit:(id)sender
  {
    recorddict=[[NSMutableDictionary alloc]init];
    if(([day.text length]!=0)&&
       ([year.text length]!=0)&&
       ([nextday.text length]!=0)&&
       ([patientname.text length]!=0)&&
       ([patientsign.text length]!=0)&&
       ([custodialparent.text length]!=0)&&
       ([perrychiro.text length]!=0)&&
       ([guardsign.text length]!=0)&&
       ([date1.text length]!=0)&&
       ([date2.text length]!=0)&&
       ([date3.text length]!=0)&&
       ([newy.text length]!=0))
        
    {
        a=0;
        if ([self number:[day text]]==1)
        {
            if([self number:[year text]]==1)
                
            {
                if([self number:[newy text]]==1)
                {
                    
                if([self number:[nextday text]]==1)
                {
                  
                    if([self onlyalphabetsexpress:[patientname text]]==1)
                    {
                        if ([self onlyalphabetsexpress:[patientsign text]]==1)
                        {
                            if([self onlyalphabetsexpress:[custodialparent text]]==1)
                            {
                                if([self onlyalphabetsexpress:[perrychiro text]]==1)
                                {
                                    if([self onlyalphabetsexpress:[guardsign text]]==1)
                                    {
                                        if ([self dateexpress:[date1 text]]==1)
                                        {
                                            if([self dateexpress:[date2 text]]==1)
                                            {
                                                if([self dateexpress:[date3 text]]==1)
                                                {
                                                    a=1;
                                                    [recorddict setValue:day.text forKey:@"day"];
                                                    [recorddict setValue:year.text forKey:@"year"];
                                                    [recorddict setValue:nextday.text forKey:@"nextday"];
                                                    [recorddict setValue:patientname.text forKey:@"patname"];
                                                    [recorddict setValue:patientsign.text forKey:@"patsign"];
                                                    [recorddict setValue:custodialparent.text forKey:@"custparent"];
                                                    [recorddict setValue:perrychiro.text forKey:@"perychiro"];
                                                    [recorddict setValue:guardsign.text forKey:@"guardsign"];
                                                    [recorddict setValue:date1.text forKey:@"date1"];
                                                    [recorddict setValue:date2.text forKey:@"date2"];
                                                    [recorddict setValue:date3.text forKey:@"date3"];
                    }
                    else
                    {
                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Date."];
                        
                        //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                        [alert show];
                    }
                }
                else
                {
                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Date."];
                    
                    //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                    [alert show];
                }
            }
            else
            {
                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Date."];
                
                //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                [alert show];
            }
        }
        else
        {
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Signature."];
            
            //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
            [alert setDestructiveButtonWithTitle:@"x" block:nil];
            [alert show];
        }
    }
                                else
                                {
                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Name."];
                                    
                                    //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                    [alert show];
                                }
                            }

                            else
                            {
                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Name."];
                                
                                //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                [alert show];
                            }
                        }

                        else
                        {
                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Witness Signature."];
                            
                            //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                            [alert show];
                        }
                    }

                    else
                    {
                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Witness Name."];
                        
                        //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                        [alert show];
                    }
                }

                else
                {
                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Day."];
                    
                    //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                    [alert show];
                }
            }

                else
                {
                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Claimant."];
                    
                    //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                    [alert show];
                }
            }
            else
            {
                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Month."];
                
                //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                [alert show];
            }
        }

        else
        {
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Day."];
            
            //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
            [alert setDestructiveButtonWithTitle:@"x" block:nil];
            [alert show];
        }
    }

    else
    {
        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter all Required fields."];
        
        //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
        [alert setDestructiveButtonWithTitle:@"x" block:nil];
        [alert show];
    }
    if (a==1)
    {
        NSLog(@"recorddict in Hardship %@",recorddict);
    }
    else
    {
        NULL;
    }

}

-(IBAction)reset:(id)sender
{
    day.text=@"";
    year.text=@"";
    nextday.text=@"";
    patientname.text=@"";
    patientsign.text=@"";
   custodialparent.text=@"";
    guardsign.text=@"";
    perrychiro.text=@"";
   date1.text=@"";
    date2.text=@"";
    date3.text=@"";
}
-(void)dismissKeyboard{
    [day resignFirstResponder];
    [year resignFirstResponder];
    [nextday resignFirstResponder];
    [patientname resignFirstResponder];
    [patientsign resignFirstResponder];
    [custodialparent resignFirstResponder];
    [guardsign resignFirstResponder];
    [perrychiro resignFirstResponder];
    [date1 resignFirstResponder];
    [date2 resignFirstResponder];
    [date3 resignFirstResponder];
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
    [super viewDidLoad];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
