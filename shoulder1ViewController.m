//
//  shoulder1ViewController.m
//  shoulder
//
//  Created by deemsys on 2/25/14.
//  Copyright (c) 2014 DeemsysInc. All rights reserved.
//

#import "shoulder1ViewController.h"
#import "shoulderViewController.h"

@interface shoulder1ViewController ()

@end

@implementation shoulder1ViewController
@synthesize c5left;
@synthesize c5right;
@synthesize c6left;
@synthesize c6right;
@synthesize c7left;
@synthesize c7right;
@synthesize walking;
@synthesize standing;

@synthesize other;
@synthesize d1;
@synthesize d2;
@synthesize d3;
@synthesize d4;
@synthesize d5;
@synthesize plantime;
@synthesize planweek;
@synthesize spinal;
@synthesize chiropractic;
@synthesize physical;
@synthesize orthotics;
@synthesize modalities;
@synthesize supplementation;
@synthesize hep;
@synthesize mri;
@synthesize nerve;
@synthesize emg;
@synthesize outsidereferral;
@synthesize d;
@synthesize physiciansign;
@synthesize ct;
@synthesize recorddict;
@synthesize patientstatus;
@synthesize  radio;
@synthesize other1;
@synthesize othertext;
@synthesize othertext1;


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
    NSString *countryFormat1 = @"[0-9]{1,2}+[-]+[0-9]{1,2}+[-]+[0-9]{4}";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
