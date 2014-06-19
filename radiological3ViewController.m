//
//  radiological3ViewController.m
//  radiological
//
//  Created by deemsys on 3/3/14.
//  Copyright (c) 2014 deemsys. All rights reserved.
//

#import "radiological3ViewController.h"
#import "radiological1ViewController.h"

#import "radiological2ViewController.h"
#import "radiologicalViewController.h"


@interface radiological3ViewController ()

@end

@implementation radiological3ViewController
@synthesize viewtext;
@synthesize  recorddict;
@synthesize pos;
@synthesize nor;
-(BOOL)validateNames:(NSString *)country1
{
    NSString *countryFormat1 = @"(?:[A-Za-z]+[A-Za-z0-9]*)";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
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

- (IBAction)checkboxselected:(UIButton *)sender {

    sender.selected = !sender.selected;
    if(sender.selected){
        [sender setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
    }
    else{
        [sender setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    }
}
- (IBAction)save:(id)sender {
    //recorddict=[[NSMutableDictionary alloc]init];
    if(nor.selected)
    {
        
        [recorddict setValue:@"normal"forKey:@"E_normal1"];
    }
    else
    {
        
        [recorddict  setValue:@"" forKey:@"E_normal1"];
    }
    if(pos.selected)
    {
        
        
        [recorddict setValue:@"positive for" forKey:@"E_positive for"];
    }
    else
    {
        
        [recorddict  setValue:@"" forKey:@"E_positive for"];
        
    }

    a=1;
    temp1 = [viewtext.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    if((([temp1 length]>0)&&([self validateNames:temp1]==1))||([temp1 length]==0))
    {
        [recorddict setValue:viewtext.text forKey:@"E_views"];
        NSLog(@"success!!!recorddict %@",recorddict);
        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Info!" message:@"Success."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
        [alert show];
        
    }
    else
        {
            a=0;
            
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid view text ."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
            [alert show];
            
            
        }
    }


- (IBAction)cancel:(id)sender {
    for (UIView *subview in [self.view subviews])
        if([subview isKindOfClass:[UITextField class]])
            [(UITextField*)subview setText:@""];

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
    NSLog(@"success!!!recorddict %@",recorddict);
    

   
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
