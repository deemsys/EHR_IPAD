//
//  dcfeeViewController.m
//  dcfee
//
//  Created by Admin on 05/02/14.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//

#import "dcfeeViewController.h"
#import "BlockAlertView.h"
#import "dcfee1ViewController.h"


@interface dcfeeViewController ()

@end

@implementation dcfeeViewController
@synthesize patientid;
@synthesize patientname;
@synthesize physicianname;
@synthesize rpt;
@synthesize date;
@synthesize pta;
@synthesize limited;
@synthesize expanded;
@synthesize detailed;
@synthesize extended;
@synthesize ltd;
@synthesize exp;
@synthesize detail;
@synthesize comp;
@synthesize refexp;
@synthesize refdetail;
@synthesize refcomp;
@synthesize consultexp;
@synthesize consultdetail;
@synthesize consultationcomp;
@synthesize brief;
@synthesize intermediate;
@synthesize consultcomp;
@synthesize recorddict;
@synthesize page1;
-(BOOL)validateNames:(NSString *)country1
{
    NSString *countryFormat1 = @"(?:[A-Za-z]+[A-Za-z]*)";
    
//   [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateNumbers:(NSString*)number
{
    NSString *mobileFormat1 =  @"[0-9]{1,10}?";
    
//   [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *mobileTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", mobileFormat1];
    return [mobileTest1 evaluateWithObject:number];
    
}
-(BOOL)validateDate:(NSString *)country1
{
    NSString *countryFormat1 = @"[0-9]{1,2}+[-]+[0-9]{1,2}+[-]+[0-9]{4}";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
- (IBAction)calc:(id)sender {
   
    
}


- (IBAction)next:(id)sender
{
    recorddict=[[NSMutableDictionary alloc]init];
    temp1 =[patientname.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp2 =[physicianname.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp3 =[patientid.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp4 =[rpt.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp5 =[pta.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp6=[limited.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp7=[expanded.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp8=[detailed.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp9=[extended.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp10=[ltd.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp11=[exp.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp12=[detail.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp13=[comp.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp14=[refexp.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp15=[refdetail.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp16=[refcomp.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp17=[consultexp.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp18=[consultdetail.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp19=[consultcomp.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp20=[brief.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp21=[intermediate.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp22=[consultationcomp.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp23=[date.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    if(([temp1 length]!=0)&&
      ([temp2 length]!=0)&&
       ([temp3 length]!=0)&&
       ([temp4 length]!=0)&&
       ([ temp5 length]!=0)
     &&       ([temp23 length]!=0))
     


    {
        c=1;
    
        if ([self validateNames:temp1]==1)
        {
            if ([self validateNames:temp2]==1)
            {
                if([self validateNumbers:temp3 ]==1)
                {
                    if([self validateNumbers:temp4]==1)
                    {
                        if ([self validateNumbers:temp5]==1)
                       {
                           if ([self validateDate:temp23]==1)
                           {
                               if((([temp6 length]>0)&&([self validateNumbers:temp6]==1))||([temp6 length]==0))
                               {
                                   if((([temp7 length]>0)&&([self validateNumbers:temp7]==1))||([temp7 length]==0))
                                   {
                                       if((([temp8 length]>0)&&([self validateNumbers:temp8]==1))||([temp8 length]==0))
                                       {
                                           if((([temp9 length]>0)&&([self validateNumbers:temp9]==1))||([temp9 length]==0))
                                           {
                                               if((([temp10 length]>0)&&([self validateNumbers:temp10 ]==1))||([temp10 length]==0))
                                               {
                                                   if((([temp11 length]>0)&&([self validateNumbers:temp11]==1))||([temp11 length]==0))
                                                   {
                                                       if((([temp12 length]>0)&&([self validateNumbers:temp12]==1))||([temp12 length]==0))
                                                       {
                                                           if((([temp13 length]>0)&&([self validateNumbers:temp13]==1))||([temp13 length]==0))
                                                           {
                                                               if((([temp14 length]>0)&&([self validateNumbers:temp14]==1))||([temp14 length]==0))
                                                               {
                                                                   if((([temp15 length]>0)&&([self validateNumbers:temp15]==1))||([temp15 length]==0))
                                                                   {
                                                                       if((([temp16 length]>0)&&([self validateNumbers:temp16]==1))||([temp16 length]==0))
                                                                       {
                                                                           if((([temp17 length]>0)&&([self validateNumbers:temp17]==1))||([temp17 length]==0))
                                                                           {
                                                                               if((([temp18 length]>0)&&([self validateNumbers:temp18]==1))||([temp18 length]==0))
                                                                               {
                                                                                   if((([temp19 length]>0)&&([self validateNumbers:temp19]==1))||([temp19 length]==0))
                                                                                   {
                                                                                       if((([temp20 length]>0)&&([self validateNumbers:temp20]==1))||([temp20 length]==0))
                                                                                       {
                                                                                           if((([temp21 length]>0)&&([self validateNumbers:temp21]==1))||([temp21 length]==0))
                                                                                           {
                                                                                               if((([temp22 length]>0)&&([self validateNumbers:temp22]==1))||([temp22 length]==0))
                                                                                               {
                                                                                                   calc=([limited.text floatValue]+[expanded.text floatValue]+[detailed.text floatValue]+[extended.text floatValue]+[ltd.text floatValue]+[exp.text floatValue]+[detail.text floatValue]+[comp.text floatValue]+[refexp.text floatValue]+[refdetail.text floatValue]+[refcomp.text floatValue]+[consultexp.text floatValue]+[consultdetail.text floatValue]+[consultcomp.text floatValue]+[brief.text floatValue]+[intermediate.text floatValue]+[consultationcomp.text floatValue]);
                                                                                                   page1.text=[[NSString alloc] initWithFormat:@"%f",calc];
                                                                                                   [recorddict setValue: page1.text forKey:@"calc1"];
                                                                                                   [recorddict setValue:date.text forKey:@"datefirst"];
                                                                                                   [recorddict setValue:patientid.text forKey:@"patientid"];
                                                                                                   [recorddict setValue:patientname.text forKey:@"patientname"];
                                                                                                   [recorddict setValue:physicianname.text forKey:@" physicianname"];
                                                                                                   [recorddict setValue:rpt.text forKey:@"RPT"];
                                                                                                   [recorddict setValue:pta.text forKey:@"PTA"];
                                                                                                   [recorddict setValue:limited.text forKey:@"Limited"];
                                                                                                   [recorddict setValue:expanded.text forKey:@" Expanded"];
                                                                                                   [recorddict setValue:detailed.text forKey:@"Detailed"];
                                                                                                   [recorddict setValue:extended.text forKey:@"Extended"];
                                                                                                   [recorddict setValue:exp.text forKey:@"Exp"];
                                                                                                   [recorddict setValue:detail.text forKey:@" Detail"];
                                                                                                   [recorddict setValue:comp.text forKey:@"comp"];
                                                                                                   [recorddict setValue:refexp.text forKey:@"refexp"];
                                                                                                   
                                                                                                   [recorddict setValue:refdetail.text forKey:@"refdetail"];
                                                                                                   [recorddict setValue:refcomp.text forKey:@" refcomp"];
                                                                                                   [recorddict setValue:consultexp.text forKey:@"consultexp"];
                                                                                                   [recorddict setValue:consultdetail.text forKey:@"consultdetail"];
                                                                                                   
                                                                                                   [recorddict setValue:consultcomp.text forKey:@"consultcomp"];
                                                                                                   [recorddict setValue:brief.text forKey:@"brief"];
                                                                                                   [recorddict setValue:intermediate.text forKey:@"intermediate"];
                                                                                                   [recorddict setValue:consultationcomp.text forKey:@"consultationcomp"];
//                                                                                                   NSLog(@"success!!!recorddict %@",recorddict);
                                                                                                   
                                                                                                   c=1;
                                                                                                   
                                                                                               }
                                                                                               else
                                                                                               {
                                                                                                   c=0;
                                                                                                   
                                                                                                   BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid consultaion comp field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                   [alert show];
                                                                                               }
                                                                                           }
                                                                                           else
                                                                                           {
                                                                                               c=0;
                                                                                               
                                                                                               BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid consult intermediate field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                               [alert show];
                                                                                           }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                           c=0;
                                                                                           
                                                                                           BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid consulation brief  field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                           [alert show];
                                                                                       }
                                                                                   }
                                                                                   else
                                                                                   {
                                                                                       c=0;
                                                                                       
                                                                                       BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid consult comp field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                       [alert show];
                                                                                   }
                                                                               }
                                                                               else
                                                                               {
                                                                                   c=0;
                                                                                   
                                                                                   BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid consult detail  field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                   [alert show];
                                                                               }
                                                                           }
                                                                           else
                                                                           {
                                                                               c=0;
                                                                               
                                                                               BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid consult exp field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                               [alert show];
                                                                           }
                                                                       }
                                                                       else
                                                                       {
                                                                           c=0;
                                                                           
                                                                           BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid refcomp field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                           [alert show];
                                                                       }
                                                                   }
                                                                   else
                                                                   {
                                                                       c=0;
                                                                       
                                                                       BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid refdetail field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                       [alert show];
                                                                   }
                                                               }
                                                               else
                                                               {
                                                                   c=0;
                                                                   
                                                                   BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid refexp field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                   [alert show];
                                                               }
                                                           }
                                                           else
                                                           {
                                                               c=0;
                                                               
                                                               BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid E/M comp field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                               [alert show];
                                                           }
                                                       }
                                                       else
                                                       {
                                                           c=0;
                                                           
                                                           BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid E/M detail field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                           [alert show];
                                                       }
                                                       
                                                   }
                                                   else
                                                   {
                                                       c=0;
                                                       
                                                       BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid E/M EXP field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                       [alert show];
                                                   }
                                                   
                                               }
                                               else
                                               {
                                                   c=0;
                                                   
                                                   BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid E/M LTD field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                   [alert show];
                                               }
                                               
                                           }
                                           else
                                           {
                                               c=0;
                                               
                                               BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid E/M extended  field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                               [alert show];
                                           }
                                           
                                       }
                                       else
                                       {
                                           c=0;
                                           
                                           BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid E/M detailed field field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                           [alert show];
                                       }
                                       
                                   }
                                   else
                                   {
                                       c=0;
                                       
                                       BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid E/M expanded field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                       [alert show];
                                   }
                                   
                               }
                               else
                               {
                                   c=0;
                                   
                                   BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid E/M limited field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                   [alert show];
                               }
                               
                               
                               
                               
                               
                           
                           
                           }
                           else{
                               c=0;
                               BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid  Date."];
                               [alert setDestructiveButtonWithTitle:@"x" block:nil];
                               [alert show];
                           }
     
                        }

                       else
                        {
                            c=0;
                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid  Patient ID."];
                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                            [alert show];
                        }
                    }
                    else
                    {
                        c=0;
                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid  PTA."];
                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                        [alert show];
                    }
                }

            
                else
                {
                    c=0;
                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid  RPT."];
                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                    [alert show];
                }
            }
            else
                {
                    c=0;
                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid  Physician Name."];
                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                    [alert show];
                }
            }
        
                else
                {
                    c=0;
                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid  Patient Name."];
                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                    [alert show];
            }
            }
    else
    {
        c=0;
        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter All Records."];
        [alert setDestructiveButtonWithTitle:@"x" block:nil];
        [alert show];

    
   }
    if (c==1) {
        [self performSegueWithIdentifier:@"dcfee1" sender:self];
    }
}
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    
    //NSLog(@"identifier %@",identifier);
    if([identifier isEqual:@"dcfee1"])
    {
        if (c==1)
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
    
    
    if ([segue.identifier isEqualToString:@"dcfee1"])
    {
        
        
        dcfee1ViewController *destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        NSLog(@"recorddict in dcfeedetail%@",recorddict);
        // destViewController.delegate=self;
        
    }
    }
    - (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    recorddict=[[NSMutableDictionary alloc]init];
    // Do any additional setup after loading the view.
}


- (void)dealloc {
     [super dealloc];
  /*[limited release];
    [expanded release];
    [detailed release];
    [extended release];
    [ltd release];
    [exp release];
    [detail release];
    [comp release];
    [refexp release];
    [refdetail release];
    [refcomp release];
    [consultexp release];
    [consultdetail release];
    [consultcomp release];
    [brief release];
    [intermediate release];
    [consultationcomp release];
    [page1 release];
    [page1 release];
   */
   
}
@end
