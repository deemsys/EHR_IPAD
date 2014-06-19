//
//  dcfee2ViewController.m
//  dcfee
//
//  Created by DeemsysInc on 4/12/14.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//

#import "dcfee2ViewController.h"
#import "dcfee3ViewController.h"
#import "BlockAlertView.h"

@interface dcfee2ViewController ()

@end

@implementation dcfee2ViewController
@synthesize fitting;
@synthesize activities;
@synthesize selfcare;
@synthesize training;
@synthesize wostimulation;
@synthesize wstimulation;
@synthesize regions1;
@synthesize regions2;
@synthesize regions3;
@synthesize extremity;
@synthesize urinalysis;
@synthesize muscletest;
@synthesize muscletesthand;
@synthesize rangeofmotion;
@synthesize rangeofmotionhand;
@synthesize wofwave;
@synthesize wfwave;
@synthesize sensory;
@synthesize upper;
@synthesize lower;
@synthesize trunk;
@synthesize rl;
@synthesize test;
@synthesize evaluation;
@synthesize recorddict;
@synthesize page3;

-(BOOL)validateNumbers:(NSString*)number
{
    NSString *numberFormat1 =  @"[0-9]{1,10}?";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *numberTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",numberFormat1];
    return [numberTest1 evaluateWithObject:number];
    
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
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)back:(id)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];
}

