//
//  certifiedmailViewController.m
//  certifiedmail
//
//  Created by deemsys on 2/25/14.
//  Copyright (c) 2014 deemsys. All rights reserved.
//

#import "certifiedmailViewController.h"
#import <QuartzCore/QuartzCore.h>
@interface certifiedmailViewController ()

@end

@implementation certifiedmailViewController
@synthesize  insurancecompany;
@synthesize  insadd;
@synthesize attorney;
@synthesize attadd;
@synthesize patientname;
@synthesize patadd;
@synthesize  amt1;
@synthesize amt2;
@synthesize  date;
@synthesize recorddict;
@synthesize sign;

-(BOOL)validateNames:(NSString *)country1
{
    NSString *countryFormat1 = @"[A-Za-z]+[A-Za-z0-9]*";
    
   
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateNumber:(NSString *)country1
{
    NSString *countryFormat1 = @"[0-9]{1,10}";
    
    
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateaddress:(NSString *)country1
{
    NSString *countryFormat1 = @"[A-Z0-9a-z._/-]+";

    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateDate:(NSString *)country1
{
    NSString *countryFormat1 = @"[0-9]{1,2}+[-]+[0-9]{1,2}+[-]+[0-9]{4}";
    

    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}

- (IBAction)NEXT:(id)sender {
    recorddict=[[NSMutableDictionary alloc]init];

    a=1;
    temp1 =[insurancecompany.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp2 =[[insadd.text stringByReplacingOccurrencesOfString:@"\n" withString:@" "]stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp3 =[attorney.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp4 =[[attadd.text stringByReplacingOccurrencesOfString:@"\n" withString:@" "]stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp5 =[patientname.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp6=[[patadd.text stringByReplacingOccurrencesOfString:@"\n" withString:@" "]stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp7=[amt1.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp8=[amt2.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp9=[sign.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    if(([temp1 length]!=0)&&
       ([date.text length]!=0)&&
       ([temp2 length]!=0)&&
       ([temp3 length]!=0)&&
       ([temp4 length]!=0)&&
       ([temp5 length]!=0)&&
       ([temp6 length]!=0)&&
       ([temp7 length]!=0)&&
       ([temp8 length]!=0)&&
       ([temp9 length]!=0))
       
    {
        if([self validateNames:temp1]==1)
        {
            if([self validateDate:[date text]]==1)
            {
                if((([temp2 length]>0)&&([self validateaddress:temp2]==1))||([temp2 length]==0))
                {
                    if((([temp3 length]>0)&&([self validateNames:temp3 ]==1))||([temp3 length]==0))
                    {
                        if((([temp4 length]>0)&&([self validateaddress:temp4 ]==1))||([temp4 length]==0))
                        {
                            if((([temp5 length]>0)&&([self validateNames:temp5]==1))||([temp5 length]==0))
                            {
                                if((([temp6 length]>0)&&([self validateaddress:temp6]==1))||([temp6 length]==0))
                                {
                                    if((([temp7 length]>0)&&([self validateNumber:temp7]==1))||([temp7 length]==0))
                                    {
                                        if((([temp8 length]>0)&&([self validateNumber:temp8]==1))||([temp8 length]==0))
                                        {
                                            if((([temp9 length]>0)&&([self validateNames:temp9]==1))||([temp9 length]==0))
                                            {
                                            
                                            [recorddict setValue:insurancecompany.text forKey:@"insurancecompany"];
                                            [recorddict setValue:date.text forKey:@"date"];
                                            [recorddict setValue:insadd.text forKey:@"insurancecompany address"];
                                            [recorddict setValue:attorney.text forKey:@"attorney name"];
                
                                                [recorddict setValue:sign.text forKey:@"signature"];
                                            [recorddict setValue:attadd.text forKey:@"attadd"];
                                            
                                            [recorddict setValue:patientname.text forKey:@"patientname"];
                                            [recorddict setValue:patadd.text forKey:@"paient add"];
                                            [recorddict setValue:amt1.text forKey:@"amt1"];
                                            [recorddict setValue:amt2.text forKey:@"amt2"];
                          NSLog(@"success!!!recorddict %@",recorddict);
                                            }
                                            else
                                            {
                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid signature."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                [alert show];
                                            }
                                            
                                        }
                                        else
                                        {
                                            a=0;
                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid amt2."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                            [alert show];
                                        }
                                        
                                    }
                                    else
                                    {
                                        a=0;
                                        
                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid amt1."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                        [alert show];
                                    }
                                    
                                }
                                else
                                {
                                    a=0;
                                    
                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid patient address."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
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
                        else
                        {
                            a=0;
                            
                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid attorney address."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                            [alert show];
                        }
                        
                    }
                    else
                    {
                        a=0;
                        
                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid attorney name."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                        [alert show];
                    }
                    
                }
                else
                {
                    a=0;
                    
                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid insuancecompany address."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                    [alert show];
                }
                
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
            
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid insurancecompany name."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
            [alert show];
        }
        
    }
    else
    {
        a=0;
        
        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter All Required fields."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
        [alert show];
    }

}

- (void)viewDidLoad
{
    [super viewDidLoad];
    

   
  }

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [sign release];

    [sample release];
  
    [insadd release];
    [attadd release];
    [patadd release];
    [super dealloc];
}
@end
