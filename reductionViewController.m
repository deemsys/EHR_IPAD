//
//  reductionViewController.m
//  reduction
//
//  Created by Admin on 27/02/14.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//

#import "reductionViewController.h"
#import "BlockAlertView.h"

@interface reductionViewController ()

@end

@implementation reductionViewController
@synthesize recorddict;
-(BOOL)validateAddress:(NSString *)country1
{
    NSString *countryFormat1 = @"[A-Z0-9a-z._/-]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateNo:(NSString *)country1
{
    NSString *countryFormat1 = @"(?:[0-9A-Za-z]*)";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateNames:(NSString *)country1
{
    NSString *countryFormat1 = @"(?:[A-Za-z]+[A-Za-z0-9]*)";
    
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
-(BOOL)validateaddress:(NSString *)country1
{
    NSString *countryFormat1 = @"[A-Z0-9a-z._/-]+";
    
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}

- (IBAction)save:(id)sender
{
    recorddict=[[NSMutableDictionary alloc]init];
    suc=1;
    temp1 =[attorney.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp2 =[[address.text stringByReplacingOccurrencesOfString:@"\n" withString:@" "]stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp3 =[regarding.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp4 =[dateofacci.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp5 =[claim.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp6 =[date.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp7 =[name.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp8 =[sign.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    
      if(([temp1 length]!=0)&&
         ([temp2 length]!=0)&&
         ([temp3 length]!=0)&&
         ([temp4 length]!=0)&&
         ([temp5 length]!=0)&&
         ([temp6 length]!=0)&&
         ([temp7 length]!=0)&&
         ([temp8 length]!=0))
            {
                 if([self validateNames:temp1]==1)
                 {
                     if([self validateaddress:temp2]==1)
                     {
                         if([self validateNames:temp3]==1)
                         {
                             if([self validateDate:temp4]==1)
                             {
                                 if([self validateNo:temp5]==1)
                                 {
                                     if([self validateDate:temp6]==1)
                                     {
                                     if([self validateNames:temp7]==1)
                                     {
                                         if([self validateNames:temp8]==1)
                                         {
                                         
                                             suc=1;                                                                                                                     [recorddict setValue:attorney.text forKey:@"attorney"];
                                         [recorddict setValue:address.text forKey:@"address"];
                                         [recorddict setValue:regarding.text forKey:@"regarding"];
                                         [recorddict setValue:dateofacci.text forKey:@"date of accident"];
                                         [recorddict setValue:claim.text forKey:@"claim"];
                                         [recorddict setValue:date.text forKey:@"date"];
                                         [recorddict setValue:name.text forKey:@"dear name"];
                                             [recorddict setValue:sign.text forKey:@"sign"];
                                         NSLog(@"success %@",recorddict);
                                         }
                                         else
                                         {
                                             suc=0;
                                             BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid signature."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                             [alert show];
                                         }
                                     }
                                     else
                                     {
                                         suc=0;
                                         BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid Dear Name."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                         [alert show];
                                     }
                                         
                                     }
                                     else
                                     {
                                         suc=0;
                                         
                                         BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid Today's Date."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                         [alert show];
                                     }
                                     
                                 }
                                 else
                                 {
                                     suc=0;
                                     BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid Claim Number."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                     [alert show];
                                 }
                                 
                             }
                             else
                             {
                                 suc=0;
                                 BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid Date of Accident."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                 [alert show];
                             }
                             
                         }
                         else
                         {
                             suc=0;
                             BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid Regarding."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                             [alert show];
                         }
                         
                     }
                     else
                     {
                         suc=0;
                         
                         BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid Address."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                         [alert show];
                     }
                     
                 }
                 else
                 {
                     suc=0;
                     BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid Patients Attorney."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                     [alert show];
                 }
                
            }
      else
      {
          suc=0;
          BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"All fields are mandatory."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
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

- (void)dealloc {
    [sign release];
    [super dealloc];
}
@end
