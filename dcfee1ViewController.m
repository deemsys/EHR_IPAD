//
//  dcfee1ViewController.m
//  dcfee
//
//  Created by DeemsysInc on 4/12/14.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//

#import "dcfee1ViewController.h"

@interface dcfee1ViewController ()

@end

@implementation dcfee1ViewController
@synthesize mechanical;
@synthesize unattended;
@synthesize  device;
@synthesize bath;
@synthesize microwave;
@synthesize hydrotheraphy;
@synthesize diathermy;
@synthesize infrared;
@synthesize ultraviolet;
@synthesize stim;
@synthesize iontophoresis;
@synthesize contrastbaths;
@synthesize ultrasound;
@synthesize unlisted;
@synthesize exersice;
@synthesize re;
@synthesize therapy;
@synthesize gait;
@synthesize massage;
@synthesize manualtheraphy;
@synthesize other;
@synthesize grouptheraphy;
@synthesize recorddict;
@synthesize page2;

-(BOOL)validateNumbers:(NSString*)number
{
    NSString *mobileFormat1 =  @"[0-9]{1,10}?";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *mobileTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", mobileFormat1];
    return [mobileTest1 evaluateWithObject: number];
    
}
-(BOOL)validateDate:(NSString *)country1
{
    NSString *countryFormat1 = @"[0-9]{1,2}+[/]+[0-9]{1,2}+[/]+[0-9]{4}";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
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
   // recorddict=[[NSMutableDictionary alloc]init];
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

- (IBAction)next:(id)sender {
   // recorddict=[[NSMutableDictionary alloc]init];
    c=1;
    temp1 =[mechanical.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp2 =[unattended.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp3 =[device.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp4 =[bath.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp5 =[microwave.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp6=[hydrotheraphy.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp7=[diathermy.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp8=[infrared.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp9=[ultraviolet.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp10=[stim.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp11=[iontophoresis.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp12=[contrastbaths.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp13=[ultrasound.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp14=[unlisted.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp15=[exersice.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp16=[re.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp17=[therapy.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp18=[gait.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp19=[massage.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp20=[manualtheraphy.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp21=[other.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp22=[grouptheraphy.text stringByReplacingOccurrencesOfString:@" " withString:@""];
  

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
                                                                                            calc=([unlisted.text floatValue]+[ultrasound.text floatValue]+[contrastbaths.text floatValue]+[iontophoresis.text floatValue]+[stim.text floatValue]+[hydrotheraphy.text floatValue]+[mechanical.text floatValue]+[ultraviolet.text floatValue]+[infrared.text floatValue]+[diathermy.text floatValue]+[microwave.text floatValue]+[bath.text floatValue]+[device.text floatValue]+[unattended.text floatValue]+[therapy.text floatValue]+[re.text floatValue]+[exersice.text floatValue]+[gait.text floatValue]+[massage.text floatValue]+[other.text floatValue]+[manualtheraphy.text floatValue]+[grouptheraphy.text floatValue]);
                                                                                            page2.text=[[NSString alloc] initWithFormat:@"%f",calc];
                                                                                            [recorddict setValue: page2.text forKey:@"calc2"];
                                                                                            
                                                                                            
                                                                                            [recorddict setValue:mechanical.text forKey:@"mechanical"];
                                                                                            [recorddict setValue:unattended.text forKey:@"unattended"];
                                                                                            [recorddict setValue:device.text forKey:@"device"];
                                                                                            [recorddict setValue:bath.text forKey:@"bath"];
                                                                                            [recorddict setValue:microwave.text forKey:@"microwave"];
                                                                                            [recorddict setValue:hydrotheraphy.text forKey:@"hydrotheraphy"];
                                                                                            [recorddict setValue:diathermy.text forKey:@"diathermy"];
                                                                                            [recorddict setValue:infrared.text forKey:@"infrared"];
                                                                                            [recorddict setValue:ultraviolet.text forKey:@"ultraviolet"];
                                                                                            [recorddict setValue:stim.text forKey:@"stim"];
                                                                                            [recorddict setValue:iontophoresis.text forKey:@"iontophoresis"];
                                                                                            [recorddict setValue:contrastbaths.text forKey:@"contrastbaths"];
                                                                                            
                                                                                            [recorddict setValue:ultrasound.text forKey:@"ultrasound"];
                                                                                            [recorddict setValue:unlisted.text forKey:@"unlisted"];
                                                                                            [recorddict setValue:exersice.text forKey:@"exersice"];
                                                                                            [recorddict setValue:re.text forKey:@"re"];
                                                                                            
                                                                                            [recorddict setValue:therapy.text forKey:@"theraphy"];
                                                                                            [recorddict setValue:gait.text forKey:@"gait"];
                                                                                            [recorddict setValue:massage.text forKey:@"massage"];
                                                                                            [recorddict setValue:manualtheraphy.text forKey:@"manualtheraphy"];
                                                                                            [recorddict setValue:other.text forKey:@"other"];
                                                                                            [recorddict setValue:grouptheraphy.text forKey:@"grouptheraphy"];
                                                                                           // NSLog(@"success!!!recorddict %@",recorddict);
                                                                                            
                                                                                            
                                                                                            
                                                                                            c=1;
                                                                                            }
                                                                                            else
                                                                                            {
                                                                                                c=0;
                                                                                                
                                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid consult group theraphy field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                [alert show];
                                                                                            }
                                                                                            
                                                                                        }
                                                                                        else
                                                                                        {
                                                                                            c=0;
                                                                                            
                                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid consult unlisted/other field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                            [alert show];
                                                                                        }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                        c=0;
                                                                                        
                                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid manual theraphy field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                        [alert show];
                                                                                    }
                                                                                }
                                                                                else
                                                                                {
                                                                                    c=0;
                                                                                    
                                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid massage field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                    [alert show];
                                                                                }
                                                                            }
                                                                            else
                                                                            {
                                                                                c=0;
                                                                                
                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid gait training field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                [alert show];
                                                                            }
                                                                        }
                                                                        else
                                                                        {
                                                                            c=0;
                                                                            
                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid aquatic theraphy field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                            [alert show];
                                                                        }
                                                                    }
                                                                    else
                                                                    {
                                                                        c=0;
                                                                        
                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid neuromuscular field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                        [alert show];
                                                                    }
                                                                }
                                                                else
                                                                {
                                                                    c=0;
                                                                    
                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid therapeutic exercise field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                    [alert show];
                                                                }
                                                            }
                                                            else
                                                            {
                                                                c=0;
                                                                
                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid other/unlisted field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                [alert show];
                                                            }
                                                        }
                                                        else
                                                        {
                                                            c=0;
                                                            
                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid ultrasound field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                            [alert show];
                                                        }
                                                    }
                                                    else
                                                    {
                                                        c=0;
                                                        
                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid contrast baths field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                        [alert show];
                                                    }
                                                    
                                                }
                                                else
                                                {
                                                    c=0;
                                                    
                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid lontophoresis field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                    [alert show];
                                                }
                                                
                                            }
                                            else
                                            {
                                                c=0;
                                                
                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid manual electrical stim field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                [alert show];
                                            }
                                            
                                        }
                                        else
                                        {
                                            c=0;
                                            
                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid ultra violet field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                            [alert show];
                                        }
                                        
                                    }
                                    else
                                    {
                                        c=0;
                                        
                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid infrared field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                        [alert show];
                                    }
                                    
                                }
                                else
                                {
                                    c=0;
                                    
                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid diathermy field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                    [alert show];
                                }
                                
                            }
                            else
                            {
                                c=0;
                                
                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid Whirlpool/Hydrotheraphy field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
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
                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid  Microwave."];
                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                        [alert show];
                    }
                }
                else
                {
                    c=0;
                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid  paraffin Bath."];
                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                    [alert show];
                }
            }
            
            
            else
            {
                c=0;
                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid  vasopneumatic device."];
                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                [alert show];
            }
        }
        else
        {
            c=0;
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid  Electric Stim unattended."];
            [alert setDestructiveButtonWithTitle:@"x" block:nil];
            [alert show];
        }
    }
    
    else
    {
        c=0;
        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid  Traction Mechanical field."];
        [alert setDestructiveButtonWithTitle:@"x" block:nil];
        [alert show];
    }
    
    
   
    if(c==1)
    {
        [self performSegueWithIdentifier:@"dcfee2" sender:self];
    }
 
}
- (void)textFieldDatePicker:(TextFieldDatePicker *)textFieldDatePicker didSelectDate:(NSDate *)date
{
    //	NSLog(@"%@", date);
    
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    
    //	NSLog(@"begin editing");
}
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    
    //NSLog(@"identifier %@",identifier);
    if([identifier isEqual:@"dcfee2"])
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
    
    
    if ([segue.identifier isEqualToString:@"dcfee2"])
    {
        
        
        dcfee2ViewController *destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        NSLog(@"recorddict in dcfeedetail1%@",recorddict);
        // destViewController.delegate=self;
        
    }
}

- (void)dealloc {
//    [page2 release];
    [super dealloc];
}
@end
