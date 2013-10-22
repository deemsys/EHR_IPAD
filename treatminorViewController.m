//
//  treatminorViewController.m
//  EHR
//
//  Created by DeemSysInc on 15/10/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import "treatminorViewController.h"
#import "BlockAlertView.h"
#import "BlockBackground.h"
#import "BlockUI.h"
@interface treatminorViewController ()

@end

@implementation treatminorViewController
@synthesize  recorddict;
@synthesize  parentguardname;
@synthesize  age;
@synthesize  drname;
@synthesize  sign;
@synthesize  date;
@synthesize  witness;

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
-(BOOL)agevalidate:(NSString *)zipnumber{
    NSString *zipFormat1 =  @"[0-9]{1,3}?";
    
    //  [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *zipTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", zipFormat1];
    return [zipTest1 evaluateWithObject:zipnumber];
    
}

-(IBAction)submit:(id)sender
{
    recorddict=[[NSMutableDictionary alloc]init];
    if(([parentguardname.text length]!=0)&&
       ([age.text length]!=0)&&
       ([drname.text length]!=0)&&
       ([sign.text length]!=0)&&
       ([date.text length]!=0)&&
       ([witness.text length]!=0))
    {
        a=0;
        if ([self onlyalphabetsexpress:[parentguardname text]]==1)
        {
            if([self agevalidate:[age text]]==1)
            {
                if([self onlyalphabetsexpress:[drname text]]==1)
                {
                    if([self onlyalphabetsexpress:[sign text]]==1)
                    {
                        if([self dateexpress:[date text]]==1)
                        {
                            if([self onlyalphabetsexpress:[witness text]]==1)
                            {
                                a=1;
                                [recorddict setValue:parentguardname.text forKey:@"parentguardname"];
                                [recorddict setValue:age.text forKey:@"age"];
                                [recorddict setValue:drname.text forKey:@"doctorname"];
                                [recorddict setValue:sign.text forKey:@"signature"];
                                [recorddict setValue:date.text forKey:@"date"];
                                [recorddict setValue:witness.text forKey:@"witness"];
                            }
                            else
                            {
                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Witness."];
                                
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
                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Signature."];
                        
                        //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                        [alert show];
                    }
                }
                else
                {
                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Doctor Name."];
                    //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                    [alert show];
                }
            }
            else
            {
                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Age."];
                
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
        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter all required fields."];
        
        //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
        [alert setDestructiveButtonWithTitle:@"x" block:nil];
        [alert show];
    }
    if (a==1)
    {
        NSLog(@"recorddict in consent to treat a minor form %@",recorddict);
    }
    else
    {
        NULL;
    }
    

}

-(IBAction)reset:(id)sender
{
    parentguardname.text=@"";
    age.text=@"";
    drname.text=@"";
    sign.text=@"";
    date.text=@"";
    witness.text=@"";
    
}
-(void)dismissKeyboard
{
    [parentguardname resignFirstResponder];
    [age resignFirstResponder];
    [drname resignFirstResponder];
    [sign resignFirstResponder];
    [date resignFirstResponder];
    [witness resignFirstResponder];
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
