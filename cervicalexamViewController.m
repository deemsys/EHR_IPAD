//
//  cervicalexamViewController.m
//  cervicalexam
//
//  Created by DeemsysInc on 2/20/14.
//  Copyright (c) 2014 DeemsysInc. All rights reserved.
//

#import "cervicalexamViewController.h"
#import "cervicalexam2ViewController.h"

@interface cervicalexamViewController ()

@end

@implementation cervicalexamViewController
@synthesize aoseg;
@synthesize roundseg;
@synthesize p1seg;
@synthesize p2seg;
@synthesize p3seg;
@synthesize p4seg;
@synthesize p5seg;
@synthesize p6seg;
@synthesize p7seg;
@synthesize p8seg;
@synthesize p9seg;
@synthesize recorddict;
@synthesize c1;
@synthesize c2;
@synthesize c3;
@synthesize c4;
@synthesize patname;
@synthesize forward;
@synthesize muscle;
@synthesize swell;
@synthesize roundval;
@synthesize other;
@synthesize date;
@synthesize aoval;
@synthesize p1val;
@synthesize p2val;
@synthesize p3val;
@synthesize p4val;
@synthesize p5val;
@synthesize p6val;
@synthesize p7val;
@synthesize p8val;
@synthesize p9val;


- (void)viewDidLoad
{
    [super viewDidLoad];
    recorddict=[[NSMutableDictionary alloc]init];
    p1val=@"";
    p2val=@"";
    p3val=@"";
    p4val=@"";
    p5val=@"";
    p6val=@"";
    p7val=@"";
    p8val=@"";
    p9val=@"";
    roundval=@"";
    aoval=@"Excellent";
    
    
	// Do any additional setup after loading the view, typically from a nib.
}
-(IBAction)p1segselected:(id)sender
{
    if(p1seg.selectedSegmentIndex==0)
    {
        p1val=@"Left";
    }
    else if (p1seg.selectedSegmentIndex==1)
    {
        p1val=@"Right";
    }
}
-(IBAction)p2segselected:(id)sender
{
    if(p2seg.selectedSegmentIndex==0)
    {
        p2val=@"Left";
    }
    else if (p2seg.selectedSegmentIndex==1)
    {
        p2val=@"Right";
    }
}

-(IBAction)p3segselected:(id)sender
{
    if(p3seg.selectedSegmentIndex==0)
    {
        p3val=@"Left";
    }
    else if (p3seg.selectedSegmentIndex==1)
    {
        p3val=@"Right";
    }
}

-(IBAction)p4segselected:(id)sender
{
    if(p4seg.selectedSegmentIndex==0)
    {
        p4val=@"Left";
    }
    else if (p4seg.selectedSegmentIndex==1)
    {
        p4val=@"Right";
    }
}

-(IBAction)p5segselected:(id)sender
{
    if(p5seg.selectedSegmentIndex==0)
    {
        p5val=@"Left";
    }
    else if (p5seg.selectedSegmentIndex==1)
    {
        p5val=@"Right";
    }
}

-(IBAction)p6segselected:(id)sender
{
    if(p6seg.selectedSegmentIndex==0)
    {
        p6val=@"Left";
    }
    else if (p6seg.selectedSegmentIndex==1)
    {
        p6val=@"Right";
    }
}

-(IBAction)p7segselected:(id)sender
{
    if(p7seg.selectedSegmentIndex==0)
    {
        p7val=@"Left";
    }
    else if (p7seg.selectedSegmentIndex==1)
    {
        p7val=@"Right";
    }
}

-(IBAction)p8segselected:(id)sender
{
    if(p8seg.selectedSegmentIndex==0)
    {
        p8val=@"Left";
    }
    else if (p8seg.selectedSegmentIndex==1)
    {
        p8val=@"Right";
    }
}

-(IBAction)p9segselected:(id)sender
{
    if(p9seg.selectedSegmentIndex==0)
    {
        p9val=@"Left";
    }
    else if (p9seg.selectedSegmentIndex==1)
    {
        p9val=@"Right";
    }
}



