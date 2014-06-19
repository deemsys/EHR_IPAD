//
//  updateViewController.m
//  update
//
//  Created by Admin on 28/02/14.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//

#import "updateViewController.h"
#import "BlockAlertView.h"

@interface updateViewController ()

@end

@implementation updateViewController
@synthesize recorddict;
-(BOOL)validateAddress:(NSString *)country1
{
    NSString *countryFormat1 = @"[A-Z0-9a-z ,._/-]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
- (void)textFieldDatePicker:(TextFieldDatePicker *)textFieldDatePicker didSelectDate:(NSDate *)date
{
    //	NSLog(@"%@", date);
    
}

- (BOOL)textFieldDidBeginEditing:(UITextField *)textField
{
    
    //	NSLog(@"begin editing");
    return NO;
}
-(BOOL)validateNames:(NSString *)country1
{
    NSString *countryFormat1 = @"(?:[A-Za-z0-9,/\'.;]*)";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateDate:(NSString *)country1
{
    NSString *countryFormat1 =  @"[0-9]{2}+[/]+[0-9]{2}+[/]+[0-9]{4}";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
- (IBAction)save:(id)sender
{
    recorddict=[[NSMutableDictionary alloc]init];
    [recorddict addEntriesFromDictionary:recorddict];
    a=1;
     temp1 =[[attorney.text stringByReplacingOccurrencesOfString:@"\n" withString:@" "]stringByReplacingOccurrencesOfString:@" " withString:@""];
    //temp1=[attorney.text stringByReplacingOccurrencesOfString:@" "withString:@""];
    temp2=[regards.text stringByReplacingOccurrencesOfString:@" "withString:@""];
    temp3=[injury.text stringByReplacingOccurrencesOfString:@" "withString:@""];
    temp4=[date.text stringByReplacingOccurrencesOfString:@" "withString:@""];

        if(([temp1 length]!=0)&&
           ([temp2 length]!=0)&&
           ([temp3 length]!=0)&&
           ([temp4 length]!=0))
        {
            if([self validateNames:temp1]==1)
            {
                if([self validateNames:temp2]==1)
                {
                    if([self validateDate:temp3]==1)
                    {
                        if([self validateDate:temp4]==1)
                        {
                            [recorddict setValue:attorney.text forKey:@"To Attorney"];
                            [recorddict setValue:regards.text forKey:@"Regards"];
                            [recorddict setValue:injury.text forKey:@"Date of injury"];
                            [recorddict setValue:date.text forKey:@"Date"];
                            NSLog(@"Success!!!%@",recorddict);
                        }
                            else
                            {
                                a=0;
                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid Todays date."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                [alert show];
                            }
                    }
                        else
                        {
                            a=0;
                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid Date of injury."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                            [alert show];
                        }
                }
                        else
                        {
                            a=0;
                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid Regards to."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                            [alert show];
                        }
            }
            else
            {
                a=0;
                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid To Attorney."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                [alert show];
            }
        }
        else
        {
            a=0;
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"All Fields Are Mandatory."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
            [alert show];
        }
}

- (void)viewDidLoad
{
    attorney.layer.borderWidth = 0.7;
    attorney.layer.borderColor = [[UIColor colorWithRed:205/255.0f green:205/255.0f blue:205/255.0f alpha:1.0f] CGColor];
    //    self.layer.borderColor=[[UIColor blackColor]CGColor];
    attorney.layer.cornerRadius = 6.5;
    attorney.delegate = self;
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
