//
//  healthinsuranceverificationViewController.m
//  EHR
//
//  Created by DeemSysInc on 15/10/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import "healthinsuranceverificationViewController.h"
#import "BlockAlertView.h"
#import "BlockBackground.h"
#import "BlockUI.h"
@interface healthinsuranceverificationViewController ()

@end

@implementation healthinsuranceverificationViewController
@synthesize recorddict;
@synthesize  healthinsuranceswitch;
@synthesize healthinsuranceswitchlabel;
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
-(BOOL)agevalidate:(NSString *)zipnumber{
    NSString *zipFormat1 =  @"[0-9]{1,3}?";
    
    //  [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *zipTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", zipFormat1];
    return [zipTest1 evaluateWithObject:zipnumber];
    
}
-(BOOL)validateMobile:(NSString*)mobilenumber{
    NSString *mobileFormat1 =  @"[0-9]{10}?";
    
    //  [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *mobileTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", mobileFormat1];
    return [mobileTest1 evaluateWithObject:mobilenumber];
    
}


-(IBAction)submit:(id)sender
{
    recorddict=[[NSMutableDictionary alloc]init];
    if(([patientname.text length]!=0)&&
       ([accidentdate.text length]!=0)&&
       ([employersname.text length]!=0)&&
       ([insurancecompany.text length]!=0)&&
       ([insurancephone.text length]!=0)&&
       ([policy.text length]!=0)&&
       ([group.text length]!=0)&&
       ([supplement.text length]!=0)&&
       ([supplementphone.text length]!=0)&&
       ([patientsign.text length]!=0)&&
       ([patientsigndate.text length]!=0)&&
       ([guardsign.text length]!=0)&&
       ([guardsigndate.text length]!=0))
    {
        a=0;
        if ([self onlyalphabetsexpress:[patientname text]]==1)
        {
            if([self dateexpress:[accidentdate text]]==1)
            {
                if([self onlyalphabetsexpress:[employersname text]]==1)
                {
                    if([self onlyalphabetsexpress:[insurancecompany text]]==1)
                    {
                        if([self validateMobile:[insurancephone text]]==1)
                        {
                            if([self onlyalphabetsexpress:[policy text]]==1)
                            {
                                if([self onlyalphabetsexpress:[group text]]==1)
                                {
                                    if([self onlyalphabetsexpress:[supplement text]]==1)
                                    {
                                     if([self validateMobile:[supplementphone text]]==1)
                                     {
                                         if([self onlyalphabetsexpress:[patientsign text]]==1)
                                         {
                                             if([self dateexpress:[patientsigndate text]]==1)
                                             {
                                                 if([self onlyalphabetsexpress:[guardsign text]]==1)
                                                 {
                                                     if([self dateexpress:[guardsigndate text]]==1)
                                                     {

                                                        a=1;
                                                         NSLog(@"a value %i",a);
                    [recorddict setValue:healthinsuranceswitchlabel.text forKey:@"healthinsurancelabel"];
                    [recorddict setValue:patientname.text forKey:@"patientname"];
                    [recorddict setValue:accidentdate.text forKey:@"accidentdate"];
                    [recorddict setValue:employersname.text forKey:@"employersname"];
                    [recorddict setValue:insurancecompany.text forKey:@"insurancecompany"];
                    [recorddict setValue:insurancephone.text forKey:@"insurancephone"];
                    [recorddict setValue:policy.text forKey:@"policy"];
                    [recorddict setValue:group.text forKey:@"group"];
                    [recorddict setValue:supplement.text forKey:@"supplement"];
                    [recorddict setValue:supplementphone.text forKey:@"supplementphone"];
                    [recorddict setValue:patientsign.text forKey:@"patientsign"];
                    [recorddict setValue:patientsigndate.text forKey:@"patientsigndate"];
                    [recorddict setValue:guardsign.text forKey:@"guardsign"];
                    [recorddict setValue:guardsigndate.text forKey:@"guardsigndate"];
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
                                         BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Phone Number."];
                                         
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
                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Group."];
                                    
                                    //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                    [alert show];
                                }
                            }

                            else
                            {
                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Policy."];
                                
                                //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                [alert show];
                            }
                        }

                        else
                        {
                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Phone Number."];
                            
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
                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Date."];
                
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
        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter all Required Fields."];
        
        //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
        [alert setDestructiveButtonWithTitle:@"x" block:nil];
        [alert show];
    }
    if (a==1)
    {
        NSLog(@"recorddict in health insurace patient info %@",recorddict);
    }
    else
    {
        NULL;
    }
   
}
-(IBAction)reset:(id)sender
{
    patientname.text=@"";
    accidentdate.text=@"";
    employersname.text=@"";
    insurancecompany.text=@"";
    insurancephone.text=@"";
    policy.text=@"";
    group.text=@"";
    supplement.text=@"";
    supplementphone.text=@"";
    

}
-(IBAction)insuranceswitchchange:(id)sender
{
    if (healthinsuranceswitch.isOn)
    {
        healthinsuranceswitchlabel.text=@"Yes";
    }
    else
    {
         healthinsuranceswitchlabel.text=@"No";
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
 //recorddict=[[NSMutableDictionary alloc]init];
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