- (IBAction)next:(id)sender
{
    //recorddict=[[NSMutableDictionary alloc]init];
    temp1 =[fitting.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp2 =[activities.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp3 =[selfcare.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp4 =[training.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp5=[wostimulation.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp6 =[wstimulation.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp7=[regions1.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp8=[regions2.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp9=[regions3.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp10=[extremity.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp11=[urinalysis.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp12=[muscletest.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp13=[muscletesthand.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp14=[rangeofmotion.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp15=[rangeofmotionhand.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp16=[wofwave.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp17=[wfwave.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp18=[sensory.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp19=[upper.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp20=[lower.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp21=[trunk.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp22=[rl.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp23=[test.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp24=[evaluation.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    
    if((([temp1 length]>0)&&([self validateNumbers:temp1]==1))||([temp1 length]==0))
    {
        if((([temp2 length]>0)&&([self validateNumbers:temp2]==1))||([temp2 length]==0))
        {
            if((([temp3 length]>0)&&([self validateNumbers:temp3]==1))||([temp3 length]==0))
            {
                if((([temp4 length]>0)&&([self validateNumbers:temp4]==1))||([temp4 length]==0))
                {
                    if((([temp5 length]>0)&&([self validateNumbers:temp5]==1))||([temp5 length]==0))
                    {
                        //                        if ([self validateDate:temp23]==1)
                        //                        {
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
                                                                                            if((([temp23 length]>0)&&([self validateNumbers:temp23]==1))||([temp23 length]==0))
                                                                                            {
                                                                                                if((([temp24 length]>0)&&([self validateNumbers:temp24]==1))||([temp24 length]==0))
                                                                                                {
                                                                                                    
                                                                                                    calc3=([fitting.text floatValue]+[activities.text floatValue]+[muscletest.text floatValue]+[muscletesthand.text floatValue]+[rangeofmotion.text floatValue]+[rangeofmotionhand.text floatValue]+[urinalysis.text floatValue]+[extremity.text floatValue]+[regions1.text floatValue]+[regions2.text floatValue]+[regions3.text floatValue]+[wstimulation.text floatValue]+[wostimulation.text floatValue]+[training.text floatValue]+[selfcare.text floatValue]+[evaluation.text floatValue]+[test.text floatValue]+[rl.text floatValue]+[trunk.text floatValue]+[lower.text floatValue]+[upper.text floatValue]+[sensory.text floatValue]+[wfwave.text floatValue]+[wofwave.text floatValue]);
                                                                                                    page3.text=[[NSString alloc] initWithFormat:@"%f",calc3];
                                                                                                    [recorddict setValue: page3.text forKey:@"calc3"];
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    [recorddict setValue:fitting.text forKey:@"fitting"];
                                                                                                    [recorddict setValue:activities.text forKey:@"activities"];
                                                                                                    [recorddict setValue:selfcare.text forKey:@"selfcare"];
                                                                                                    [recorddict setValue:training.text forKey:@"training"];
                                                                                                    [recorddict setValue:wostimulation.text forKey:@"wostimulation"];
                                                                                                    [recorddict setValue:wstimulation.text forKey:@"wstimulation"];
                                                                                                    [recorddict setValue:regions1.text forKey:@"regions1"];
                                                                                                    [recorddict setValue:regions2.text forKey:@"regions2"];
                                                                                                    [recorddict setValue:regions3.text forKey:@"regions3"];
                                                                                                    [recorddict setValue:extremity.text forKey:@"extremity"];
                                                                                                    [recorddict setValue:urinalysis.text forKey:@"urinalysis"];
                                                                                                    [recorddict setValue:muscletest.text forKey:@"muscletest"];
                                                                                                    
                                                                                                    [recorddict setValue:muscletesthand.text forKey:@"muscletesthand"];
                                                                                                    [recorddict setValue:rangeofmotion.text forKey:@"rangeofmotion"];
                                                                                                    [recorddict setValue:rangeofmotionhand.text forKey:@"rangeofmotionhand"];
                                                                                                    [recorddict setValue:wofwave.text forKey:@"wofave"];
                                                                                                    
                                                                                                    [recorddict setValue:wfwave.text forKey:@"wfwave"];
                                                                                                    [recorddict setValue:sensory.text forKey:@"sensory"];
                                                                                                    [recorddict setValue:upper.text forKey:@"upper"];
                                                                                                    [recorddict setValue:lower.text forKey:@"lower"];
                                                                                                    [recorddict setValue:trunk.text forKey:@"trunk"];
                                                                                                    [recorddict setValue:rl.text forKey:@"rl"];
                                                                                                    [recorddict setValue:test.text forKey:@"test"];
                                                                                                    [recorddict setValue:evaluation.text forKey:@"evaluation"];
                                                                                                   // NSLog(@"success!!!recorddict %@",recorddict);
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    c=1;
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                    c=0;
                                                                                                    
                                                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid functional capacity evaluation field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                    [alert show];
                                                                                                }
                                                                                                
                                                                                                
                                                                                            }
                                                                                            
                                                                                            else
                                                                                            {
                                                                                                c=0;
                                                                                                
                                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid Physical performance test field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                [alert show];
                                                                                            }
                                                                                            
                                                                                            
                                                                                        }                                                                                          else
                                                                                        {
                                                                                            c=0;
                                                                                            
                                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid H-Reflex field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                            [alert show];
                                                                                        }
                                                                                        
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                        c=0;
                                                                                        
                                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid SSEP:Head/Trunk field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                        [alert show];
                                                                                    }
                                                                                }
                                                                                else
                                                                                {
                                                                                    c=0;
                                                                                    
                                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid SSEP:Lower field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                    [alert show];
                                                                                }
                                                                            }
                                                                            else
                                                                            {
                                                                                c=0;
                                                                                
                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid SSEP:upper field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                [alert show];
                                                                            }
                                                                        }
                                                                        else
                                                                        {
                                                                            c=0;
                                                                            
                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid NCV Ea.Sensory field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                            [alert show];
                                                                        }
                                                                    }
                                                                    else
                                                                    {
                                                                        c=0;
                                                                        
                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid NCV Ea motor w/F-wave field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                        [alert show];
                                                                    }
                                                                }
                                                                else
                                                                {
                                                                    c=0;
                                                                    
                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid NCV Ea motor w/o F-wave field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                    [alert show];
                                                                }
                                                            }
                                                            else
                                                            {
                                                                c=0;
                                                                
                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid range of motion hand/rpt field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                [alert show];
                                                            }
                                                        }
                                                        else
                                                        {
                                                            c=0;
                                                            
                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid range of motion/report field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                            [alert show];
                                                        }
                                                    }
                                                    else
                                                    {
                                                        c=0;
                                                        
                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid muscle test hand/report  field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                        [alert show];
                                                    }
                                                }
                                                else
                                                {
                                                    c=0;
                                                    
                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid muscle test/report field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                    [alert show];
                                                }
                                                
                                            }
                                            else
                                            {
                                                c=0;
                                                
                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid routine urinalysis field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                [alert show];
                                            }
                                            
                                        }
                                        else
                                        {
                                            c=0;
                                            
                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid extremity field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                            [alert show];
                                        }
                                        
                                    }
                                    else
                                    {
                                        c=0;
                                        
                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid spine 5 regions field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                        [alert show];
                                    }
                                    
                                }
                                else
                                {
                                    c=0;
                                    
                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid spine 3-4 regions field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                    [alert show];
                                }
                                
                            }
                            else
                            {
                                c=0;
                                
                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid spine 1-2 regions field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                [alert show];
                            }
                            
                        }
                        else
                        {
                            c=0;
                            
                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid acupuncture w/e-stimulation field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                            [alert show];
                        }
                        
                        
                        
                        
                        
                        
                        
                        //                        }
                        /*                      else{
                         c=0;
                         BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid  Date."];
                         [alert setDestructiveButtonWithTitle:@"x" block:nil];
                         [alert show];
                         }*/
                        
                    }
                    
                    else
                    {
                        c=0;
                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid acupuncture w/o e-stimuation field."];
                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                        [alert show];
                    }
                }
                else
                {
                    c=0;
                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid reintergration training field."];
                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                    [alert show];
                }
            }
            
            
            else
            {
                c=0;
                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid adl self care field."];
                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                [alert show];
            }
        }
        else
        {
            c=0;
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid  kineteic activities field."];
            [alert setDestructiveButtonWithTitle:@"x" block:nil];
            [alert show];
        }
    }
    
    else
    {
        c=0;
        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid orthotics fitting field."];
        [alert setDestructiveButtonWithTitle:@"x" block:nil];
        [alert show];
    }
    if(c==1)
    {
        [self performSegueWithIdentifier:@"dcfee3" sender:self];
    }
        

}
-(void)dismissKeyboard {
    [fitting resignFirstResponder];
    [activities resignFirstResponder];
    [ selfcare resignFirstResponder];
    [training  resignFirstResponder];
    
    [wostimulation resignFirstResponder];
    
    [wstimulation resignFirstResponder];
    
    [regions1 resignFirstResponder];
    
    [regions2 resignFirstResponder];
    [regions3 resignFirstResponder];
    [extremity resignFirstResponder];
    
    [urinalysis resignFirstResponder];
    [muscletest resignFirstResponder];
    [muscletesthand resignFirstResponder];
    [rangeofmotion resignFirstResponder];
    [rangeofmotionhand resignFirstResponder];
    [wofwave resignFirstResponder];
    [wfwave resignFirstResponder];
    [sensory resignFirstResponder];
    [upper resignFirstResponder];
    [lower resignFirstResponder];
    [trunk resignFirstResponder];
    [rl resignFirstResponder];
    [test resignFirstResponder];
    [evaluation resignFirstResponder];
}

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    
    //NSLog(@"identifier %@",identifier);
    if([identifier isEqual:@"dcfee3"])
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
- (void)textFieldDatePicker:(TextFieldDatePicker *)textFieldDatePicker didSelectDate:(NSDate *)date
{
    //	NSLog(@"%@", date);
    
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    
    //	NSLog(@"begin editing");
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    
    if ([segue.identifier isEqualToString:@"dcfee3"])
    {
        
        
        dcfee3ViewController *destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        NSLog(@"recorddict in dcfeedetail2%@",recorddict);
        // destViewController.delegate=self;
        
    }
}

- (void)dealloc {
    [evaluation release];
    [page3 release];
  
    [super dealloc];
}
@end
