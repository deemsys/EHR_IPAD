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
- (void)textFieldDatePicker:(TextFieldDatePicker *)textFieldDatePicker didSelectDate:(NSDate *)date
{
    //	NSLog(@"%@", date);
    
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    
    //	NSLog(@"begin editing");
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
        patinfo.text=@"Confidential Patient Information";
        [selectforms addObject:@"Confidential Patient Information"];
        
    }
    else
        patinfo.text=NULL;
    if(button2.selected)
    {
        screening.text=@"Screening Disclosure/referral";
        [selectforms addObject:@"Screening Disclosure/referral"];
        
    }
    else
        screening.text=NULL;
    if(button3.selected)
    {
        aob.text=@"Assignment of Benefits/Lien";
        [selectforms addObject:@"Assignment of Benefits/Lien"];
        
        
    }
    else
        aob.text=NULL;
    if(button4.selected)
    {
        history.text=@" History/Exam Sheet";
        [selectforms addObject:@" History/Exam Sheet"];
        
    }
    history.text=NULL;
    if(button5.selected)
    {
        xray_sheet.text=@"SOAP Note/X-ray Sheet";
        [selectforms addObject:@"SOAP Note/X-ray Sheet"];
        
    }
    else
        xray_sheet.text=NULL;
        
    if(button6.selected)
    {
        consent.text=@"Consent to Treat Form/Minor";
        [selectforms addObject:@"Consent to Treat Form/Minor"];
    }
    else
        consent.text=NULL;
    if(button7.selected)
    {
        report.text=@"Accident Report";
        [selectforms addObject:@"Accident Report"];
        
    }
    else
        report.text=NULL;
    if(button8.selected)
    {
      hiv.text=@"Health insurance Verification";
        [selectforms addObject:@"Health insurance Verification"];
    }
    else
        hiv.text=NULL;
    if(button9.selected)
        {
          releaseofmed.text=@"Release Of Medical Records Authorization";
            [selectforms addObject:@"Release Of Medical Records Authorization"];
        }
        else
            releaseofmed.text=NULL;
    if(button10.selected)
    {
       hippa.text=@"HIPPA Notice Of Privacy Practices";
        [selectforms addObject:@"HIPPA Notice Of Privacy Practices"];
         
    }
    else
        hippa.text=NULL;
    if(button12.selected)
    {
        notice.text=@"Notice And Request To Not Bill Private Health Insurance ";
        [selectforms addObject:@"Notice And Request To Not Bill Private Health Insurance "];
    }
    else
        notice.text=NULL;
    if(button11.selected)
    {
        hardship.text=@"Hardship Agreement";
        [selectforms addObject:@"Hardship Agreement"];

    }
    else
        hardship.text=NULL;
    if(button13.selected)
    {
      consenttotreat.text=@"Authorization And Consent To Treat";
        [selectforms addObject:@"Authorization And Consent To Treat"];
    }
    else
        consenttotreat.text=NULL;
    if(button14.selected)
    {
      radiologic.text=@"Radiologic Report";
        [selectforms addObject:@"Radiologic Report"];

    }
    else
        radiologic.text=NULL;
        if(button15.selected)
        {
            physicalexam.text=@"Physical Exam";
            [selectforms addObject:@"Physical Exam"];

        }
        else
            physicalexam.text=NULL;
            
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

                                    if([self number:[billed text]]==1)
                                    {

                                        if([self dateexpress:[billeddate text]]==1)
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
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Amount."];
            
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


