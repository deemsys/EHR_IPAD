//
//  narrative1ViewController.m
//  narrative
//
//  Created by deemsys on 2/27/14.
//  Copyright (c) 2014 deemsys. All rights reserved.
//

#import "narrative1ViewController.h"
#import "narrativeViewController.h"
#import "narrative2ViewController.h"
@interface narrative1ViewController ()

@end

@implementation narrative1ViewController
@synthesize flexionpain;
@synthesize flexpain;
@synthesize flexionton;
@synthesize flexton;
@synthesize extensionpain;
@synthesize extensionton;
@synthesize exetpain;
@synthesize exetton;
@synthesize rightlateralpain;
@synthesize rightlateralton;
@synthesize rightlatpain;
@synthesize recorddict;
@synthesize rightlatton;
@synthesize rightrotationpain;
@synthesize rightrotationton;
@synthesize rightrotpain;
@synthesize rightrotton;
@synthesize leftlateralpain;
@synthesize leftlateralton;
@synthesize leftlatpain;
@synthesize leftlatton;
@synthesize leftrotationpain;
@synthesize leftrotationton;
@synthesize leftrotpain;
@synthesize leftrotton;
@synthesize hypo;
@synthesize hypobut;
@synthesize hypolabel;
@synthesize age;
@synthesize heightval;
@synthesize lb;
@synthesize whiteseg;
@synthesize genderseg;
@synthesize nourishedseg;
@synthesize fairseg;
@synthesize normalseg;
@synthesize poorseg;
@synthesize pathoseg;
@synthesize cervicseg;
@synthesize cervicsegg;
@synthesize lrseg;
@synthesize lrtrapseg;
@synthesize lrseganother;
@synthesize note;
@synthesize range;
@synthesize degree;
@synthesize tender;
@synthesize  shelabel;


