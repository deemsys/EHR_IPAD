//
//  lumbopelvic1ViewController.m
//  EHR
//
//  Created by DeemsysInc on 2/27/14.
//  Copyright (c) 2014 DeemSysInc. All rights reserved.
//

#import "lumbopelvic1ViewController.h"
#import "BlockAlertView.h"
@interface lumbopelvic1ViewController ()

@end

@implementation lumbopelvic1ViewController
@synthesize mo_l1l;
@synthesize mol1r;
@synthesize mo_l2l;
@synthesize mo_l2r;
@synthesize mo_l3l;
@synthesize mo_l3r;
@synthesize mo_l4l;
@synthesize mo_l4r;
@synthesize mo_l5l;
@synthesize mo_l5r;
@synthesize mo_l6l;
@synthesize mo_l6r;
@synthesize mo_sil;
@synthesize mo_sir;
@synthesize ref_l4l;
@synthesize ref_l4r;
@synthesize ref_l5l;
@synthesize ref_l5r;
@synthesize ref_sil;
@synthesize ref_sir;
@synthesize diag1;
@synthesize diag2;
@synthesize diag3;
@synthesize diag4;
@synthesize diag5;
@synthesize plan1;
@synthesize plan2;
@synthesize physin;
@synthesize recorddict;
@synthesize functionaldeficit;
@synthesize treatment;
@synthesize patient;
@synthesize fdother;
@synthesize planother;
@synthesize button6;
@synthesize button7;
@synthesize button8;
@synthesize button9;
@synthesize button10;
@synthesize button11;
@synthesize button12;
@synthesize button13;
@synthesize button14;
@synthesize button15;
@synthesize button16;
@synthesize button17;
@synthesize button18;
@synthesize button19;
@synthesize button20;



