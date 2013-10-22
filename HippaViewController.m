//
//  HippaViewController.m
//  EHR
//
//  Created by DeemSysInc on 16/10/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import "HippaViewController.h"
#import "BlockAlertView.h"
#import "BlockBackground.h"
#import "BlockUI.h"
@interface HippaViewController ()

@end

@implementation HippaViewController
@synthesize recorddict;
int a;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

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
-(IBAction)submit:(id)sender
{
    recorddict=[[NSMutableDictionary alloc]init];
    if(([name.text length]!=0)&&
       ([sign.text length]!=0)&&
       ([witness.text length]!=0)&&
       ([date.text length]!=0))
        
    {
        a=0;
        if ([self onlyalphabetsexpress:[name text]]==1)
        {
            if([self onlyalphabetsexpress:[sign text]]==1)
            {
                if([self onlyalphabetsexpress:[witness text]]==1)
                {
                    if([self dateexpress:[date text]]==1)
                    {
                        
                        a=1;
                        [recorddict setValue:name.text forKey:@"name"];
                        [recorddict setValue:sign.text forKey:@"sign"];
                        [recorddict setValue:witness.text forKey:@"witness"];
                        [recorddict setValue:date.text forKey:@"date"];
                    }
                    else
                    {
                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Witness Date."];
                        
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
                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Signature."];
                
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
        NSLog(@"recorddict in HIPPA Policy %@",recorddict);
    }
    else
    {
        NULL;
    }

}

-(IBAction)reset:(id)sender
{
    name.text=@"";
    sign.text=@"";
    witness.text=@"";
    date.text=@"";
}
-(void)dismissKeyboard
{
    [name resignFirstResponder];
    [sign resignFirstResponder];
    [witness resignFirstResponder];
    [date resignFirstResponder];
}
- (void)viewDidLoad
{
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