-(IBAction)roundsegselected:(id)sender
{
    if(roundseg.selectedSegmentIndex==0)
    {
        roundval=@"Left";
    }
    else if (roundseg.selectedSegmentIndex==1)
    {
        roundval=@"Right";
    }
}
-(IBAction)aosegselected:(id)sender
{
    if(aoseg.selectedSegmentIndex==0)
    {
        aoval=@"Excellent";
    }
    else if (aoseg.selectedSegmentIndex==1)
    {
        aoval=@"Good";
    }
    else if (aoseg.selectedSegmentIndex==2)
    {
        aoval=@"Fair";
    }
    else if (aoseg.selectedSegmentIndex==3)
    {
        aoval=@"Severe";
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




-(IBAction)saveandcontinue:(id)sender
{
    a=1;
    temp1 =[patname.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp2 =[muscle.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp3 =[swell.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp4 =[forward.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp5 =[other.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp6=[f1.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp7=[f2.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp8=[f3.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp9=[f4.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp10=[f5.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp11=[f6.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp12=[s11.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp13=[s12.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp14=[s13.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp15=[s21.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp16=[s22.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp17=[s23.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp18=[s31.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp19=[s32.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp20=[s33.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp21=[s41.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp22=[s42.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp23=[s43.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp24=[s51.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp25=[s52.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp26=[s53.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp27=[ot11.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp28=[ot12.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp29=[ot21.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp30=[ot22.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp31=[ot31.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp32=[ot32.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp33=[ot41.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp34=[ot42.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp35=[ot51.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp36=[ot52.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    if(c1.selected)
    {
        
        allsoft.text=@"All Soft Tissue Unremarkable";
        [recorddict setValue:allsoft.text forKey:@"allsoft"];
    }
    else
    {
        allsoft.text=NULL;
        [recorddict  setValue:@"" forKey:@"allsoft"];
    }
    if(c2.selected)
    {
        
        func.text=@"All Soft Tissue Unremarkable";
        [recorddict setValue:func.text forKey:@"func"];
    }
    else
    {
        func.text=NULL;
        [recorddict  setValue:@"" forKey:@"func"];

    }
    if(c3.selected)
        {
            
            sublax.text=@"All Soft Tissue Unremarkable";
            [recorddict  setValue:sublax.text forKey:@"sublax"];
        }
        else
        {
            sublax.text=NULL;
               [recorddict  setValue:@"" forKey:@"sublax"];
        }
    if(c4.selected)
            {
                
                ortho.text=@"All Soft Tissue Unremarkable";
                [recorddict  setValue:ortho.text forKey:@"ortho"];
            }
            else
            {
                ortho.text=NULL;
                    [recorddict  setValue:@"" forKey:@"ortho"];
                
            }
//    NSLog(@"p1val %@",p1val);
    [recorddict setValue:p1val forKey:@"p1"];
    [recorddict setValue:p2val forKey:@"p2"];
    [recorddict setValue:p3val forKey:@"p3"];
    [recorddict setValue:p4val forKey:@"p4"];
    [recorddict setValue:p5val forKey:@"p5"];
    [recorddict setValue:p6val forKey:@"p6"];
    [recorddict setValue:p7val forKey:@"p7"];
    [recorddict setValue:p8val forKey:@"p8"];
    [recorddict setValue:p9val forKey:@"p9"];
    
    [recorddict setValue:roundval forKey:@"round"];
    [recorddict setValue:aoval forKey:@"aoval"];
//    NSLog(@"recorddict b4 %@",recorddict);
    if(([temp1 length]!=0)&&
       ([date.text length]!=0))
    {
        if([self validateNames:temp1]==1)
        {
            if([self validateDate:[date text]]==1)
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
                                                                                            if((([temp21 length]>0)&&([self validateNames:temp21]==1))||([temp21 length]==0))
                                                                                            {
                                                                                                if((([temp22 length]>0)&&([self validateNames:temp22]==1))||([temp22 length]==0))
                                                                                                {
                                                                                                    if((([temp23 length]>0)&&([self validateNames:temp23 ]==1))||([temp23 length]==0))
                                                                                                    {
                                                                                                        if((([temp24 length]>0)&&([self validateNames:temp24]==1))||([temp24 length]==0))
                                                                                                        {
                                                                                                            if((([temp25 length]>0)&&([self validateNames:temp25 ]==1))||([temp25 length]==0))
                                                                                                            {
                                                                                                                if((([temp26 length]>0)&&([self validateNames:temp26 ]==1))||([temp26 length]==0))
                                                                                                                {
                                                                                                                    if((([temp27 length]>0)&&([self validateNames:temp27]==1))||([temp27 length]==0))
                                                                                                                    {
                                                                                                                        if((([temp28 length]>0)&&([self validateNames:temp28 ]==1))||([temp28 length]==0))
                                                                                                                        {
                                                                                                                            if((([temp29 length]>0)&&([self validateNames:temp29]==1))||([temp29 length]==0))
                                                                                                                            {
                                                                                                                                if((([temp30 length]>0)&&([self validateNames:temp30]==1))||([temp30 length]==0))
                                                                                                                                {
                                                                                                                                    if((([temp31 length]>0)&&([self validateNames:temp31]==1))||([temp31 length]==0))
                                                                                                                                    {
                                                                                                                                        if((([temp32 length]>0)&&([self validateNames:temp32 ]==1))||([temp32 length]==0))
                                                                                                                                        {
                                                                                                                                            if((([temp33 length]>0)&&([self validateNames:temp33]==1))||([temp33 length]==0))
                                                                                                                                            {
                                                                                                                                                if((([temp34 length]>0)&&([self validateNames:temp34 ]==1))||([temp34 length]==0))
                                                                                                                                                {
                                                                                                                                                    if((([temp35 length]>0)&&([self validateNames:temp35]==1))||([temp35 length]==0))
                                                                                                                                                    {
                                                                                                                                                        if((([temp36 length]>0)&&([self validateNames:temp36 ]==1))||([temp36 length]==0))
                                                                                                                                                        {
                                                                                                                                                            
                                                                                                                                                            [recorddict setValue:patname.text forKey:@"Patient Name"];
                                                                                                                                                            [recorddict setValue:date.text forKey:@"date"];
                                                                                                                                                            [recorddict setValue:muscle.text forKey:@"Musle"];
                                                                                                                                                            [recorddict setValue:swell.text forKey:@"swell"];
                                                                                                                                                            [recorddict setValue:forward.text forKey:@"forward"];
                                                                                                  
                                                                                                                                                            [recorddict setValue:f1.text forKey:@"f1"];
                                                                                                                                                            [recorddict setValue:f2.text forKey:@"f2"];
                                                                                                                                                            [recorddict setValue:f3.text forKey:@"f3"];
                                                                                                                                                           [recorddict setValue:f4.text forKey:@"f4"];
                                                                                                                                                            [recorddict setValue:f5.text forKey:@"f5"];
                                                                                                                                                            [recorddict setValue:f6.text forKey:@"f6"];
                                                                                                                                                            [recorddict setValue:s11.text forKey:@"s11"];
                                                                                                                                                            [recorddict setValue:s12.text forKey:@"s12"];
                                                                                                                                                            [recorddict setValue:s13.text forKey:@"s13"];
                                                                                                                                                            [recorddict setValue:s21.text forKey:@"s21"];
                                                                                                                                                            [recorddict setValue:s22.text forKey:@"s22"];
                                                                                                                                                            [recorddict setValue:s23.text forKey:@"s23"];
                                                                                                                                                            [recorddict setValue:s31.text forKey:@"s31"];
                                                                                                                                                            [recorddict setValue:s32.text forKey:@"s32"];
                                                                                                                                                            [recorddict setValue:s33.text forKey:@"s33"];
                                                                                                                                                            [recorddict setValue:s41.text forKey:@"s41"];
                                                                                                                                                            [recorddict setValue:s42.text forKey:@"s42"];
                                                                                                                                                            [recorddict setValue:s43.text forKey:@"s43"];
                                                                                                                                                            [recorddict setValue:s51.text forKey:@"s51"];
                                                                                                                                                            [recorddict setValue:s52.text forKey:@"s52"];
                                                                                                                                                            [recorddict setValue:s53.text forKey:@"s53"];
                                                                                                                                                            [recorddict setValue:ot11.text forKey:@"ot11"];
                                                                                                                                                            [recorddict setValue:ot12.text forKey:@"ot12"];
                                                                                                                                                            [recorddict setValue:ot21.text forKey:@"ot21"];
                                                                                                                                                            [recorddict setValue:ot22.text forKey:@"ot22"];
                                                                                                                                                            [recorddict setValue:ot31.text forKey:@"ot31"];
                                                                                                                                                            [recorddict setValue:ot32.text forKey:@"ot32"];
                                                                                                                                                            [recorddict setValue:ot41.text forKey:@"ot41"];
                                                                                                                                                            [recorddict setValue:ot42.text forKey:@"ot42"];
                                                                                                                                                            [recorddict setValue:ot51.text forKey:@"ot51"];
                                                                                                                                                            [recorddict setValue:ot52.text forKey:@"ot52"];
                                                                                                                                                            
                                                                                                                                                            
//                                                                                                                                                            NSLog(@"record %@",recorddict);
                                                                                                                                                            if(a==1)
                                                                                                                                                            {
                                                                                                                                                                [self performSegueWithIdentifier:@"cervical1to2" sender:self];
                                                                                                                                                            }
                                                                                                                                                            
                                                                                                                                                        }
                                                                                                                                                        else
                                                                                                                                                        { 
                                                                                                                                                            a=0;
                                                                                                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid ULTT R field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                                            [alert show];
                                                                                                                                                        }
                                                                                                                                                        
                                                                                                                                                    }
                                                                                                                                                    else
                                                                                                                                                    {
                                                                                                                                                        a=0;
                                                                                                                                                        
                                                                                                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid ULTT L field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                                        [alert show];
                                                                                                                                                    }
                                                                                                                                                    
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                    a=0;
                                                                                                                                                    
                                                                                                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid Adsons R field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                                    [alert show];
                                                                                                                                                }
                                                                                                                                                
                                                                                                                                            }
                                                                                                                                            else
                                                                                                                                            {
                                                                                                                                                a=0;
                                                                                                                                                
                                                                                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid Adson L field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                                [alert show];
                                                                                                                                            }
                                                                                                                                            
                                                                                                                                        }
                                                                                                                                        else
                                                                                                                                        {
                                                                                                                                            a=0;
                                                                                                                                            
                                                                                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid soto hall R field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                            [alert show];
                                                                                                                                        }
                                                                                                                                        
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                        a=0;
                                                                                                                                        
                                                                                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid soto hall L field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                        [alert show];
                                                                                                                                    }
                                                                                                                                    
                                                                                                                                }
                                                                                                                                else
                                                                                                                                {
                                                                                                                                    a=0;
                                                                                                                                    
                                                                                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid Forminal R field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                    [alert show];
                                                                                                                                }
                                                                                                                                
                                                                                                                            }
                                                                                                                            else
                                                                                                                            {
                                                                                                                                a=0;
                                                                                                                                
                                                                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid Forminal comp L field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                [alert show];
                                                                                                                            }
                                                                                                                            
                                                                                                                            
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                            a=0;
                                                                                                                            
                                                                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid Hautants R field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                            [alert show];
                                                                                                                        }
                                                                                                                        
                                                                                                                    }
                                                                                                                    else
                                                                                                                    {
                                                                                                                        a=0;
                                                                                                                        
                                                                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid Hautants field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                        [alert show];
                                                                                                                    }
                                                                                                                }
                                                                                                                else
                                                                                                                {
                                                                                                                    a=0;
                                                                                                                    
                                                                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid subluxation T7-8 field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                    [alert show];
                                                                                                                }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                                a=0;
                                                                                                                
                                                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid subluxation T6-7 field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                [alert show];
                                                                                                            }
                                                                                                        }
                                                                                                        else
                                                                                                        {
                                                                                                            a=0;
                                                                                                            
                                                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid subluxation T5-6 field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                            [alert show];
                                                                                                        }
                                                                                                    }
                                                                                                    else
                                                                                                    {
                                                                                                        a=0;
                                                                                                        
                                                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid subluxation T4-5field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                        [alert show];
                                                                                                    }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                    a=0;
                                                                                                    
                                                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid subluxation T3-4 field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                    [alert show];
                                                                                                }
                                                                                            }
                                                                                            else
                                                                                            {
                                                                                                a=0;
                                                                                                
                                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid subluxation T2-3 field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                [alert show];
                                                                                            }
                                                                                        }
                                                                                        else
                                                                                        {
                                                                                            a=0;
                                                                                            
                                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid subluxation T1-2 field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                            [alert show];
                                                                                        }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                        a=0;
                                                                                        
                                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid subluxation c7-T1 field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                        [alert show];
                                                                                    }
                                                                                }
                                                                                else
                                                                                {
                                                                                    a=0;
                                                                                    
                                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid subluxation c6-7 field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                    [alert show];
                                                                                }
                                                                            }
                                                                            else
                                                                            {
                                                                                a=0;
                                                                                
                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid subluxation c5-6 field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                [alert show];
                                                                            }
                                                                        }
                                                                        else
                                                                        {
                                                                            a=0;
                                                                            
                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid subluxation c4-5 field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                            [alert show];
                                                                        }
                                                                    }
                                                                    else
                                                                    {
                                                                        a=0;
                                                                        
                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid subluxation c3-4field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                        [alert show];
                                                                    }
                                                                }
                                                                else
                                                                {
                                                                    a=0;
                                                                    
                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid subluxation c2-3 field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                    [alert show];
                                                                }
                                                            }
                                                            else
                                                            {
                                                                a=0;
                                                                
                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid subluxation c1-2 field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                [alert show];
                                                            }
                                                        }
                                                        else
                                                        {
                                                            a=0;
                                                            
                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid subluxation c0-1 field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                            [alert show];
                                                        }
                                                        
                                                    }
                                                    else
                                                    {
                                                        a=0;
                                                        
                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid rotation R field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                        [alert show];
                                                    }
                                                    
                                                }
                                                else
                                                {
                                                    a=0;
                                                    
                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid rotation L field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                    [alert show];
                                                }
                                                
                                            }
                                            else
                                            {
                                                a=0;
                                                
                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid lateral R  field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                [alert show];
                                            }
                                            
                                        }
                                        else
                                        {
                                            a=0;
                                            
                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid lateral L field field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                            [alert show];
                                        }
                                        
                                    }
                                    else
                                    {
                                        a=0;
                                        
                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid extension field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                        [alert show];
                                    }
                                    
                                }
                                else
                                {
                                    a=0;
                                    
                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid flexion field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                    [alert show];
                                }
                                
                            }
                            else
                            {
                                a=0;
                                
                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid other field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                [alert show];
                            }
                            
                        }
                        else
                        {
                            a=0;
                            
                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid forward field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                            [alert show];
                        }
                        
                    }
                    else
                    {
                        a=0;
                        
                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid swell field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                        [alert show];
                    }
                    
                }
                else
                {
                    a=0;
                    
                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid muscle field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
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
            
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid patient name."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
            [alert show];
        }
    }
    else
    {
        a=0;
        
        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter All The Required Fields."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
        [alert show];
    }
    
    
}

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    
    //NSLog(@"identifier %@",identifier);
    if([identifier isEqual:@"cervical1to2"])
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
    
    if ([segue.identifier isEqualToString:@"cervical1to2"])
    {
        
        cervicalexam2ViewController *destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        NSLog(@"recorddict in cervical first %@",recorddict);
    }
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
