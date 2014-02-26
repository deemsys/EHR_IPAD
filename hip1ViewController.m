//
//  hip1ViewController.m
//  hip
//
//  Created by DeemsysInc on 2/15/14.
//  Copyright (c) 2014 DeemsysInc. All rights reserved.
//

#import "hip1ViewController.h"
#import "hipViewController.h"
#import "BlockAlertView.h"

@interface hip1ViewController ()

@end

@implementation hip1ViewController
@synthesize l4left;
@synthesize l4right;
@synthesize l5left;
@synthesize l5right;
@synthesize s1left;
@synthesize s1right;
@synthesize walking;
@synthesize standing;
@synthesize stairs;
@synthesize other;
@synthesize diag1;
@synthesize diag2;
@synthesize diag3;
@synthesize diag4;
@synthesize diag5;
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
@synthesize outsiderefrral;
@synthesize d;
@synthesize physiciansign;
@synthesize ct;
@synthesize recorddict;
@synthesize patientstatus;
@synthesize otherte;

-(BOOL)validateNames:(NSString *)country1
{
    NSString *countryFormat1 = @"(?:[A-Za-z]+[A-Za-z]*)";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateNumbers:(NSString*)number
{
    NSString *mobileFormat1 =  @"[0-9]{1,3}?";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *mobileTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", mobileFormat1];
    return [mobileTest1 evaluateWithObject:number];
    
}
-(BOOL)validateNamesign:(NSString *)country1
{
    NSString *countryFormat1 = @"(?:[A-Za-z0-9]+[A-Za-z0-9]*)";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateNumberlimit:(NSString *)country1
{
    NSString *countryFormat1 = @"[0-5]{1}";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}

- (IBAction)save:(id)sender {
    recorddict=[[NSMutableDictionary alloc]init];
    [recorddict addEntriesFromDictionary:temp];
    selectedtreatment=[[NSMutableArray alloc]init];
    
    circle=[[NSMutableArray alloc]init];
    selecteddefict=[[NSMutableArray alloc]init];
    
    circle1=[[NSMutableArray alloc]init];
    
    if(walking.selected)
    {
        walking1=@"walking";
        [selecteddefict addObject:@"walking"];
        
    }
    else
        walking1=NULL;
    if(standing.selected)
    {
        standing1=@"standing";
        [selecteddefict addObject:@"standing"];
        
    }
    else
        standing1=NULL;
    if(stairs.selected)
    {
        stairs1=@"stairs";
        [selecteddefict addObject:@"stairs"];
        
        
    }
    else
        stairs1=NULL;
    if(other.selected)
    {
        other1=@"other";
        [selecteddefict addObject:@"other"];
        
    }
    else
        other1=@"other";

    
    if(spinal.selected)
    {
        spinal1.text=@"spinal";
        [selectedtreatment addObject:@"spinal"];
        
    }
    else
        spinal1.text=NULL;
    if(chiropractic.selected)
    {
        chiropractic1.text=@"chiropratic";
        [selectedtreatment addObject:@"chiropratic"];
        
    }
    else
        chiropractic1.text=NULL;
    if(physical.selected)
    {
        physical1.text=@"physical";
        [selectedtreatment addObject:@"physical"];
        
        
    }
    else
        physical1.text=NULL;
    if(orthotics.selected)
    {
        orthotics1.text=@"orthotics";
        [selectedtreatment addObject:@"orthotics"];
        
    }
    else
        orthotics1.text=@"orthotics";
    if(modalities.selected)
    {
        modalities1.text=@"modalities";
        [selectedtreatment addObject:@"modalities"];
        
    }
    else
        modalities1.text=NULL;
    if(supplementation.selected)
    {
        supplementation1.text=@"supplementation";
        [selectedtreatment addObject:@"supplementation"];
    }
    else
        supplementation1.text=NULL;
    if(hep.selected)
    {
        hep1.text=@"hep";
        [selectedtreatment addObject:@"hep"];
        
    }
    else
        hep1.text=NULL;
    if(mri.selected)
    {
        mri1.text=@"mri";
        [selectedtreatment addObject:@"mri"];
    }
    else
    mri1.text=NULL;
    if(ct.selected)
    {
        ct1.text=@"ct";
        [selectedtreatment addObject:@"ct"];
    }
    else
        ct1.text=NULL;
    if(nerve.selected)
    {
        nerve1.text=@"nerve";
        [selectedtreatment addObject:@"nerve"];
    }
    else
        nerve1.text=NULL;
    if(emg.selected)
    {
        emg1.text=@"emg";
        [selectedtreatment addObject:@"emg"];
        
    }
    else
        emg1.text=NULL;
    if(outsiderefrral.selected)
    {
        outsiderefrral1.text=@"outsiderefrral";
        [selectedtreatment addObject:@"outsiderefrral"];
    }
    else
        outsiderefrral1.text=NULL;
    if(d.selected)
    {
        d1.text=@"d";
        [selectedtreatment addObject:@"d"];
    }
    else
        d1.text=NULL;
    temp1 =[physiciansign.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp2 =[l4left.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp3 =[l4right.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp4 =[l5left.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp5 =[l5right.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp6=[s1left.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp7=[s1right.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp8=[plantime.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp9=[planweek.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp10=[diag1.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp11=[diag2.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp12=[diag3.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp13=[diag4.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp14=[diag5.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp15=[otherte.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    if(([temp1 length]!=0)&&([self validateNamesign:temp1 ]==1))
    {
        
        if((([temp2 length]>0)&&([self validateNumberlimit:temp2]==1))||([temp2 length]==0))
            
        {
            if((([temp3 length]>0)&&([self validateNumberlimit:temp3]==1))||([temp3 length]==0))
                
            {
                if((([temp4 length]>0)&&([self validateNumberlimit:temp4]==1))||([temp4 length]==0))
                    
                {
                    if((([temp5 length]>0)&&([self validateNumberlimit:temp5]==1))||([temp5 length]==0))
                        
                    {
                        if((([temp6 length]>0)&&([self validateNumberlimit:temp6]==1))||([temp6 length]==0))
                            
                        {
                            if((([temp7 length]>0)&&([self validateNumberlimit:temp7]==1))||([temp7 length]==0))
                                
                            {
                                if((([temp8 length]>0)&&([self validateNames:temp8]==1))||([temp8 length]==0))
                                    
                                {
                                    if((([temp9 length]>0)&&([self validateNames:temp9]==1))||([temp9 length]==0))
                                        
                                    {
                                        if((([temp10 length]>0)&&([self validateNames:temp10]==1))||([temp10 length]==0))
                                            
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
                                                                
                                                                [recorddict setValue:physiciansign.text forKey:@"physiciansign"];
                                                                [recorddict setValue:l4left.text forKey:@"l4left"];
                                                                [recorddict setValue:l4right.text forKey:@"l4right"];
                                                                [recorddict setValue:l5left.text forKey:@"l5left"];
                                                                [recorddict setValue:l5right.text forKey:@"l5right"];
                                                                [recorddict setValue:s1left.text forKey:@"s1left"];
                                                                [recorddict setValue:s1right.text forKey:@"s1right"];
                                                                [recorddict setValue:plantime.text forKey:@"plantime"];
                                                                [recorddict setValue:planweek.text forKey:@"planweek"];
                                                                [recorddict setValue:diag1.text forKey:@"diag1"];
                                                                [recorddict setValue:diag2.text forKey:@"diag2"];
                                                                [recorddict setValue:diag3.text forKey:@"diag3"];
                                                                
                                                                [recorddict setValue:diag4.text forKey:@"diag4"];
                                                                [recorddict setValue:diag5.text forKey:@"diag5"];
                                                                [recorddict setObject:selectedtreatment forKey:@"selectedtreatment"];
                                                                [recorddict setObject:selecteddefict forKey:@"selecteddefict"];
                                                                [recorddict setValue:patientstatuslabel forKey:@"patientstatus"];
                                                                [recorddict setValue:otherte.text forKey:@"othertext"];
                                                                NSLog(@"success!!!recorddict %@",recorddict);
                                                                c=1;
                                                                
                                                            }
                                                            else
                                                            {
                                                                c=0;
                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid other text field."];
                                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                [alert show];
                                                                
                                                            }
                                                            
                                                        }
                                                        else
                                                        {
                                                            c=0;
                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid diagnosis 5 field."];
                                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                            [alert show];
                                                            
                                                        }
                                                        
                                                    }
                                                    else
                                                    {
                                                        c=0;
                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid diagnosis 4 field."];
                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                        [alert show];
                                                        
                                                    }
                                                    
                                                }
                                                else
                                                {
                                                    c=0;
                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid diagnosis 3 field."];
                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                    [alert show];
                                                    
                                                }
                                                
                                            }
                                            else
                                            {
                                                c=0;
                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid diagnosis 2 field."];
                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                [alert show];
                                                
                                            }
                                            
                                        }
                                        else
                                        {
                                            c=0;
                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid diagnosis 1 field."];
                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                            [alert show];
                                            
                                        }
                                        
                                    }
                                    else
                                    {
                                        c=0;
                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid plan week field."];
                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                        [alert show];
                                        
                                    }
                                    
                                }
                                else
                                {
                                    c=0;
                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid plan time field."];
                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                    [alert show];
                                    
                                }
                                
                            }
                            else
                            {
                                c=0;
                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid s1 right field."];
                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                [alert show];
                                
                            }
                            
                        }
                        else
                        {
                            c=0;
                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid s1 left field."];
                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                            [alert show];
                            
                        }
                        
                    }
                    else
                    {
                        c=0;
                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid l5 right field."];
                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                        [alert show];
                        
                    }
                    
                }
                else
                {
                    c=0;
                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid l5 left field."];
                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                    [alert show];
                    
                }
                
            }
            else
            {
                c=0;
                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid l4 right field."];
                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                [alert show];
                
            }
            
        }
        else
        {
            c=0;
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid l4 left field."];
            [alert setDestructiveButtonWithTitle:@"x" block:nil];
            [alert show];
            
        }
        
        
        
        
    }
    
    else
    {
        c=0;
        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter patient sign."];
        [alert setDestructiveButtonWithTitle:@"x" block:nil];
        [alert show];
        
    }
        
        if(c==1)
        {
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Info!" message:@"Success!"];
            
            
            [alert setDestructiveButtonWithTitle:@"x" block:nil];
            [alert show];
        }
    
    }
- (IBAction)patientstatus:(id)sender {
    if ([sender selectedSegmentIndex]==1)
    {
        patientstatuslabel=@"Excellent";
           }
    if ([sender selectedSegmentIndex]==2)
    {
        patientstatuslabel=@"Good";
        
    }
    if ([sender selectedSegmentIndex]==3)
    {
        patientstatuslabel=@"Fair";
           }
    if ([sender selectedSegmentIndex]==4)
    {
        patientstatuslabel=@"poor";
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
    }
    if (other.selected) {
        otherte.hidden=NO;
    }else
    {
        otherte.hidden=YES;
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
//    NSLog(@"hip%@",recorddict);
    patientstatuslabel=@"";
    
    
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [patientstatus release];
    [otherte release];
  
    [super dealloc];
}
@end
