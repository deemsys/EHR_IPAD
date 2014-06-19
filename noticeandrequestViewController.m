//
//  noticeandrequestViewController.m
//  EHR
//
//  Created by DeemSysInc on 16/10/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import "noticeandrequestViewController.h"
#import "BlockAlertView.h"
#import "BlockBackground.h"
#import "BlockUI.h"
@interface noticeandrequestViewController ()

@end

@implementation noticeandrequestViewController
@synthesize recorddict;
@synthesize selectforms;
int a;


-(BOOL)numbervalidate:(NSString *)zipnumber{
    NSString *zipFormat1 =  @"[0-9]{1,10}?";
    
    //  [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *zipTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", zipFormat1];
    return [zipTest1 evaluateWithObject:zipnumber];
    
}
-(BOOL)mobilenumber:(NSString *)zipnumber{
    NSString *zipFormat1 =  @"[0-9]{10}?";
    
    //  [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *zipTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", zipFormat1];
    return [zipTest1 evaluateWithObject:zipnumber];
    
}
- (void)textFieldDatePicker:(TextFieldDatePicker *)textFieldDatePicker didSelectDate:(NSDate *)date
{
    //	NSLog(@"%@", date);
    
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    
    //	NSLog(@"begin editing");
}
-(BOOL)onlyalphabetvalidate:(NSString *)country1
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
-(BOOL)email:(NSString *)country1
{
    NSString *countryFormat1 = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    
    //  [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
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
-(IBAction)submit:(id)sender
{
    recorddict=[[NSMutableDictionary alloc]init];
     selectforms=[[NSMutableArray alloc]init];
    if(button1.selected)
    {
        [selectforms addObject:@"No Objection"];
        
    }
    [recorddict setObject:selectforms forKey:@"selectforms"];
    if(([insurancecompanyname.text length]!=0)&&
       ([address.text length]!=0)&&
       ([patientname.text length]!=0)&&
       ([date.text length]!=0)&&
       ([enrollno.text length]!=0)&&
       ([by.text length]!=0)&&
       ([faxnumber.text length]!=0)&&
       ([sincerly.text length]!=0)&&
       ([patname2.text length]!=0)&&
       ([authcr.text length]!=0)&&
       (button1.isSelected==TRUE))
       
        
    {
        a=0;
        if ([self onlyalphabetvalidate:[insurancecompanyname text]]==1)
        {
            if([self onlyalphabetvalidate:[address text]]==1)
            {
                if([self onlyalphabetvalidate:[patientname text]]==1)
                {
                    if([self dateexpress:[date text]]==1)
                    {
                        if ([self numbervalidate:[enrollno text]]==1)
                        {
                            if([self onlyalphabetvalidate:[by text]]==1)
                            {
                                if([self email:[faxnumber text]]==1)
                                {
                                    if([self onlyalphabetvalidate:[sincerly text]]==1)
                                    {
                                        if([self onlyalphabetvalidate:[patname2 text]]==1)
                                        {
                                            if([self onlyalphabetvalidate:[authcr text]]==1)
                                            {
                        a=1;
                        [recorddict setValue:insurancecompanyname.text forKey:@"insurancecompanyname"];
                        [recorddict setValue:address.text forKey:@"address"];
                        [recorddict setValue:patientname.text forKey:@"patientname"];
                        [recorddict setValue:date.text forKey:@"date"];
                        [recorddict setValue:enrollno.text forKey:@"enrollno"];
                        [recorddict setValue:by.text forKey:@"by"];
                        [recorddict setValue:faxnumber.text forKey:@"faxnumber"];
                        [recorddict setValue:sincerly.text forKey:@"sincerly"];
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
                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Witness Name."];
                        
                        //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                        [alert show];
                    }
                }
                else
                {
                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Fax Number."];
                    
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
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Subscriber Number."];
            
            //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
            [alert setDestructiveButtonWithTitle:@"x" block:nil];
            [alert show];
        }
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
                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Name."];
                    
                    //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                    [alert show];
                }
            }

            else
            {
                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Address."];
                
                //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                [alert show];
            }
        }

        else
        {
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Company Name."];
            
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
        NSLog(@"recorddict in Notice Form %@",recorddict);
    }
    else
    {
        NULL;
    }
    

}
-(IBAction)reset:(id)sender
{
     insurancecompanyname.text=@"";
    address.text=@"";
    patientname.text=@"";
    date.text=@"";
    enrollno.text=@"";
    by.text=@"";
    faxnumber.text=@"";
    sincerly.text=@"";
    patname2.text=@"";
    authcr.text=@"";

}
-(void)dismissKeyboard
{
    [insurancecompanyname resignFirstResponder];
    [address resignFirstResponder];
    [patientname resignFirstResponder];
    [patname2 resignFirstResponder];
    [date resignFirstResponder];
    [enrollno resignFirstResponder];
    [by resignFirstResponder];
    [faxnumber resignFirstResponder];
    [sincerly resignFirstResponder];
    [authcr resignFirstResponder];
    
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
    selectforms=[[NSMutableArray alloc]init];
  //  recorddict=[[NSMutableDictionary alloc]init];
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
