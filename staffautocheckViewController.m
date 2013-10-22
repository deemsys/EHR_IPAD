//
//  staffautocheckViewController.m
//  EHR
//
//  Created by DeemSysInc on 16/10/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import "staffautocheckViewController.h"
#import "BlockAlertView.h"
#import "BlockBackground.h"
#import "BlockUI.h"
@interface staffautocheckViewController ()

@end

@implementation staffautocheckViewController
@synthesize recorddict;
@synthesize selectforms;
int a;

-(BOOL)onlyalphabetsexpress:(NSString *)country1
{
    NSString *countryFormat1 = @"(?:[A-Za-z]+[a-z]*)";
    
    // [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)dateexpress:(NSString *)country1
{
    NSString *countryFormat1 = @"[0-9]{2}+[/]+[0-9]{2}+[/]+[0-9]{4}";
    
    //  [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)number:(NSString *)zipnumber{
    NSString *zipFormat1 =  @"[0-9]{1,3}?";
    
    //  [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *zipTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", zipFormat1];
    return [zipTest1 evaluateWithObject:zipnumber];
    
}
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(IBAction)submit:(id)sender
{
    recorddict=[[NSMutableDictionary alloc]init];
    selectforms=[[NSMutableArray alloc]init];
    if(button1.selected)
    {
        [selectforms addObject:@"Confidential Patient Information"];
        
    }
    if(button2.selected)
    {
        [selectforms addObject:@"Screening Disclosure/referral"];
        
    }
    if(button3.selected)
    {
        [selectforms addObject:@"Assignment of Benefits/Lien"];
        
        
    }
    if(button4.selected)
    {
        
        [selectforms addObject:@" History/Exam Sheet"];
        
    }
    if(button5.selected)
    {
        [selectforms addObject:@"SOAP Note/X-ray Sheet"];
        
    }
    if(button6.selected)
    {
        [selectforms addObject:@"Consent to Treat Form/Minor"];
    }
    if(button7.selected)
    {
        [selectforms addObject:@"Accident Report"];
        
    }
    [recorddict setObject:selectforms forKey:@"selectforms"];
    if(([patientname.text length]!=0)&&
       ([insuramceattroney.text length]!=0)&&
       ([damageamount.text length]!=0)&&
       ([faultinsurance.text length]!=0)&&
       ([medpay.text length]!=0)&&
       ([botherattroney.text length]!=0)&&
       ([protectionreceived.text length]!=0)&&
       ([billed.text length]!=0)&&
       ([remdate.text length]!=0))
    {
        a=0;
        if ([self onlyalphabetsexpress:[patientname text]]==1)
        {
            if([self onlyalphabetsexpress:[insuramceattroney text]]==1)
            {
                if([self number:[damageamount text]]==1)
                {

                    if([self onlyalphabetsexpress:[faultinsurance text]]==1)
                    {

                        if([self onlyalphabetsexpress:[medpay text]]==1)
                        {

                            if([self onlyalphabetsexpress:[botherattroney text]]==1)
                            {
                                if([self onlyalphabetsexpress:[protectionreceived text]]==1)
                                {

                                    if([self dateexpress:[billed text]]==1)
                                    {

                                        if([self dateexpress:[remdate text]]==1)
                                        {

                                            a=1;
                                            [recorddict setValue:patientname.text forKey:@"patientname"];
                                            [recorddict setValue:insuramceattroney.text forKey:@"insuranceattorney"];
                                            [recorddict setValue:damageamount.text forKey:@"damageamount"];
                                            [recorddict setValue:faultinsurance.text forKey:@"faultinsurance"];
                                            [recorddict setValue:medpay.text forKey:@"medpay"];
                                            [recorddict setValue:botherattroney.text forKey:@"otherattorney"];
                                        [recorddict setValue:protectionreceived.text forKey:@"protectionreceived"];
                                            [recorddict setValue:billed.text forKey:@"billed"];
                                            [recorddict setValue:remdate.text forKey:@"remdate"];
            }
            else
            {
                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Date."];
                
                //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                [alert show];
            }
                                    }
        else
        {
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Billed Date."];
            
            //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
            [alert setDestructiveButtonWithTitle:@"x" block:nil];
            [alert show];
        }
    }
                                else
                                {
                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Protection Details."];
                                    
                                    //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                    [alert show];
                                }
                            }
                            else
                            {
                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Attorney."];
                                
                                //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                [alert show];
                            }
                        }
                        else
                        {
                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Med Pay."];
                            
                            //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                            [alert show];
                        }
                    }
                    else
                    {
                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Fault Insurance."];
                        
                        //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                        [alert show];
                    }
                }
                else
                {
                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Damge Value."];
                    
                    //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                    [alert show];
                }
            }
            else
            {
                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Name."];
                
                //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                [alert show];
            }
        }
        else
        {
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Name."];
            
            //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
            [alert setDestructiveButtonWithTitle:@"x" block:nil];
            [alert show];
        }
    }
    else
    {
        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter all Required fields."];
        
        //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
        [alert setDestructiveButtonWithTitle:@"x" block:nil];
        [alert show];
    }
    if (a==1)
    {
        NSLog(@"recorddict in Staff Auto Checklist %@",recorddict);
    }
    else
    {
        NULL;
    }


}
-(IBAction)reset:(id)sender
{
    patientname.text=@"";
    insuramceattroney.text=@"";
    damageamount.text=@"";
    faultinsurance.text=@"";
    billed.text=@"";
    remdate.text=@"";
    botherattroney.text=@"";
    medpay.text=@"";
    protectionreceived.text=@"";
}
-(void)dismissKeyboard
{
    [patientname resignFirstResponder];
    [insuramceattroney resignFirstResponder];
    [damageamount resignFirstResponder];
    [faultinsurance resignFirstResponder];
    [billed resignFirstResponder];
    [remdate resignFirstResponder];
    [botherattroney resignFirstResponder];
    [medpay resignFirstResponder];
    [protectionreceived resignFirstResponder];
    
}
-(IBAction)checkboxSelected:(UIButton*)sender
{
    sender.selected = !sender.selected;
    if(sender.selected)
    {
        [sender setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
    }
    else
    {
        [sender setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    }
}

- (void)viewDidLoad
{
     selectforms=[[NSMutableArray alloc]init];
   // recorddict=[[NSMutableDictionary alloc]init];

    [super viewDidLoad];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end