-(BOOL)validateNames:(NSString *)country1
{
    NSString *countryFormat1 =@"[0-5]{1}";
    
    // [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
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
-(BOOL)validateNamefield:(NSString *)country1
{
    
    NSString *countryFormat1 =@"(?:[A-Za-z0-9]+[A-Za-z0-9]*)";
    // [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
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
    if (button5.selected) {
        fdother.hidden=NO;
    }
    else
        fdother.hidden=YES;
    if (button20.selected) {
        planother.hidden=NO;
    }
    else
        planother.hidden=YES;
    
}
- (IBAction)patient:(id)sender
{
    
    UISegmentedControl *segmentedControl = (UISegmentedControl *) sender;
    NSInteger selectedSegment = segmentedControl.selectedSegmentIndex;
    
    if (selectedSegment == 0)
    {
        patientstatus=@"Excellent";
    }
    else if(selectedSegment==1)
    {
        patientstatus=@"Good";
    }
    else if(selectedSegment==2)
    {
        patientstatus=@"Fair";
    }else if(selectedSegment==3)
    {
        patientstatus=@"Poor";
    }
    
}
- (IBAction)CANCEL:(id)sender
{
    for (UIView *subview in [self.view subviews])
        if([subview isKindOfClass:[UITextField class]])
            [(UITextField*)subview setText:@""];
}

- (IBAction)cancel:(id)sender
{
    
}

- (IBAction)SAVE:(id)sender
{
    
    functionaldeficit=[[NSMutableArray alloc]init];
    treatment=[[NSMutableArray alloc]init];
    
    if(button1.selected)
    {
        //        NSLog(@"=============================yes");
        sitting=@"Sitting to standing";
        [recorddict setValue:sitting forKey:@"sitting"];
    }
    else
    {
        sitting=NULL;
        [recorddict  setValue:@"" forKey:@"sitting"];
    }
    if(button2.selected)
    {
        lifting=@"Lifting";
        [recorddict setValue:lifting forKey:@"lift"];
        
    }
    else
    {
        lifting=NULL;
        [recorddict  setValue:@"" forKey:@"lifting"];
    }
    if(button3.selected)
    {
        walking=@"Walking";
        [recorddict setValue:walking forKey:@"walk"];
        
    }
    else
    {
        walking=NULL;
        [recorddict  setValue:@"" forKey:@"walk"];
    }
    if(button4.selected)
    {
        
        stairs=@"Stairs";
        [recorddict setValue:stairs forKey:@"stair"];
    }
    else
    {
        stairs=NULL;
        [recorddict  setValue:@"" forKey:@"sitting"];
    }
    if(button5.selected)
    {
        other=@"other";
        [recorddict setValue:other forKey:@"other"];
        
    }
    else
    {
        other=NULL;
        [recorddict  setValue:@"" forKey:@"other"];
    }
    
    if(button6.selected)
    {        spi=@"Spinal Decompression";
        [recorddict setValue:spi forKey:@"spinal"];
    }
    else
    {
        spi=NULL;
        [recorddict  setValue:@"" forKey:@"spinal"];
    }
    if(button7.selected)
    {
        
        sup=@"Supplementation";
        [recorddict setValue:sup forKey:@"supplement"];
    }
    else
    {
        sup=NULL;
        [recorddict  setValue:@"" forKey:@"supplement"];
    }
    if(button8.selected)
    {
        nerve=@"Nerve Conduction";
        [recorddict setValue:nerve forKey:@"nerve"];
    }
    else
    {
        nerve=NULL;
        [recorddict  setValue:@"" forKey:@"nerve"];
    }
    if(button9.selected)
    {
        chir=@"Chiropractic";
        [recorddict setValue:chir forKey:@"chiro"];
    }
    else
    {
        chir=NULL;
        [recorddict  setValue:@"" forKey:@"chiro"];
    }
    if(button10.selected)
    {
        
        ct=@"CT Scan";
        [recorddict setValue:ct forKey:@"ct"];
    }
    else
    {
        ct=NULL;
        [recorddict  setValue:@"" forKey:@"ct"];
    }
    if(button11.selected)
    {
        hep=@"HEP";
        [recorddict setValue:hep forKey:@"hep"];
        
    }
    else
    {
        hep=NULL;
        [recorddict  setValue:@"" forKey:@"hep"];
    }
    if(button12.selected)
    {
        emg=@"EMG";
        [recorddict setValue:emg forKey:@"emg"];
        
    }
    else
    {
        emg=NULL;
        [recorddict  setValue:@"" forKey:@"emg"];
    }
    if(button13.selected)
    {
        phys=@"Physical Therapy";
        [recorddict setValue:phys forKey:@"physical"];
    }
    else
    {
        phys=NULL;
        [recorddict  setValue:@"" forKey:@"physical"];
    }
    if(button14.selected)
    {
        radio=@"Radiographic X-Ray";
        [recorddict setValue:radio forKey:@"radio"];
        
    }
    else
    {
        radio=NULL;
        [recorddict  setValue:@"" forKey:@"radio"];
    }
    if(button15.selected)
    {
        mod=@"Modalities";
        [recorddict setValue:mod forKey:@"modal"];
        
    }
    else
    {
        mod=NULL;
        [recorddict  setValue:@"" forKey:@"modal"];
    }
    if(button16.selected)
    {
        outside=@"OutsideReferral";
        [recorddict setValue:outside forKey:@"outside"];
    }
    else
    {
        outside=NULL;
        [recorddict  setValue:@"" forKey:@"outside"];
    }
    if(button17.selected)
    {
        orthotic=@"Orthotics/Bracing";
        [recorddict setValue:orthotic forKey:@"orthotic"];
        
    }
    else
    {
        orthotic=NULL;
        [recorddict  setValue:@"" forKey:@"orthotic"];
    }
    if(button18.selected)
    {
        label1=@"MRI";
        [recorddict setValue:label1 forKey:@"MRI"];
    }
    else
    {
        label1=NULL;
        [recorddict  setValue:@"" forKey:@"MRI"];
    }
    if(button19.selected)
    {
        dc=@"D/C";
        [recorddict setValue:dc forKey:@"dc"];
        
    }
    else
    {
        dc=NULL;
        [recorddict  setValue:@"" forKey:@"dc"];
    }
    if(button20.selected)
    {
        other1=@"other1";
        [recorddict setValue:other1 forKey:@"other1"];
        
    }
    else
    {
        other1=NULL;
        [recorddict  setValue:@"" forKey:@"other1"];
    }
    
    if ([assessment.text  isEqual: @""])
    {
        assessment.text=@"";
        [recorddict setValue:assessment.text forKey:@"assessment"];
    }
    else
    {
        [recorddict setValue:assessment.text forKey:@"assessment"];
    }
    temp1 =[mo_l1l.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp2 =[mol1r.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp3 =[mo_l2l.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp4 =[mo_l2r.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp5 =[mo_l3l.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp6=[mo_l3r.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp7=[mo_l4l.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp8=[mo_l4r.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp9=[mo_l5l.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp10=[mo_l5r.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp11=[mo_l6l.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp12=[mo_l6r.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp13=[mo_sil.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp14=[mo_sir.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp15=[ref_l4l.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp16=[ref_l4r.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp17=[ref_l5l.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp18=[ref_l5r.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp19=[ref_sil.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp20=[ref_sir.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp21=[diag1.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp22=[diag2.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp23=[diag3.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp24=[diag4.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp25=[diag5.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp26=[plan1.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp27=[plan2.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp28=[physin.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    if([temp28 length]!=0)
    {
        if((([temp1 length]>0)&&([self validateNames:temp1]==1))||([temp1 length]==0))
        {
            
            if((([temp2 length]>0)&&([self validateNames:temp2]==1))||([temp2 length]==0))
            {
                if((([temp3 length]>0)&&([self validateNames:temp3 ]==1))||([temp3 length]==0))
                {
                    if((([temp4 length]>0)&&([self validateNames:temp4 ]==1))||([temp4 length]==0))
                    {
                        if((([temp5 length]>0)&&([self validateNames:temp5]==1))||([temp5 length]==0))
                        {
                            if((([temp6 length]>0)&&([self validateNames:temp6]==1))||([temp6 length]==0))
                            {
                                if((([temp7 length]>0)&&([self validateNames:temp7]==1))||([temp7 length]==0))
                                {
                                    if((([temp8 length]>0)&&([self validateNames:temp8]==1))||([temp8 length]==0))
                                    {
                                        if((([temp9 length]>0)&&([self validateNames:temp9]==1))||([temp9 length]==0))
                                        {
                                            if((([temp10 length]>0)&&([self validateNames:temp10 ]==1))||([temp10 length]==0))
                                            {
                                                if((([temp11 length]>0)&&([self validateNames:temp11]==1))||([temp11 length]==0))
                                                {
                                                    if((([temp12 length]>0)&&([self validateNames:temp12]==1))||([temp12 length]==0))
                                                    {
                                                        if((([temp13 length]>0)&&([self validateNames:temp13]==1))||([temp13 length]==0))
                                                        {
                                                            if((([temp14 length]>0)&&([self validateNames:temp14]==1))||([temp14 length]==0))
                                                            {
                                                                if((([temp15 length]>0)&&([self validateNames:temp15]==1))||([temp15 length]==0))
                                                                {
                                                                    if((([temp16 length]>0)&&([self validateNames:temp16]==1))||([temp16 length]==0))
                                                                    {
                                                                        if((([temp17 length]>0)&&([self validateNames:temp17]==1))||([temp17 length]==0))
                                                                        {
                                                                            if((([temp18 length]>0)&&([self validateNames:temp18]==1))||([temp18 length]==0))
                                                                            {
                                                                                if((([temp19 length]>0)&&([self validateNames:temp19]==1))||([temp19 length]==0))
                                                                                {
                                                                                    if((([temp20 length]>0)&&([self validateNames:temp20]==1))||([temp20 length]==0))
                                                                                    {
                                                                                        if((([temp21 length]>0)&&([self validateNamefield:temp21]==1))||([temp21 length]==0))
                                                                                        {
                                                                                            if((([temp22 length]>0)&&([self validateNamefield:temp22]==1))||([temp22 length]==0))
                                                                                            {
                                                                                                if((([temp23 length]>0)&&([self validateNamefield:temp23 ]==1))||([temp23 length]==0))
                                                                                                {
                                                                                                    if((([temp24 length]>0)&&([self validateNamefield:temp24]==1))||([temp24 length]==0))
                                                                                                    {
                                                                                                        if((([temp25 length]>0)&&([self validateNamefield:temp25 ]==1))||([temp25 length]==0))
                                                                                                        {
                                                                                                            if((([temp26 length]>0)&&([self validateNamefield:temp26 ]==1))||([temp26 length]==0))
                                                                                                            {
                                                                                                                if((([temp27 length]>0)&&([self validateNamefield:temp27]==1))||([temp27 length]==0))
                                                                                                                {
                                                                                                                    if((([temp28 length]>0)&&([self validateNamefield:temp28]==1))||([temp28 length]==0))
                                                                                                                    {
                                                                                                                        c=1;
                                                                                                                        
                                                                                                                        [recorddict setValue:mo_l1l.text forKey:@"Motor level1 left"];
                                                                                                                        [recorddict setValue:mol1r.text forKey:@"Motor level1 right"];
                                                                                                                        [recorddict setValue:mo_l2l.text forKey:@"Motor level2 left"];
                                                                                                                        [recorddict setValue:mo_l2r.text forKey:@"Motor level2 right"];
                                                                                                                        [recorddict setValue:mo_l3l.text forKey:@"Motor level3 left"];
                                                                                                                        [recorddict setValue:mo_l3r.text forKey:@"Motor level3 right"];
                                                                                                                        [recorddict setValue:mo_l4l.text forKey:@"Motor level4 left"];
                                                                                                                        [recorddict setValue:mo_l4r.text forKey:@"Motor level4 right"];
                                                                                                                        [recorddict setValue:mo_l5l.text forKey:@"Motor level5 left"];
                                                                                                                        [recorddict setValue:mo_l5r.text forKey:@"Motor level5 right"];
                                                                                                                        [recorddict setValue:mo_sil.text forKey:@"Motor SI left"];
                                                                                                                        [recorddict setValue:mo_sir.text forKey:@"Motor SI right"];
                                                                                                                        [recorddict setValue:ref_l4l.text forKey:@"reflexes level4  left"];
                                                                                                                        [recorddict setValue:ref_l4r.text forKey:@"reflexes level4 right"];
                                                                                                                        [recorddict setValue:ref_l5l.text forKey:@"reflexes level5 left"];
                                                                                                                        [recorddict setValue:ref_l5r.text forKey:@"reflexes level5 right"];
                                                                                                                        [recorddict setValue:ref_sil.text forKey:@"reflexes SI left"];
                                                                                                                        [recorddict setValue:ref_sir.text forKey:@"reflexes SI right"];
                                                                                                                        [recorddict setValue:diag1.text forKey:@"Diagnosis1"];
                                                                                                                        [recorddict setValue:diag2.text forKey:@"Diagnosis2"];
                                                                                                                        [recorddict setValue:diag3.text forKey:@"Diagnosis3"];
                                                                                                                        [recorddict setValue:diag4.text forKey:@"Diagnosis4"];
                                                                                                                        [recorddict setValue:diag5.text forKey:@"Diagnosis5"];
                                                                                                                        [recorddict setValue:plan1.text forKey:@"plan1"];
                                                                                                                        [recorddict setValue:plan2.text forKey:@"plan2"];
                                                                                                                        [recorddict setValue:physin.text forKey:@"Physician signature"];
                                                                                                                        [recorddict setValue:patientstatus forKey:@"patient status"];
                                                                                                                        [recorddict setValue:fdother.text forKey:@"FDOther"];
                                                                                                                        [recorddict setValue:planother.text forKey:@"Planother"];
                                                                                                                        NSLog(@"success!!!recorddict %@",recorddict);
                                                                                                                    }
                                                                                                                    else
                                                                                                                    {
                                                                                                                        c=0;
                                                                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid Physician signature."];
                                                                                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                        [alert show];
                                                                                                                    }
                                                                                                                }
                                                                                                                else
                                                                                                                {
                                                                                                                    c=0;
                                                                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid plan2."];
                                                                                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                    [alert show];
                                                                                                                }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                                c=0;
                                                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid plan1."];
                                                                                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                [alert show];
                                                                                                            }
                                                                                                        }
                                                                                                        else
                                                                                                        {
                                                                                                            c=0;
                                                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid Diagnosis5."];
                                                                                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                            [alert show];
                                                                                                        }
                                                                                                    }
                                                                                                    else
                                                                                                    {
                                                                                                        c=0;
                                                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid Diagnosis4."];
                                                                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                        [alert show];
                                                                                                    }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                    c=0;
                                                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid Diagnosis3."];
                                                                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                    [alert show];
                                                                                                }
                                                                                            }
                                                                                            else
                                                                                            {
                                                                                                c=0;
                                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid Diagnosis2."];
                                                                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                [alert show];
                                                                                            }
                                                                                        }
                                                                                        else
                                                                                        {
                                                                                            c=0;
                                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid Diagnosis1."];
                                                                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                            [alert show];
                                                                                        }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                        c=0;
                                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid Reflexes SI right."];
                                                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                        [alert show];
                                                                                    }
                                                                                }
                                                                                else
                                                                                {
                                                                                    c=0;
                                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid Reflexes SI left."];
                                                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                    [alert show];
                                                                                }
                                                                            }
                                                                            else
                                                                            {
                                                                                c=0;
                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid Reflexes level5 right."];
                                                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                [alert show];
                                                                            }
                                                                        }
                                                                        else
                                                                        {
                                                                            c=0;
                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid Reflexes level5 left."];
                                                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                            [alert show];
                                                                        }
                                                                    }
                                                                    else
                                                                    {
                                                                        c=0;
                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid Reflexes level4 right."];
                                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                        [alert show];
                                                                    }
                                                                }
                                                                else
                                                                {
                                                                    c=0;
                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid Reflexes level4 left."];
                                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                    [alert show];
                                                                }
                                                            }
                                                            else
                                                            {
                                                                c=0;
                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid Motor SI right."];
                                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                [alert show];
                                                            }
                                                        }
                                                        else
                                                        {
                                                            c=0;
                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid Motor SI left."];
                                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                            [alert show];
                                                        }
                                                    }
                                                    else
                                                    {
                                                        c=0;
                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid Motor level6 right."];
                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                        [alert show];
                                                    }
                                                }
                                                else
                                                {
                                                    c=0;
                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid Motor level6 left."];
                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                    [alert show];
                                                }
                                            }
                                            
                                            else
                                            {
                                                c=0;
                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid Motor level5 right."];
                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                [alert show];
                                            }
                                        }
                                        else
                                        {
                                            c=0;
                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid Motor level5 left."];
                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                            [alert show];
                                        }
                                    }
                                    else
                                    {
                                        c=0;
                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid Motor level4 right."];
                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                        [alert show];
                                    }
                                }
                                else
                                {
                                    c=0;
                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid Motor level4 left."];
                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                    [alert show];
                                }
                            }
                            else
                            {
                                c=0;
                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid Motor level3 right."];
                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                [alert show];
                            }
                        }
                        else
                        {
                            c=0;
                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid Motor level3 left."];
                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                            [alert show];
                        }
                    }
                    else
                    {
                        c=0;
                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid Motor level2 right."];
                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                        [alert show];
                    }
                }
                else
                {c=0;
                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid Motor level2 left."];
                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                    [alert show];
                }
            }
            else
            {
                c=0;
                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid Motor level1 right."];
                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                [alert show];
            }
        }
        else
        {
            c=0;
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid Motor level1 left."];
            [alert setDestructiveButtonWithTitle:@"x" block:nil];
            [alert show];
        }
    }
    
    else
    {
        c=0;
        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Physician Signature."];
        [alert setDestructiveButtonWithTitle:@"x" block:nil];
        [alert show];
    }
    if (c==1) {
        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Info!" message:@"Success."];
        [alert setDestructiveButtonWithTitle:@"x" block:nil];
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
    [super viewDidLoad];
    patientstatus=@"Excellent";
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    
 /*   [mo_l1l release];
    [mol1r release];
    [mo_l2l release];
    [mo_l2r release];
    [mo_l3l release];
    [mo_l3r release];
    [mo_l4l release];
    [mo_l4r release];
    [mo_l5l release];
    [mo_l5r release];
    [mo_l6l release];
    [mo_l6r release];
    [ref_l4l release];
    [ref_l4r release];
    [ref_l5l release];
    [ref_l5r release];
    [mo_sil release];
    [mo_sir release];
    [ref_sil release];
    [ref_sir release];
    [diag1 release];
    [diag2 release];
    [diag3 release];
    [diag4 release];
    [diag5 release];
    [plan1 release];
    [plan2 release];
    [physin release];
    [sitting release];
    [lifting release];
    [walking release];
    [stairs release];
    [other release];
    [button1 release];
    [button2 release];
    [button3 release];
    [button4 release];
    [button5 release];
    [button6 release];
    [button7 release];
    [button8 release];
    [button9 release];
    [button10 release];
    [button11 release];
    [button12 release];
    [button13 release];
    [button14 release];
    [button15 release];
    [button16 release];
    [button17 release];
    [button18 release];
    [button19 release];
    [button20 release];
    [patient release];
    [patient release];
    [assessment release];
    [fdother release];
    
    [planother release];*/
    [super dealloc];
}
@end

