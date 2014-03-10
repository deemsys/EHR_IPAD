//
//  hamil3ViewController.m
//  hamil
//
//  Created by Admin on 05/03/14.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//

#import "hamil3ViewController.h"
#import "hamil4ViewController.h"
#import "BlockAlertView.h"

@interface hamil3ViewController ()

@end

@implementation hamil3ViewController
@synthesize  recorddict;
-(BOOL)validateNames:(NSString *)country1
{
    NSString *countryFormat1 = @"(?:[A-Za-z]+[A-Za-z0-9]*)";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(IBAction)checkboxSelected:(UIButton*)sender {
    sender.selected = !sender.selected;
    if(sender.selected){
        [sender setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
    }
    else{
        [sender setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    }
}
- (IBAction)next:(id)sender {


//recorddict=[[NSMutableDictionary alloc]init];
temp = [painlevel.text stringByReplacingOccurrencesOfString:@" " withString:@""];
a=1;
if (b1.selected)
{
    [recorddict setValue:@"Hump Remains" forKey:@"humpre"];
}
else
{
    [recorddict setValue:@"" forKey:@"humpre"];
}
    if (b2.selected)
    {
        [recorddict setValue:@"Hump Dissap" forKey:@"humpdis"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"humpdis"];
    }
    if (b3.selected)
    {
        [recorddict setValue:@"Pain When Bending towards Throatic Lession" forKey:@"shep_pain1"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"shep_pain1"];
    }
    if (b4.selected)
    {
        [recorddict setValue:@"Pain When Bending away from Throatic Lession" forKey:@"shep_pain2"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"shep_pain2"];
    }
    if (b5.selected)
    {
        [recorddict setValue:@"C/S Pain" forKey:@"c/s"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"c/s"];
    }
    if (b6.selected)
    {
        [recorddict setValue:@"T/S Pain" forKey:@"t/s"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"t/s"];
    }
    if (b7.selected)
    {
        [recorddict setValue:@"Right" forKey:@"compright"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"compright"];
    }
    if (b8.selected)
    {
        [recorddict setValue:@"Left" forKey:@"compleft"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"compleft"];
    }
    if (b9.selected)
    {
        [recorddict setValue:@"Localized" forKey:@"complocal"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"complocal"];
    }

    
if((([temp length]>0)&&([self validateNames:temp]==1))||([temp length]==0))
{
    [recorddict setValue:painlevel.text forKey:@"Thoracic painlevel"];
   if(a==1)
     {
     [self performSegueWithIdentifier:@"hami5" sender:self];
     }
    
  //  NSLog(@"success%@",recorddict);
    
}
    
else
{
    a=0;
    
    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid painlevel."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
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
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    
    if([identifier isEqual:@"hami5"])
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
    
    if ([segue.identifier isEqualToString:@"hami5"])
    {
        
        hamil4ViewController*destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        NSLog(@"recorddict in fourth %@",recorddict);
    }
    
    
}
- (void)dealloc {
    [painlevel release];
    [b1 release];
    [b2 release];
    [b3 release];
    [b4 release];
    [b5 release];
    [b6 release];
    [b7 release];
    [b8 release];
    [b9 release];
    [super dealloc];
}
@end
