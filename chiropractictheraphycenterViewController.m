//
//  chiropractictheraphycenterViewController.m
//  chiropractictheraphycenter
//
//  Created by deemsys on 2/26/14.
//  Copyright (c) 2014 deemsys. All rights reserved.
//

#import "chiropractictheraphycenterViewController.h"


@interface chiropractictheraphycenterViewController ()

@end


@implementation chiropractictheraphycenterViewController
@synthesize text1;
@synthesize recorddict;
@synthesize re;
@synthesize ssn;
@synthesize claim;
@synthesize doi;
@synthesize date;
@synthesize dear;
@synthesize date1;
@synthesize date2;
@synthesize adjust;

-(BOOL)validateNames:(NSString *)country1
{
    NSString *countryFormat1 = @"(?:[A-Za-z0-9]+[A-Za-z0-9]*)";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}

-(BOOL)validatessn:(NSString *)country1
{
    NSString *countryFormat1 = @"[0-9]{3}\\-[0-9]{2}\\-[0-9]{4}?";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateDate:(NSString *)country1
{
    NSString *countryFormat1 = @"[0-9]{1,2}+[-]+[0-9]{1,2}+[-]+[0-9]{4}";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}


- (IBAction)next:(id)sender {
    recorddict=[[NSMutableDictionary alloc]init];
    a=1;
    temp1 =[re.text stringByReplacingOccurrencesOfString:@" " withString:@""];
      temp2 =[text1.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    if(([re.text length]!=0)&&
       ([ssn.text length]!=0)&&
       ([claim.text length]!=0)&&
       ([adjust.text length]!=0)&&
       ([date.text length]!=0)&&
       ([dear.text length]!=0)&&
       ([date1.text length]!=0)&&
       ([date2.text length]!=0)&&
       ([doi.text length]!=0)&&([text1.text length]!=0))
    {
              if([self validateNames:re.text]==1)
            {
                
                if([self validateNames:dear.text]==1)
                  {
                if([self validateNames:claim.text]==1)
                     {
                         if([self validateNames:adjust.text]==1)
                             {
                    if([self validatessn:ssn.text]==1)
                                 {
                              if([self validateDate:date.text]==1)
                                         {
                         if([self validateDate:date1.text]==1)
                                             {
                            if([self validateDate:date2.text]==1)
                                                       {

                                                           if([self validateDate:doi.text]==1)
                                                           {
                                                               if ([self validateNames:text1.text]==1) {
                                                                   
                                                               
                                                           a=0;
                [recorddict setValue:text1.text forKey:@"theraphy center"];
                [recorddict setValue:re.text forKey:@"re"];
                [recorddict setValue:dear.text forKey:@"dear"];
                [recorddict setValue:claim.text forKey:@"claim"];
                [recorddict setValue:adjust.text forKey:@"adjust"];
                [recorddict setValue:date.text forKey:@"date"];
                [recorddict setValue:date1.text forKey:@"date1"];
                [recorddict setValue:date2.text forKey:@"date2"];
                [recorddict setValue:doi.text forKey:@"doi"];
                                                               [recorddict setValue:ssn.text forKey:@"ssn"];
                                                                   [recorddict setValue:text1.text forKey:@"amount"];
                NSLog(@"success!!!recorddict %@",recorddict);
                                                                   BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Info!" message:@"success."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                   [alert show];
            
                                                       
                                                           }
                                                           else{
                                                               a=0;
                                                               BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid amount."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                               [alert show];
                                                           }
                                                           }
                                                           
                                                           else
                                                           {
                                                               a=0;
                                                               BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter the doi."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                               [alert show];
                                                           }
                                                           
                                                       }
                                                 
                   
                                             
                         else
                         {
                             a=0;
                             BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter the date."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                             [alert show];
                         }
                                             
                                         }

                            else
                            {
                                a=0;
                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter the  valid date."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                [alert show];
                            }
                                                 
                                             }
                         else
                         {
                             a=0;
                             
                             BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter the valid date."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                             [alert show];
                         }
                                             
                                         }
else
                                                       {
                                                           a=0;
                                                           BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter the  valid ssn."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                           [alert show];
                                                       }
                                                 
                                             }
                         else
                         {
                             a=0;
                             
                             BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter the valid adjust field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                             [alert show];
                         }
                                             
                                         }

                            else
                            {
                                a=0;
                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter the  valid claim field"];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                [alert show];
                            }
                                                 
                                             }
                         else
                         {
                             a=0;
                             
                             BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter the valid dear field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                             [alert show];
                         }
                                             
                                         }
        else
        {
            a=0;
            
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter the valid re field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
            [alert show];
        }
        
    
    

        
    }
    else
    {
        a=0;
        
        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter all the fields."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
        [alert show];
    }
    
}




- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