- (IBAction)patientstatus:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        patientstatuslabel=@"Excellent";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        patientstatuslabel=@"Good";
        
    }
    if ([sender selectedSegmentIndex]==2)
    {
        patientstatuslabel=@"Fair";
    }
    if ([sender selectedSegmentIndex]==3)
    {
        patientstatuslabel=@"poor";
    }
    
}
- (IBAction)save:(id)sender {
    temp1 = [c5left.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp2 = [c5right.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp3 = [c6left.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp4 = [c6right.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp5 = [c7left.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp6=[c7right.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp7=[d1.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp8=[d2.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp9=[d3.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp10=[d4.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp11=[d5.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp12=[plantime.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp13=[planweek.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp14=[physiciansign.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    a=1;
    otherlabel=othertext.text;
    other1label=othertext1.text;
    if (walking.selected) {
        [recorddict setValue:@"Overhead Activities" forKey:@"overhead"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"overhead"];
    }
    if (standing.selected) {
        [recorddict setValue:@"Lifting" forKey:@"lifting"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"lifting"];
    }
       if (other.selected) {
        [recorddict setValue:@"Other" forKey:@"fdother"];
        [recorddict setValue:otherlabel forKey:@"fdothertext"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"fdother"];
        [recorddict setValue:@"" forKey:@"fdothertext"];
    }
    if (spinal.selected) {
        [recorddict setValue:@"Spinal Decompression" forKey:@"spinal"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"spinal"];
    }
    if (chiropractic.selected) {
        [recorddict setValue:@"Chiropractic" forKey:@"chiro"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"chiro"];
    }
    if (physical.selected) {
        [recorddict setValue:@"Physical Theraphy" forKey:@"phy"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"phy"];
    }
    if (orthotics.selected) {
        [recorddict setValue:@"Orthotics/Bracing" forKey:@"ortho"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"ortho"];
    }
    if (modalities.selected) {
        [recorddict setValue:@"Modalities" forKey:@"modal"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"modal"];
    }
    if (supplementation.selected) {
        [recorddict setValue:@"Supplementation" forKey:@"supple"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"supple"];
    }
    if (hep.selected) {
        [recorddict setValue:@"HEP" forKey:@"hep"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"hep"];
    }
    if (radio.selected) {
        [recorddict setValue:@"Radiographic X-Ray" forKey:@"xray"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"xray"];
    }
    if (mri.selected) {
        [recorddict setValue:@"MRI" forKey:@"mri"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"mri"];
    }
    if (ct.selected) {
        [recorddict setValue:@"CT Scan" forKey:@"ct"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"ct"];
    }
    if (nerve.selected) {
        [recorddict setValue:@"Nerver Conduction" forKey:@"nev"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"nev"];
    }
    if (emg.selected) {
        [recorddict setValue:@"EMG" forKey:@"emg"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"emg"];
    }
    if (outsidereferral.selected) {
        [recorddict setValue:@"Outside Referral" forKey:@"outref"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"outref"];
    }
    if (d.selected) {
        [recorddict setValue:@"D/C" forKey:@"dc"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"dc"];
    }
    if (other1.selected) {
        [recorddict setValue:@"Other" forKey:@"planother"];
        [recorddict setValue:other1label forKey:@"planothertext"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"planother"];
        [recorddict setValue:@"" forKey:@"planothertext"];
    }
    [recorddict setValue:patientstatuslabel forKey:@"patientstatus"];

        if([self validateNames:temp14 ]==1)
        {
            if((([temp1 length]>0)&&([self validateNumber:temp1]==1))||([temp1 length]==0))
            {
                if((([temp2 length]>0)&&([self validateNumber:temp2 ]==1))||([temp2 length]==0))
                {
                    if((([temp3 length]>0)&&([self validateNumber:temp3 ]==1))||([temp3 length]==0))
                    {
                        if((([temp4 length]>0)&&([self validateNumber:temp4 ]==1))||([temp4 length]==0))
                        {
                            if((([temp5 length]>0)&&([self validateNumber:temp5 ]==1))||([temp5 length]==0))
                            {
                                if((([temp6 length]>0)&&([self validateNumber:temp6]==1))||([temp6 length]==0))
                                {
                                    if((([temp7 length]>0)&&([self validateNames:temp7]==1))||([temp7 length]==0))
                                    {
                                        if((([temp8 length]>0)&&([self validateNames:temp8]==1))||([temp8 length]==0))
                                        {
                                            if((([temp9 length]>0)&&([self validateNames:temp9]==1))||([temp9 length]==0))
                                            {
                                                if((([temp10 length]>0)&&([self validateNames:temp10]==1))||([temp10 length]==0))
                                                {
                                                    if((([temp11 length]>0)&&([self validateNames:temp11]==1))||([temp11 length]==0))
                                                    {
                                                        if((([temp12 length]>0)&&([self validateNumber:temp12]==1))||([temp12 length]==0))
                                                        {
                                                            if((([temp13 length]>0)&&([self validateNumber:temp13]==1))||([temp13 length]==0))
                                                            {
                                                                [recorddict setValue:c5left.text forKey:@"c5left"];
                                                                [recorddict setValue:c5right.text forKey:@"c5right"];
                                                                [recorddict setValue:c6left.text forKey:@"c6left"];
                                                                [recorddict setValue:c6right.text forKey:@"c6right"];
                                                                [recorddict setValue:c7left.text forKey:@"c7left"];
                                                                [recorddict setValue:c7right.text forKey:@"c7right"];
                                                                [recorddict setValue:d1.text forKey:@"d1"];
                                                                [recorddict setValue:d2.text forKey:@"d2"];
                                                                [recorddict setValue:d3.text forKey:@"d3"];
                                                                [recorddict setValue:d4.text forKey:@"d4"];
                                                                [recorddict setValue:d5.text forKey:@"d5"];
                                                                [recorddict setValue:plantime.text forKey:@"plantime"];
                                                                [recorddict setValue:physiciansign.text forKey:@"sign"];
                                                                
                                                                [recorddict setValue:planweek.text forKey:@"planweek"];
                                                NSLog(@"success!!!recorddict %@",recorddict);                
                                                            }
                                                            else
                                                            {
                                                                a=0;
                                                                
                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid plan week ."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                [alert show];
                                                                
                                                                
                                                            }
                                                        }
                                                        else
                                                        {
                                                            a=0;
                                                            
                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid plan time."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
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
                                                
                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid diagnosis 3 reason."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                [alert show];
                                            }
                                            
                                        }
                                        else
                                        {
                                            a=0;
                                            
                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid diagnosis 2 reason ."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
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
                                    
                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid  c7right."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                    [alert show];
                                    
                                }
                            }
                            else
                            {
                                a=0;
                                
                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid c7left."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                [alert show];
                                
                            }
                        }
                        else
                        {
                            a=0;
                            
                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid c6right."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                            [alert show];
                            
                        }
                    }
                    else
                    {
                        a=0;
                        
                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid c6left."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                        [alert show];
                        
                    }
                }
                else
                {
                    a=0;
                    
                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid C5right."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                    [alert show];
                    
                }
            }
            else
            {
                a=0;
                
                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid c5left."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                [alert show];
                
            }
        }
    else
    {
        a=0;
        
        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter patient signature."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
        [alert show];
    }
    if(a==1)
    {
        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Info!" message:@"Success."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
        [alert show];
    }
    
}


- (IBAction)checkboxselected:(UIButton *)sender {
    
    {
        sender.selected = !sender.selected;
        if(sender.selected){
            [sender setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
        }
        else{
            [sender setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
        }
        othertext.hidden=YES;
        othertext1.hidden=YES;
        if(other.selected)
        {
            othertext. hidden=NO;
        }
        else{
            othertext.hidden=YES;

        }
    }
    if(other1.selected)
    {
        othertext1. hidden=NO;
    }
    else{
        othertext1.hidden=YES;
        
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
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*- (void)dealloc {
    [c5left release];
    [c5right release];
    [c5right release];
    [c6left release];
    [c6right release];
    [c7left release];
    [c7right release];
    [walking release];
    [standing release];
    [stairs release];
    [other release];
    [patientstatus release];
    [d1 release];
    [d2 release];
    [d3 release];
    [d4 release];
    [d5 release];
    [plantime release];
    [planweek release];
    [spinal release];
    [chiropractic release];
    [physical release];
    [orthotics release];
    [modalities release];
    [supplementation release];
    [hep release];
    [mri release];
    [ct release];
    [nerve release];
    [emg release];
    [or release];
    [or release];
    [outsidereferral release];
    [d release];
    [radio release];
    [other release];
    [other1 release];
    [other1text release];
    [physiciansign release];
    [_c5left release];
    [_c5right release];
    [_c6left release];
    [_c6right release];
    [_c7left release];
    [_c7right release];
    [_walking release];
    [_standing release];
    [_stairs release];
    [_other release];
    [_d1 release];
    [_d2 release];
    [_d3 release];
    [_d4 release];
    [_d5 release];
    [_plantime release];
    [_planweek release];
    [_spinal release];
    [_chiropractic release];
    [_physical release];
    [_orthotesting release];
    [_modalities release];
    [_supplementation release];
    [_hep release];
    [_mri release];
    [_ct release];
    [_nerve release];
    [_emg release];
    [_outsidereferral release];
    [_d release];
    [_radio release];
    [_other1 release];
    [_physiciansign release];
    [_orthotics release];
    [_patientstatus release];
    [_patientstatus release];
    [super dealloc];
}*/
- (void)dealloc {
  
    [super dealloc];
}
@end