-(BOOL)validateDate:(NSString *)country1
{
    NSString *countryFormat1 = @"[0-9]{1,2}+[-]+[0-9]{1,2}+[-]+[0-9]{4}";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateNames:(NSString *)country1
{
    NSString *countryFormat1 = @"[0-9]{1,3}";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validatestring:(NSString *)country1
{
    NSString *countryFormat1 = @"[A-Za-z0-9]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}

- (IBAction)next:(id)sender {
    a=1;
    temp1 =[flexionpain.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp2 =[extensionpain.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp3 =[rightrotationpain.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp4 =[leftrotationpain.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp5 =[rightlateralpain.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp6=[leftlateralpain.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp7=[flexionton.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp8=[extensionton.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp9=[rightlateralton.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp10=[leftlateralton.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp11=[rightrotationton.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp12=[leftrotationton.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp13=[flexpain.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp14=[exetpain.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp15=[rightrotpain.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp16=[leftrotpain.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp17=[rightlatpain.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp18=[leftlatpain.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp19=[flexton.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp20=[exetton.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp21=[rightlatton.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp22=[leftlatton.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp23=[rightrotton.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp24=[leftrotton.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp25=[age.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp26=[heightval.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp27=[lb.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp28=[tender.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp29=[note.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp30=[range.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp31=[degree.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    
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
                                                                                if((([temp21 length]>0)&&([self validateNames:temp21]==1))||([temp21 length]==0))
                                                                                {
                                                                                    if((([temp22 length]>0)&&([self validateNames:temp22]==1))||([temp22 length]==0))
                                                                                    {
                                                                                        if((([temp23 length]>0)&&([self validateNames:temp23 ]==1))||([temp23 length]==0))
                                                                                        {
                                                                                            if((([temp24 length]>0)&&([self validateNames:temp24]==1))||([temp24 length]==0))
                                                                                            {
                                                                                                if((([temp25 length]>0)&&([self validateNames:temp25]==1))||([temp25 length]==0))
                                                                                                {
                                                                                                    if((([temp26 length]>0)&&([self validateNames:temp26]==1))||([temp26 length]==0))
                                                                                                    {
                                                                                                        if((([temp27 length]>0)&&([self validateNames:temp27]==1))||([temp27 length]==0))
                                                                                                        {
                                                                                                            
                                                                                                            if((([temp28 length]>0)&&([self validatestring:temp28]==1))||([temp28 length]==0))
                                                                                                            {
                                                                                                                
                                                                                                                if((([temp29 length]>0)&&([self validatestring:temp29]==1))||([temp29 length]==0))
                                                                                                                {
                                                                                                                    
                                                                                                                    if((([temp30 length]>0)&&([self validatestring:temp30]==1))||([temp30 length]==0))
                                                                                                                    {
                                                                                                                        
                                                                                                                        if((([temp31 length]>0)&&([self validatestring:temp31]==1))||([temp31 length]==0))
                                                                                                                        {
                                                                                                                            
                                                                                                                            [recorddict setValue:flexionpain.text forKey:@"flexionpain"];
                                                                                                                            [recorddict setValue:extensionpain.text forKey:@"extensionpain"];
                                                                                                                            [recorddict setValue:rightlateralpain.text forKey:@"rightlateralpain"];
                                                                                                                            [recorddict setValue:leftlateralpain.text forKey:@"leftlateralpain"];
                                                                                                                            [recorddict setValue:rightrotationpain.text forKey:@"rightrotationpain"];
                                                                                                                            
                                                                                                                            [recorddict setValue:leftrotationpain.text forKey:@"leftrotationpain"];
                                                                                                                            [recorddict setValue:flexionton.text forKey:@"flexionton"];
                                                                                                                            [recorddict setValue:extensionton.text forKey:@"extensionton"];
                                                                                                                            [recorddict setValue:rightlateralton.text forKey:@"rightlateralton"];
                                                                                                                            [recorddict setValue:leftlateralton.text forKey:@"leftlateralton"];
                                                                                                                            [recorddict setValue:rightrotationton.text forKey:@"rightrotationton"];
                                                                                                                            
                                                                                                                            [recorddict setValue:leftrotationton.text forKey:@"leftrotationton"];
                                                                                                                            [recorddict setValue:flexpain.text forKey:@"flexpain"];
                                                                                                                            [recorddict setValue:exetpain.text forKey:@"exetpain"];
                                                                                                                            [recorddict setValue:rightlatpain.text forKey:@"rightlatpain"];
                                                                                                                            [recorddict setValue:leftlatpain.text forKey:@"leftlatpain"];
                                                                                                                            [recorddict setValue:rightrotpain.text forKey:@"rightrotpain"];
                                                                                                                            
                                                                                                                            [recorddict setValue:leftrotpain.text forKey:@"leftrotpain"];
                                                                                                                            [recorddict setValue:flexton.text forKey:@"flexton"];
                                                                                                                            [recorddict setValue:exetton.text forKey:@"exetton"];
                                                                                                                            [recorddict setValue:rightlatton.text forKey:@"rightlatton"];
                                                                                                                            [recorddict setValue:leftlatton.text forKey:@"leftlatton"];
                                                                                                                            [recorddict setValue:rightrotton.text forKey:@"rightrotton"];
                                                                                                                            
                                                                                                                            [recorddict setValue:leftrotton.text forKey:@"leftrotton"];
                                                                                                                            [recorddict setValue:age.text forKey:@"age"];
                                                                                                                            [recorddict setValue:heightval.text forKey:@"height"];
                                                                                                                            [recorddict setValue:whitelabel forKey:@"whitelabel"];
                                                                                                                            [recorddict setValue:genderlabel forKey:@"gender"];
                                                                                                                            [recorddict setValue:nourishedlabel                                                                                                                                    forKey:@"nourished"];
                                                                                                                            [recorddict setValue:fairlabel forKey:@"fair"];
                                                                                                                            [recorddict setValue:normallabel forKey:@"normal"];
                                                                                                                            [recorddict setValue:poorlabel forKey:@"poorlabel"];
                                                                                                                            [recorddict setValue:pathollabel forKey:@"patholabel"];
                                                                                                                            [recorddict setValue:cerviclabel forKey:@"cervical"];
                                                                                                                            [recorddict setValue:cervicanotherlabel forKey:@"cervicalanother"];
                                                                                                                            [recorddict setValue:lranother forKey:@"lrother"];
                                                                                                                            [recorddict setValue:lrtrapezius forKey:@"lrtrapezius"];
                                                                                                                            [recorddict setValue:lrlabel forKey:@"lrlabel"];
                                                                                                                            [recorddict setValue:note.text forKey:@"note"];
                                                                                                                            [recorddict setValue:range.text forKey:@"range"];
                                                                                                                            [recorddict setValue:degree.text forKey:@"degree"];
                                                                                                                            
                                                                                                                            if(a==1)
                                                                                                                            {
                                                                                                                                [self performSegueWithIdentifier:@"narr2" sender:self];
                                                                                                                            }
   
                                                                                                                            
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                            a=0;
                                                                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter the valid degree."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                            [alert show];
                                                                                                                        }
                                                                                                                        
                                                                                                                    }
                                                                                                                    else
                                                                                                                    {
                                                                                                                        a=0;
                                                                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter the valid range."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                        [alert show];
                                                                                                                    }
                                                                                                                    
                                                                                                                }
                                                                                                                else
                                                                                                                {
                                                                                                                    a=0;
                                                                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter the valid note."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                    [alert show];
                                                                                                                }
                                                                                                                
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                                a=0;
                                                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter the valid tender."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                [alert show];
                                                                                                            }
                                                                                                            
                                                                                                        }
                                                                                                        else
                                                                                                        {
                                                                                                            a=0;
                                                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter the valid lb."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                            [alert show];
                                                                                                        }

                                                                                                        
                                                                                                
                                                                                                    }
                                                                                                    else
                                                                                                    {
                                                                                                        a=0;
                                                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter the valid height."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                        [alert show];
                                                                                                    }
                                                                                                
                                                                                                }
                                                                                            else
                                                                                            {
                                                                                                a=0;
                                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter the valid age."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                [alert show];
                                                                                            }
                                                                                            }
                                                                                        
                                                                                        else
                                                                                        {
                                                                                            a=0;
                                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter the valid  lumbar leftrotton."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                            [alert show];
                                                                                        }
                                                                                        
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                        a=0;
                                                                                        
                                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid  lumbar rightrotton."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                        [alert show];
                                                                                    }
                                                                                    
                                                                                }
                                                                                else
                                                                                {
                                                                                    a=0;
                                                                                    
                                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid lumbar leftlatton."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                    [alert show];
                                                                                }
                                                                                
                                                                            }
                                                                            else
                                                                            {
                                                                                a=0;
                                                                                
                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid lumbar rightlatton  field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                [alert show];
                                                                            }
                                                                            
                                                                        }
                                                                        else
                                                                        {
                                                                            a=0;
                                                                            
                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid lumbar exetton."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                            [alert show];
                                                                        }
                                                                        
                                                                    }
                                                                    else
                                                                    {
                                                                        a=0;
                                                                        
                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid lumbar flexton."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                        [alert show];
                                                                    }
                                                                }
                                                                
                                                                else
                                                                {
                                                                    a=0;
                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter the valid  lumbar leftlatpain."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                    [alert show];
                                                                }
                                                                
                                                            }
                                                            else
                                                            {
                                                                a=0;
                                                                
                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid  lumbar rightlatpain."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                [alert show];
                                                            }
                                                            
                                                        }
                                                        else
                                                        {
                                                            a=0;
                                                            
                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid lumbar leftrotpain."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                            [alert show];
                                                        }
                                                        
                                                    }
                                                    else
                                                    {
                                                        a=0;
                                                        
                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid lumbar rightrotpain  field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                        [alert show];
                                                    }
                                                    
                                                }
                                                else
                                                {
                                                    a=0;
                                                    
                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid lumbar exetpain."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                    [alert show];
                                                }
                                                
                                            }
                                            else
                                            {
                                                a=0;
                                                
                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid lumbar flexpain."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                [alert show];
                                            }
                                        }
                                        
                                        else
                                        {
                                            a=0;
                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter the valid  cervical leftrotationton."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                            [alert show];
                                        }
                                        
                                    }
                                    else
                                    {
                                        a=0;
                                        
                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid  cervical rightrotationton."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                        [alert show];
                                    }
                                    
                                }
                                else
                                {
                                    a=0;
                                    
                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid  cervical leftlateralton."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                    [alert show];
                                }
                                
                            }
                            else
                            {
                                a=0;
                                
                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid  cervical rightlateralton  field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                [alert show];
                            }
                            
                        }
                        else
                        {
                            a=0;
                            
                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid cervical extentionton."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                            [alert show];
                        }
                        
                    }
                    else
                    {
                        a=0;
                        
                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid cervical flexionton."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                        [alert show];
                    }
                }
                
                else
                {
                    a=0;
                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter the valid cervical leftlateralpain."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                    [alert show];
                }
                
            }
            else
            {
                a=0;
                
                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid  cervical rightlateralpain."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                [alert show];
            }
            
        }
        else
        {
            a=0;
            
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid cervical leftrotationpain."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
            [alert show];
        }
        
    }
    else
    {
        a=0;
        
        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid cervical rightrotationpain  field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
        [alert show];
    }
        
    }
    else
    {
        a=0;
        
        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid cervical extensionpain."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
        [alert show];
    }
    
}
else
{
    a=0;
    
    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid cervical flexionpain."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
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
     [hypo setBackgroundColor:([UIColor whiteColor])];
    hypo.hidden=YES;
    hypo.delegate = self;
    hypo.dataSource = self;
    hypolabel.text=@"hypolordosis";
    hypoarray=[[NSArray alloc]initWithObjects:@"Hypolordosis",@"Hyperlordosis",@"Hypokyphosis",@"Hyperkyposis",@"Cervical Tilting",@"L/R",@"Cervical Rotation L-R",@"Superior L-R scapula",@"L-R Scapular Winging",@"L-R rib hump",@"Superior L-R illaic crest", nil];
    UITapGestureRecognizer *tapGR = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(pickerViewTapped)];
    [hypo addGestureRecognizer:tapGR];
    genderlabel=@"Male";
    whitelabel=@"White";
    nourishedlabel=@"Undernourished";
    fairlabel=@"Fair";
    normallabel=@"Normal";
    poorlabel=@"Poor";
    pathollabel=@"Normal";
    cerviclabel=@"Cervical";
    cervicanotherlabel=@"Cervical";
    lrlabel=@"L-R";
    lrtrapezius=@"L-R Trapezius";
    lranother=@"L-R";
   shelabel.text= [recorddict objectForKey:@"genderval"];
	// Do any additional setup after loading the view.
}
- (void)pickerViewTapped
{
    hypo.hidden=YES;
}
#pragma mark - UIPickerView DataSource
// returns the number of 'columns' to display.
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    
        return [hypoarray count];
    
    
}


#pragma mark - UIPickerView Delegate
- (CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component
{
    return 30.0;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    
    return [hypoarray objectAtIndex:row];
    
    
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    if(hypo.hidden==NO)
    {
        hypo.hidden=YES;
    }
    if (hypo) hypo.hidden = !hypo.hidden;
}

//If the user chooses from the pickerview, it calls this function;
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    
        hypolabel.text=[hypoarray objectAtIndex:row];
    pickerView.hidden=YES;
    
    
    //Let's print in the console what the user had chosen;
    // NSLog(@"Chosen item: %@", [itemsArray objectAtIndex:row]);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)hypoact:(id)sender
{
    if(hypo.hidden==YES)
    {
        hypo.hidden=NO;
    }
}
- (IBAction)genderr:(id)sender
{
    if (genderseg.selectedSegmentIndex==0) {
        genderlabel=@"Male";
    }
    if (genderseg.selectedSegmentIndex==1) {
        genderlabel=@"Female";
    }
}
- (IBAction)whiteee:(id)sender {
    if (whiteseg.selectedSegmentIndex==0) {
        whitelabel=@"White";
    }
    if (whiteseg.selectedSegmentIndex==1) {
        whitelabel=@"Black";
    }
}
- (IBAction)nourisheddd:(id)sender
{
    if (nourishedseg.selectedSegmentIndex==0) {
        nourishedlabel=@"Undernourished";
    }
    if (nourishedseg.selectedSegmentIndex==1) {
        nourishedlabel=@"Normal";
    }
    if (nourishedseg.selectedSegmentIndex==2) {
        nourishedlabel=@"Well nourished";
    }
   
}
- (IBAction)fairrr:(id)sender
{
    if (fairseg.selectedSegmentIndex==0) {
        fairlabel=@"Fair";
    }
    if (fairseg.selectedSegmentIndex==1) {
        fairlabel=@"Severe";
    }
}
- (IBAction)normall:(id)sender
{
    if (normalseg.selectedSegmentIndex==0) {
        normallabel=@"Normal";
    }
    if (normalseg.selectedSegmentIndex==1) {
        normallabel=@"Antalgic";
    }
    if (normalseg.selectedSegmentIndex==2) {
        normallabel=@"Staggering";
    }
    if (normalseg.selectedSegmentIndex==3) {
        normallabel=@"Limping";
    }
    if (normalseg.selectedSegmentIndex==4) {
        normallabel=@"Swaying";
    }
   
}
- (IBAction)poorr:(id)sender
{
    if (poorseg.selectedSegmentIndex==0) {
        poorlabel=@"Poor";
    }
    if (poorseg.selectedSegmentIndex==1) {
        poorlabel=@"Good";
    }
}
- (IBAction)patholll:(id)sender
{
    if (pathoseg.selectedSegmentIndex==0) {
        pathollabel=@"Normal";
    }
    if (pathoseg.selectedSegmentIndex==1) {
        pathollabel=@"Antalgic";
    }
    if (pathoseg.selectedSegmentIndex==2) {
        pathollabel=@"Staggering";
    }

}
- (IBAction)cervicccc:(id)sender
{
    if (cervicseg.selectedSegmentIndex==0) {
        cerviclabel=@"Cervical";
    }
    if (cervicseg.selectedSegmentIndex==1) {
        cerviclabel=@"Thoracic";
    }
    if (cervicseg.selectedSegmentIndex==2) {
        cerviclabel=@"Lumbar";
    }
 
}
- (IBAction)cerviccc2:(id)sender
{
    if (cervicsegg.selectedSegmentIndex==0) {
        cervicanotherlabel=@"Cervical";
    }
    if (cervicsegg.selectedSegmentIndex==1) {
        cervicanotherlabel=@"Thoracic";
    }
    if (cervicsegg.selectedSegmentIndex==2) {
        cervicanotherlabel=@"Lumbar";
    }
}
- (IBAction)lrrrrr:(id)sender
{
    if (lrseg.selectedSegmentIndex==0) {
        lrlabel=@"L-R";
    }
    if (lrseg.selectedSegmentIndex==1) {
        lrlabel=@"Bilaterally";
    }
}
- (IBAction)lrtraprr:(id)sender
{
    if (lrtrapseg.selectedSegmentIndex==0) {
        lrtrapezius=@"L-R Trapezius";
    }
    if (lrtrapseg.selectedSegmentIndex==1) {
        lrtrapezius=@"L-R Strnocleidomastoid";
    }
    if (lrtrapseg.selectedSegmentIndex==2) {
        lrtrapezius=@"L-R quadratuslumborum";
    }
    if (lrtrapseg.selectedSegmentIndex==3) {
        lrtrapezius=@"L-R Hamstring";
    }


}
- (IBAction)lrother:(id)sender
{
    if (lrseganother.selectedSegmentIndex==0) {
        lranother=@"L-R";
    }
    if (lrseganother.selectedSegmentIndex==1) {
        lranother=@"Bilaterally";
    }

}
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    
    //NSLog(@"identifier %@",identifier);
    if([identifier isEqual:@"narr2"])
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
    
    if ([segue.identifier isEqualToString:@"narr2"])
    {
        
        narrative2ViewController *destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        NSLog(@"recorddict in narrative second page %@",recorddict);
    }
    
    
}

- (void)dealloc {
    [hypo release];
    [hypobut release];
    [hypolabel release];
 

    [super dealloc];
}
@end
