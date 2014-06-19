//
//  schoolslipViewController.m
//  schoolslip
//
//  Created by Admin on 28/02/14.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//

#import "schoolslipViewController.h"
#import "BlockAlertView.h"

@interface schoolslipViewController ()

@end

@implementation schoolslipViewController
@synthesize recorddict;
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
-(IBAction)checkboxSelected:(UIButton*)sender {
    sender.selected = !sender.selected;
    if(sender.selected){
        [sender setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
    }
    else{
        [sender setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    }
    
    
}
- (IBAction)segment1:(id)sender
{
    if(seg1.selectedSegmentIndex==0)
    {
        excused=@"WORK";
    }
    else if (seg1.selectedSegmentIndex==1)
    {
       excused=@"SCHOOL";
    }
    else if (seg1.selectedSegmentIndex==2)
    {
        excused=@"P.E";
    }
}
- (IBAction)segment2:(id)sender
{
    if(seg2.selectedSegmentIndex==0)
    {
        confined=@"LIGHT DUTY";
    }
    else if (seg2.selectedSegmentIndex==1)
    {
        confined=@"MODIFIED DUTY";
    }
}
- (IBAction)segment3:(id)sender
{
    if(seg3.selectedSegmentIndex==0)
    {
     maximum=@"10 lbs";
    }
    else if (seg3.selectedSegmentIndex==1)
    {
        maximum=@"20 lbs";
    }
    else if (seg3.selectedSegmentIndex==2)
    {
        maximum=@"30 lbs";
    }if(seg3.selectedSegmentIndex==3)
    {
        maximum=@"40 lbs";
    }
    else if (seg3.selectedSegmentIndex==4)
    {
        maximum=@"50 lbs";
    }
   
}
- (IBAction)segment4:(id)sender
{
    if(seg4.selectedSegmentIndex==0)
    {
        lo=@"10 lbs";
    }
    else if (seg4.selectedSegmentIndex==1)
    {
        lo=@"20 lbs";
    }
    else if (seg4.selectedSegmentIndex==2)
    {
        lo=@"30 lbs";
    }if(seg4.selectedSegmentIndex==3)
    {
        lo=@"40 lbs";
    }
    else if (seg4.selectedSegmentIndex==4)
    {
        lo=@"50 lbs";
    }
}
- (IBAction)segment5:(id)sender
{
    if(seg5.selectedSegmentIndex==0)
    {
        sitting=@"1 hrs";
    }
    else if (seg5.selectedSegmentIndex==1)
    {
        sitting=@"2 hrs";
    }
    else if (seg5.selectedSegmentIndex==2)
    {
        sitting=@"3 hrs";
    }if(seg5.selectedSegmentIndex==3)
    {
        sitting=@"4 hrs";
    }
    else if (seg5.selectedSegmentIndex==4)
    {
        sitting=@"5 hrs";
    }
}
- (IBAction)segment6:(id)sender
{
    if(seg6.selectedSegmentIndex==0)
    {
        standing=@"1 hrs";
    }
    else if (seg6.selectedSegmentIndex==1)
    {
        standing=@"2 hrs";
    }
    else if (seg6.selectedSegmentIndex==2)
    {
        standing=@"3 hrs";
    }if(seg6.selectedSegmentIndex==3)
    {
        standing=@"4 hrs";
    }
    else if (seg6.selectedSegmentIndex==4)
    {
        standing=@"5 hrs";
    }
}
- (IBAction)segment7:(id)sender
{
    if(seg7.selectedSegmentIndex==0)
    {
        retu=@"Duty";
    }
    else if (seg7.selectedSegmentIndex==1)
    {
      retu=@"School";
    }
    else if (seg7.selectedSegmentIndex==2)
    {
        retu=@"P.E";
    }
}

- (IBAction)save:(id)sender
{


    if(b1.selected)
    {
        beexc=@"Be excused";
        [recorddict setValue:beexc forKey:@" Be excused"];
        
    }
    else
    {
        beexc=NULL;
        [recorddict  setValue:@"" forKey:@"Be excused"];

    }
    
    if(b2.selected)
    {
        becon=@"Be confined";
        [recorddict setValue:becon forKey:@"Be confined"];
        
    }
    else
    {
        becon=NULL;
        [recorddict setValue:@""forKey:@"Be confined"];
    }
    
    if(b3.selected)
    {
        max=@"maximum";
        [recorddict setValue:max forKey:@"maximum lift"];
        
    }
    else
    {
        max=NULL;
        [recorddict setValue:@" "forKey:@"maximum lift"];
    }
    
    if(b4.selected)
    {
        low=@"low force";
        [recorddict setValue:low forKey:@"low for"];
        
    }
    else
    {
        low=NULL;
        [recorddict setValue:@" " forKey:@"low for"];
    }
    if(b5.selected)
    {
        dri=@"unable to drive";
        [recorddict setValue:dri forKey:@"drive"];
        
    }
    else
    {
        dri=NULL;
        [recorddict setValue:@" " forKey:@" drive"];
    }
    if(b6.selected)
    {
        sit=@"sitting excessive ";
               [recorddict setValue:sit forKey:@"sitting exc"];
        
    }
    else
    {
        sit=NULL;
        [recorddict setValue:@" " forKey:@"sitting exc"];
    }
    if(b7.selected)
    {
        stan=@"standing excessive";
        [recorddict setValue:stan forKey:@"standing exc"];
        
    }
    else
    {
        stan=NULL;
        [recorddict setValue:@" " forKey:@"standing exc"];
    }
    if(b8.selected)
    {
        rep=@"repetative";
        [recorddict setValue:rep forKey:@"repetitive"];
        
    }
    else
    {
        rep=NULL;
        [recorddict setValue:@" " forKey:@"repetitive"];
    }
    if(b9.selected)
    {
        cau=@" use caution";
        [recorddict setValue:cau forKey:@"caution"];
        
    }
    else
    {
        cau=NULL;
        [recorddict setValue:@" " forKey:@"caution"];
    }
    if(b10.selected)
    {
        light=@"light";
        [recorddict setValue:light forKey:@"light"];
        
    }
    else
    {
        light=NULL;
        [recorddict setValue:@" " forKey:@"light"];
    }
    
    
    
[recorddict setValue:excused forKey:@"excused"];
[recorddict setValue:confined forKey:@"confined"];
[recorddict setValue:maximum forKey:@"maximum lifting"];
[recorddict setValue:lo forKey:@"low force"];
[recorddict setValue:sitting forKey:@"sitting"];
[recorddict setValue:standing forKey:@"standing"];
[recorddict setValue:retu forKey:@"return seg"];
    a=1;
    temp1 =[date.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp2 =[name.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp3 =[from.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp4 =[to.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp5 =[ret.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp6=[ondate.text stringByReplacingOccurrencesOfString:@" " withString:@""];
     temp7=[diagn.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    if(([temp1 length]!=0)&&
       ([temp2 length]!=0)&&
        ([temp3 length]!=0)&&
        ([temp4 length]!=0)&&
         ([temp5 length]!=0)&&
         ([temp6 length]!=0)&&
          ([temp7 length]!=0))
       {
           if([self validateDate:temp1]==1)
           {
               if([self validateNames:temp2]==1)
               {
                   if([self validateDate:temp3]==1)
                   {
                       if([self validateDate:temp4]==1)
                       {
                           if([self validateNames:temp5]==1)
                           {
                               if([self validateDate:temp6]==1)
                               {
                                   if([self validateNames:temp7]==1)
                                   {
                                       
                                       [recorddict setValue:date.text forKey:@"Date"];
                                       [recorddict setValue:name.text forKey:@" Name"];
                                       [recorddict setValue:from.text forKey:@"From date"];
                                       [recorddict setValue:to.text forKey:@"To date"];
                                       [recorddict setValue:ret.text forKey:@"return text"];
                                       [recorddict setValue:ondate.text forKey:@" On date"];
                                       [recorddict setValue:diagn.text forKey:@" Diagnosis"];
                                       NSLog(@"Success!!! %@",recorddict);
                                   
                                   }
                                       else
                                       {
                                           a=0;
                                           BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid Diagnosis."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                           [alert show];
                                       }
                                       
                                   }
                               else
                               {
                                   a=0;
                                   BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid On Date."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                   [alert show];
                               }
                               
                           }
                           else
                           {
                               a=0;
                               BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid Return."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                               [alert show];
                           }
                           
                       }
                       else
                       {
                           a=0;
                           BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid To Date ."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                           [alert show];
                       }
                       
                   }
                   else
                   {
                       a=0;
                       BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid From Date."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                       [alert show];
                   }
                   
               }
               else
               {
                   a=0;
                   BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid name ."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                   [alert show];
               }
               
           }
           else
           {
               a=0;
               BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid Date."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
               [alert show];
           }
           
       }
    else
    {
        a=0;
        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"All Fields Are Mandatory."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
        [alert show];
    }
    
}





- (void)viewDidLoad
{
    [super viewDidLoad];
       recorddict=[[NSMutableDictionary alloc]init];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [b1 release];
    [b2 release];
    [b3 release];
    [b4 release];
    [b5 release];
    [b6 release];
    [b7 release];
    [b8 release];
    [b9 release];
    [b10 release];
    [super dealloc];
}
@end
