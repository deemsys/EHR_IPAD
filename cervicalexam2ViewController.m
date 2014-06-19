//
//  cervicalexam2ViewController.m
//  cervicalexam
//
//  Created by DeemsysInc on 2/21/14.
//  Copyright (c) 2014 DeemsysInc. All rights reserved.
//

#import "cervicalexam2ViewController.h"
#import "BlockAlertView.h"

@interface cervicalexam2ViewController ()

@end

@implementation cervicalexam2ViewController
@synthesize neuro;
@synthesize patientstatussseg;
@synthesize p1;
@synthesize p2;
@synthesize p3;
@synthesize p4;
@synthesize p5;
@synthesize p6;
@synthesize p7;
@synthesize p8;
@synthesize p9;
@synthesize p10;
@synthesize p11;
@synthesize p12;
@synthesize p13;
@synthesize p14;
@synthesize p15;
@synthesize fd1;
@synthesize fd2;
@synthesize fd3;
@synthesize fd4;
@synthesize fd5;
@synthesize recorddict;
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
    patientstatus=@"Excellent";
	// Do any additional setup after loading the view.
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
    NSString *countryFormat1 = @"[0-9]{1,2}+[/]+[0-9]{1,2}+[/]+[0-9]{4}";
    
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
-(IBAction)patientstatusselected:(id)sender
{
    if(patientstatussseg.selectedSegmentIndex==0)
    {
        patientstatus=@"Excellent";
    }
    else if (patientstatussseg.selectedSegmentIndex==1)
    {
        patientstatus=@"Good";
    }
    else if (patientstatussseg.selectedSegmentIndex==2)
    {
        patientstatus=@"Fair";
    }
    else if (patientstatussseg.selectedSegmentIndex==3)
    {
        patientstatus=@"Poor";
    }
}
-(BOOL)validateaddress:(NSString *)country1
{
    NSString *countryFormat1 = @"[A-Z0-9a-z._/-]+";
    
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(IBAction)saveandcontinue:(id)sender
{
temp1 = [sign.text stringByReplacingOccurrencesOfString:@" " withString:@""];
temp2 = [plan1.text stringByReplacingOccurrencesOfString:@" " withString:@""];
temp3 = [plan2.text stringByReplacingOccurrencesOfString:@" " withString:@""];
temp4 = [planother.text stringByReplacingOccurrencesOfString:@" " withString:@""];
temp5 = [[additional.text stringByReplacingOccurrencesOfString:@"\n" withString:@" "]stringByReplacingOccurrencesOfString:@" " withString:@""];
temp6=[d1.text stringByReplacingOccurrencesOfString:@" " withString:@""];
temp7=[d2.text stringByReplacingOccurrencesOfString:@" " withString:@""];
temp8=[d3.text stringByReplacingOccurrencesOfString:@" " withString:@""];
temp9=[d4.text stringByReplacingOccurrencesOfString:@" " withString:@""];
temp10=[d5.text stringByReplacingOccurrencesOfString:@" " withString:@""];
temp11=[d6.text stringByReplacingOccurrencesOfString:@" " withString:@""];
temp12=[s1.text stringByReplacingOccurrencesOfString:@" " withString:@""];
temp13=[s2.text stringByReplacingOccurrencesOfString:@" " withString:@""];
temp14=[s3.text stringByReplacingOccurrencesOfString:@" " withString:@""];
temp15=[s4.text stringByReplacingOccurrencesOfString:@" " withString:@""];
temp16=[s5.text stringByReplacingOccurrencesOfString:@" " withString:@""];
temp17=[s6.text stringByReplacingOccurrencesOfString:@" " withString:@""];
temp18=[s7.text stringByReplacingOccurrencesOfString:@" " withString:@""];
temp19=[s8.text stringByReplacingOccurrencesOfString:@" " withString:@""];
temp20=[s9.text stringByReplacingOccurrencesOfString:@" " withString:@""];
temp21=[s10.text stringByReplacingOccurrencesOfString:@" " withString:@""];
temp22=[m1.text stringByReplacingOccurrencesOfString:@" " withString:@""];
temp23=[m2.text stringByReplacingOccurrencesOfString:@" " withString:@""];
temp24=[m3.text stringByReplacingOccurrencesOfString:@" " withString:@""];
temp25=[m4.text stringByReplacingOccurrencesOfString:@" " withString:@""];
temp26=[m5.text stringByReplacingOccurrencesOfString:@" " withString:@""];
temp27=[m6.text stringByReplacingOccurrencesOfString:@" " withString:@""];
temp28=[m7.text stringByReplacingOccurrencesOfString:@" " withString:@""];
temp29=[m8.text stringByReplacingOccurrencesOfString:@" " withString:@""];
temp30=[m9.text stringByReplacingOccurrencesOfString:@" " withString:@""];
temp31=[m10.text stringByReplacingOccurrencesOfString:@" " withString:@""];
temp32=[r1.text stringByReplacingOccurrencesOfString:@" " withString:@""];
temp33=[r2.text stringByReplacingOccurrencesOfString:@" " withString:@""];
temp34=[r3.text stringByReplacingOccurrencesOfString:@" " withString:@""];
temp35=[r4.text stringByReplacingOccurrencesOfString:@" " withString:@""];
temp36=[r5.text stringByReplacingOccurrencesOfString:@" " withString:@""];
temp37=[r6.text stringByReplacingOccurrencesOfString:@" " withString:@""];
temp38=[fdother.text stringByReplacingOccurrencesOfString:@" " withString:@""];

    a=1;
    if (fd1.selected) {
        [recorddict setValue:@"Sitting" forKey:@"sit"];
    }
    else
    {
       [recorddict setValue:@"" forKey:@"sit"];
    }
    if (fd2.selected) {
        [recorddict setValue:@"Standing" forKey:@"stand"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"stand"];
    }
    if (fd3.selected) {
        [recorddict setValue:@"Driving" forKey:@"drive"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"drive"];
    }
    if (fd4.selected) {
        [recorddict setValue:@"Computer Use" forKey:@"computer"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"computer"];
    }
    if (fd5.selected) {
        [recorddict setValue:@"Other" forKey:@"fdother"];
        [recorddict setValue:fdother.text forKey:@"fdothertext"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"fdother"];
         [recorddict setValue:@"" forKey:@"fdothertext"];
    }
    if (p1.selected) {
        [recorddict setValue:@"Spinal Decompression" forKey:@"spinal"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"spinal"];
    }
    if (p2.selected) {
        [recorddict setValue:@"Chiropractic" forKey:@"chiro"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"chiro"];
    }
    if (p3.selected) {
        [recorddict setValue:@"Physical Theraphy" forKey:@"phy"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"phy"];
    }
    if (p4.selected) {
        [recorddict setValue:@"Orthotics/Bracing" forKey:@"ortho"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"ortho"];
    }
    if (p5.selected) {
        [recorddict setValue:@"Modalities" forKey:@"modal"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"modal"];
    }
    if (p6.selected) {
        [recorddict setValue:@"Supplementation" forKey:@"supple"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"supple"];
    }
    if (p7.selected) {
        [recorddict setValue:@"HEP" forKey:@"hep"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"hep"];
    }
    if (p8.selected) {
        [recorddict setValue:@"Radiographic X-Ray" forKey:@"xray"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"xray"];
    }
    if (p9.selected) {
        [recorddict setValue:@"MRI" forKey:@"mri"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"mri"];
    }
    if (p10.selected) {
        [recorddict setValue:@"CT Scan" forKey:@"ct"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"ct"];
    }
    if (p11.selected) {
        [recorddict setValue:@"Nerver Conduction" forKey:@"nev"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"nev"];
    }
    if (p12.selected) {
        [recorddict setValue:@"EMG" forKey:@"emg"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"emg"];
    }
    if (p13.selected) {
        [recorddict setValue:@"Outside Referral" forKey:@"outref"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"outref"];
    }
    if (p14.selected) {
        [recorddict setValue:@"D/C" forKey:@"dc"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"dc"];
    }
    if (p15.selected) {
        [recorddict setValue:@"Other" forKey:@"planother"];
        [recorddict setValue:planother.text forKey:@"planothertext"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"planother"];
        [recorddict setValue:@"" forKey:@"planothertext"];
    }
    if(neuro.selected)
    {
        [recorddict setValue:@"Neurological Testing Unremarkable" forKey:@"neuroval"];
//        [recorddict setValue:@"" forKey:@"planothertext"];
    }
    else{
        [recorddict setValue:@"Neurological Testing Unremarkable" forKey:@"neuroval"];
//        [recorddict setValue:@"" forKey:@"planothertext"];
    }
    [recorddict setValue:patientstatus forKey:@"patientstatus"];
    
    if([temp1 length]!=0)
    {
        if([self validateNames:temp1 ]==1)
        {
            if((([temp12 length]>0)&&([self validateNames:temp12]==1))||([temp12 length]==0))
            {
                if((([temp13 length]>0)&&([self validateNames:temp13 ]==1))||([temp13 length]==0))
                {
                    if((([temp14 length]>0)&&([self validateNames:temp14 ]==1))||([temp14 length]==0))
                    {
                        if((([temp15 length]>0)&&([self validateNames:temp15 ]==1))||([temp15 length]==0))
                        {
                            if((([temp16 length]>0)&&([self validateNames:temp16 ]==1))||([temp16 length]==0))
                            {
                                if((([temp17 length]>0)&&([self validateNames:temp17 ]==1))||([temp17 length]==0))
                                {
                                    if((([temp18 length]>0)&&([self validateNames:temp18]==1))||([temp18 length]==0))
                                    {
                                        if((([temp19 length]>0)&&([self validateNames:temp19]==1))||([temp19 length]==0))
                                        {
                                            if((([temp20 length]>0)&&([self validateNames:temp20]==1))||([temp20 length]==0))
                                            {
                                                if((([temp21 length]>0)&&([self validateNames:temp21]==1))||([temp21 length]==0))
                                                {
                                                    if((([temp22 length]>0)&&([self validateNumber:temp22]==1))||([temp22 length]==0))
                                                    {
                                                        if((([temp23 length]>0)&&([self validateNumber:temp23]==1))||([temp23 length]==0))
                                                        {
                                                            if((([temp24 length]>0)&&([self validateNumber:temp24]==1))||([temp24 length]==0))
                                                            {
                                                                if((([temp25 length]>0)&&([self validateNumber:temp25]==1))||([temp25 length]==0))
                                                                {
                                                                    if((([temp26 length]>0)&&([self validateNumber:temp26]==1))||([temp26 length]==0))
                                                                    {
                                                                        if((([temp27 length]>0)&&([self validateNumber:temp27]==1))||([temp27 length]==0))
                                                                        {
                                                                            if((([temp28 length]>0)&&([self validateNumber:temp28]==1))||([temp28 length]==0))
                                                                            {
                                                                                if((([temp29 length]>0)&&([self validateNumber:temp29 ]==1))||([temp29 length]==0))
                                                                                {
                                                                                    if((([temp30 length]>0)&&([self validateNumber:temp30]==1))||([temp30 length]==0))
                                                                                    {
                                                                                        if((([temp31 length]>0)&&([self validateNumber:temp31 ]==1))||([temp31 length]==0))
                                                                                        {
                                                                                            if((([temp32 length]>0)&&([self validateNumber:temp32]==1))||([temp32 length]==0))
                                                                                            {
                                                                                                if((([temp33 length]>0)&&([self validateNumber:temp33]==1))||([temp33 length]==0))
                                                                                                {
                                                                                                    if((([temp34 length]>0)&&([self validateNumber:temp34]==1))||([temp34 length]==0))
                                                                                                    {
                                                                                                        if((([temp35 length]>0)&&([self validateNumber:temp35]==1))||([temp35 length]==0))
                                                                                                        {
                                                                                                            if((([temp36 length]>0)&&([self validateNumber:temp36]==1))||([temp36 length]==0))
                                                                                                            {
                                                                                                                if((([temp37 length]>0)&&([self validateNumber:temp37]==1))||([temp37 length]==0))
                                                                                                                {
                                                                                                                    if((([temp5 length]>0)&&([self validateaddress:temp5]==1))||([temp5 length]==0))
                                                                                                                    {
                                                                                                                        if((([temp2 length]>0)&&([self validateNames:temp2]==1))||([temp2 length]==0))
                                                                                                                        {
                                                                                                                            if((([temp3 length]>0)&&([self validateNames:temp3 ]==1))||([temp3 length]==0))
                                                                                                                            {
                                                                                                                                if((([temp6 length]>0)&&([self validateNames:temp6]==1))||([temp6 length]==0))
                                                                                                                                {
                                                                                                                                    if((([temp7 length]>0)&&([self validateNames:temp7 ]==1))||([temp7 length]==0))
                                                                                                                                    {
                                                                                                                                        if((([temp8 length]>0)&&([self validateNames:temp8 ]==1))||([temp8 length]==0))
                                                                                                                                            
                                                                                                                                        {
                                                                                                                                            if((([temp9 length]>0)&&([self validateNames:temp9]==1))||([temp9 length]==0))
                                                                                                                                            {
                                                                                                                                                if((([temp10 length]>0)&&([self validateNames:temp10]==1))||([temp10 length]==0))
                                                                                                                                                {
                                                                                                                                                    if((([temp11 length]>0)&&([self validateNames:temp11]==1))||([temp11 length]==0))
                                                                                                                                                    {
                                                                                                                                                        [recorddict setValue:s1.text forKey:@"s1"];
                                                                                                                                                        [recorddict setValue:s2.text forKey:@"s2"];
                                                                                                                                                        [recorddict setValue:s3.text forKey:@"s3"];
                                                                                                                                                        [recorddict setValue:s4.text forKey:@"s4"];
                                                                                                                                                        [recorddict setValue:s5.text forKey:@"s5"];
                                                                                                                                                        [recorddict setValue:s6.text forKey:@"s6"];
                                                                                                                                                        [recorddict setValue:s7.text forKey:@"s7"];
                                                                                                                                                        [recorddict setValue:s8.text forKey:@"s8"];
                                                                                                                                                        [recorddict setValue:s9.text forKey:@"s9"];
                                                                                                                                                        [recorddict setValue:s10.text forKey:@"s10"];
                                                                                                                                                        [recorddict setValue:m1.text forKey:@"m1"];
                                                                                                                                                        [recorddict setValue:m2.text forKey:@"m2"];
                                                                                                                                                        [recorddict setValue:m3.text forKey:@"m3"];
                                                                                                                                                        [recorddict setValue:m4.text forKey:@"m4"];
                                                                                                                                                        [recorddict setValue:m5.text forKey:@"m5"];
                                                                                                                                                        [recorddict setValue:m6.text forKey:@"m6"];
                                                                                                                                                        [recorddict setValue:m7.text forKey:@"m7"];
                                                                                                                                                        [recorddict setValue:m8.text forKey:@"m8"];
                                                                                                                                                        [recorddict setValue:m9.text forKey:@"m9"];
                                                                                                                                                        [recorddict setValue:m10.text forKey:@"m10"];
                                                                                                                                                        [recorddict setValue:r1.text forKey:@"r1"];
                                                                                                                                                        [recorddict setValue:r2.text forKey:@"r2"];
                                                                                                                                                        [recorddict setValue:r3.text forKey:@"r3"];
                                                                                                                                                        [recorddict setValue:r4.text forKey:@"r4"];
                                                                                                                                                        [recorddict setValue:r5.text forKey:@"r5"];
                                                                                                                                                        [recorddict setValue:r6.text forKey:@"r6"];
                                                                                                                                                        [recorddict setValue:additional.text forKey:@"additional"];
                                                                                                                                                        [recorddict setValue:d1.text forKey:@"d1"];
                                                                                                                                                        [recorddict setValue:d2.text forKey:@"d2"];
                                                                                                                                                        [recorddict setValue:d3.text forKey:@"d3"];
                                                                                                                                                        [recorddict setValue:d4.text forKey:@"d4"];
                                                                                                                                                        [recorddict setValue:d5.text forKey:@"d5"];
                                                                                                                                                        [recorddict setValue:d6.text forKey:@"d6"];
                                                                                                                                                        [recorddict setValue:sign.text forKey:@"sign"];
                                                                                                                                                        [recorddict setValue:plan1.text forKey:@"plan1"];
                                                                                                                                                        [recorddict setValue:plan2.text forKey:@"plan2"];
//                                                                                                                                                        [recorddict setValue:planother.text forKey:@"planother"];
//                                                                                                                                                        [recorddict setValue:fdother.text forKey:@"fdother"];
                                                                                                                                                        //[recorddict setValue: forKey:@""];
                                                                                                                                                        //[recorddict setValue: forKey:@""];
                                                                                                                                                        
                                                                                                                                                    }
                                                                                                                                                    else
                                                                                                                                                    {
                                                                                                                                                        a=0;
                                                                                                                                                        
                                                                                                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid diagnosis 6 reason ."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                                        [alert show];
                                                                                                                                                        
                                                                                                                                                        
                                                                                                                                                    }
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                    a=0;
                                                                                                                                                    
                                                                                                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid diagnosis 5 reason ."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                                    [alert show];
                                                                                                                                                    
                                                                                                                                                }
                                                                                                                                            }
                                                                                                                                            else
                                                                                                                                            {
                                                                                                                                                a=0;
                                                                                                                                                
                                                                                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid diagnosis 4 reason ."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                                [alert show];
                                                                                                                                            }
                                                                                                                                            
                                                                                                                                        }
                                                                                                                                        else
                                                                                                                                        {
                                                                                                                                            a=0;
                                                                                                                                            
                                                                                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid diagnosis 3 reason ."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                            [alert show];
                                                                                                                                        }
                                                                                                                                        
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                        a=0;
                                                                                                                                        
                                                                                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid diagnosis 2 reason."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                        [alert show];
                                                                                                                                    }
                                                                                                                                    
                                                                                                                                }
                                                                                                                                else
                                                                                                                                {
                                                                                                                                    a=0;
                                                                                                                                    
                                                                                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid diagnosis 1 reason ."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                    [alert show];
                                                                                                                                }
                                                                                                                                
                                                                                                                                
                                                                                                                            }
                                                                                                                            else
                                                                                                                            {
                                                                                                                                a=0;
                                                                                                                                
                                                                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid address value ."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                [alert show];
                                                                                                                                
                                                                                                                            }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                            a=0;
                                                                                                                            
                                                                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid  times/week."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                            [alert show];
                                                                                                                            
                                                                                                                        }
                                                                                                                    }
                                                                                                                    else
                                                                                                                    {
                                                                                                                        a=0;
                                                                                                                        
                                                                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid assessment / additional comments value ."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                        [alert show];
                                                                                                                        
                                                                                                                    }
                                                                                                                }
                                                                                                                else
                                                                                                                {
                                                                                                                    a=0;
                                                                                                                    
                                                                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid Reflexes C7 R value ."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                    [alert show];
                                                                                                                    
                                                                                                                }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                                a=0;
                                                                                                                
                                                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid Reflexes C7 L value ."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                [alert show];
                                                                                                                
                                                                                                            }
                                                                                                        }
                                                                                                        else
                                                                                                        {
                                                                                                            a=0;
                                                                                                            
                                                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid Reflexes C6 R value ."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                            [alert show];
                                                                                                            
                                                                                                        }
                                                                                                    }
                                                                                                    else
                                                                                                    {
                                                                                                        a=0;
                                                                                                        
                                                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid Reflexes C6 L value ."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                        [alert show];
                                                                                                        
                                                                                                    }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                    a=0;
                                                                                                    
                                                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid Reflexes C5 R value ."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                    [alert show];
                                                                                                    
                                                                                                }
                                                                                            }
                                                                                            else
                                                                                            {
                                                                                                a=0;
                                                                                                
                                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid Reflexes C5 L value ."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                [alert show];
                                                                                                
                                                                                            }
                                                                                        }
                                                                                        else
                                                                                        {
                                                                                            a=0;
                                                                                            
                                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid motor T1 R value ."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                            [alert show];
                                                                                            
                                                                                        }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                        a=0;
                                                                                        
                                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid motor T1 L value ."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                        [alert show];
                                                                                        
                                                                                    }
                                                                                }
                                                                                else
                                                                                {
                                                                                    a=0;
                                                                                    
                                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid motor C8 R value ."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                    [alert show];
                                                                                    
                                                                                }
                                                                            }
                                                                            else
                                                                            {
                                                                                a=0;
                                                                                
                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid motor C8 L value ."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                [alert show];
                                                                                
                                                                            }
                                                                        }
                                                                        else
                                                                        {
                                                                            a=0;
                                                                            
                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid motor C7 R value ."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                            [alert show];
                                                                            
                                                                        }
                                                                    }
                                                                    else
                                                                    {
                                                                        a=0;
                                                                        
                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid motor C7 L value ."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                        [alert show];
                                                                        
                                                                    }
                                                                }
                                                                else
                                                                {
                                                                    a=0;
                                                                    
                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid motor C6 R value ."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                    [alert show];
                                                                    
                                                                }
                                                            }
                                                            else
                                                            {
                                                                a=0;
                                                                
                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid motor C6 L value ."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                [alert show];
                                                                
                                                            }
                                                        }
                                                        else
                                                        {
                                                            a=0;
                                                            
                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid motor C5 R value ."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                            [alert show];
                                                            
                                                        }
                                                    }
                                                    else
                                                    {
                                                        a=0;
                                                        
                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid motor C5 L value ."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                        [alert show];
                                                        
                                                    }
                                                }
                                                else
                                                {
                                                    a=0;
                                                    
                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid sensory T1 R value ."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                    [alert show];
                                                    
                                                }
                                            }
                                            else
                                            {
                                                a=0;
                                                
                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid T1 L value ."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                [alert show];
                                                
                                            }
                                        }
                                        else
                                        {
                                            a=0;
                                            
                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid sensory c8 R value ."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                            [alert show];
                                            
                                        }
                                    }
                                    else
                                    {
                                        a=0;
                                        
                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid sensory c8 L value ."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                        [alert show];
                                        
                                    }
                                }
                                else
                                {
                                    a=0;
                                    
                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid sensory c7 R value ."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                    [alert show];
                                    
                                }
                            }
                            else
                            {
                                a=0;
                                
                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid sensory c7 L value ."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                [alert show];
                                
                            }
                        }
                        else
                        {
                            a=0;
                            
                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid sensory c6 R value ."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                            [alert show];
                            
                        }
                    }
                    else
                    {
                        a=0;
                        
                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid sensory c6 L value ."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                        [alert show];
                        
                    }
                }
                else
                {
                    a=0;
                    
                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid sensory c5 R value ."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                    [alert show];
                    
                }
            }
            else
            {
                a=0;
                
                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid sensory c5 L value ."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                [alert show];
                
            }
        }
        else
        {
            a=0;
            
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Patient Signature."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
            [alert show];
        }
        
    }
    else
    {
        a=0;
        
        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter All The Required Fields."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
        [alert show];
        
    }
    if(a==1)
    {
        NSLog(@"recorddict %@",recorddict);
        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Info!" message:@"Success!"];
        
        
        [alert setDestructiveButtonWithTitle:@"x" block:nil];
        [alert show];
    }
    
}
-(IBAction)checkboxSelected:(UIButton*)sender {
    sender.selected = !sender.selected;
    if(sender.selected){
        [sender setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
    }
    else{
        [sender setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    }
    if(fd5.selected)
    {
        fdother.hidden=NO;
    }
    else
        fdother.hidden=YES;
    if(p15.selected)
    {
        planother.hidden=NO;
    }
    else
    planother.hidden=YES;
    
}

/*
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    
    //NSLog(@"identifier %@",identifier);
    if([identifier isEqual:@"Patientdetail2"])
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
    
    if ([segue.identifier isEqualToString:@"Patientdetail2"])
    {
        
        Patient3ViewController *destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        NSLog(@"recorddict in Patient2VC first %@",recorddict);
    }
    
    
}
*/

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
