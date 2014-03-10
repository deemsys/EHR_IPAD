//
//  hamil2ViewController.m
//  hamil
//
//  Created by Admin on 05/03/14.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//

#import "hamil2ViewController.h"
#import "hamil3ViewController.h"
#import "BlockAlertView.h"

@interface hamil2ViewController ()

@end

@implementation hamil2ViewController
@synthesize recorddict;
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
- (IBAction)next:(id)sender
{
   // recorddict=[[NSMutableDictionary alloc]init];
    temp1 = [painlevel.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp2 = [right.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp3 = [left.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    a=1;
    if (b1.selected)
    {
        [recorddict setValue:@"Right" forKey:@"jackright"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"jackright"];
    }
    if (b2.selected)
    {
        [recorddict setValue:@"Left" forKey:@"jackleft"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"jackleft"];
    }
    if (b3.selected)
    {
        [recorddict setValue:@"Localized" forKey:@"jacklocal"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"jacklocal"];
    }
    if (b4.selected)
    {
        [recorddict setValue:@"Right" forKey:@"Foraminright"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"Foraminright"];
    }
    if (b5.selected)
    {
        [recorddict setValue:@"Left" forKey:@"Foraminleft"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"Foraminleft"];
    }
    if (b6.selected)
    {
        [recorddict setValue:@"Localized" forKey:@"Foraminlocal"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"Foraminlocal"];
    }
    if (b7.selected)
    {
        [recorddict setValue:@"Right" forKey:@"Shoulderright"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"Shoulderight"];
    }
    if (b8.selected)
    {
        [recorddict setValue:@"Left" forKey:@"Shoulderleft"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"Shoulderleft"];
    }
    if (b9.selected)
    {
        [recorddict setValue:@"Localized" forKey:@"Shoulderlocal"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"Shoulderlocal"];
    }
    if (b10.selected)
    {
        [recorddict setValue:@"Right" forKey:@"Georgeright"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"Georgeright"];
    }
    if (b11.selected)
    {
        [recorddict setValue:@"Left" forKey:@"Georgeleft"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"Georgeleft"];
    }
    if (b12.selected)
    {
        [recorddict setValue:@"Localized" forKey:@"Georgelocal"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"Georgelocal"];
    }
    if (b13.selected)
    {
        [recorddict setValue:@"Pain Ad/Pass" forKey:@"O'Don"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"O'Don"];
    }
    if (b14.selected)
    {
        [recorddict setValue:@"Pain Ad/Pass" forKey:@"O'Don1"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"O'Don1"];
    }
    if (b15.selected)
    {
        [recorddict setValue:@"Right" forKey:@"Bacodyright"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"Bacodyright"];
    }
    if (b16.selected)
    {
        [recorddict setValue:@"Left" forKey:@"Bacodyleft"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"Bacodyleft"];
    }
    if (b17.selected)
    {
        [recorddict setValue:@"Localized" forKey:@"Bacodylocal"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"Bacodylocal"];
    }
    if (b18.selected)
    {
        [recorddict setValue:@"Relief" forKey:@"relief"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"relief"];
    }
    if (b19.selected)
    {
        [recorddict setValue:@"No relief" forKey:@"noreli"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"noreli"];
    }
    if (b20.selected)
    {
        [recorddict setValue:@"Right" forKey:@"cer_valright"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"cer_valright"];
    }
    if (b21.selected)
    {
        [recorddict setValue:@"Left" forKey:@"cer_valleft"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"cer_valleft"];
    }
    if (b22.selected)
    {
        [recorddict setValue:@"Localized" forKey:@"cer_vallocal"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"cer_vallocal"];
    }
    if (b23.selected)
    {
        [recorddict setValue:@"Right" forKey:@"Adsonsright"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"Adsonsright"];
    }
    if (b24.selected)
    {
        [recorddict setValue:@"Left" forKey:@"Adsonsleft"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"Adsonsleft"];
    }
    if (b25.selected)
    {
        [recorddict setValue:@"Localized" forKey:@"Adsonslocal"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"Adsonslocal"];
    }
    if (b26.selected)
    {
        [recorddict setValue:@"Right" forKey:@"rustright"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"rustright"];
    }
    if (b27.selected)
    {
        [recorddict setValue:@"Left" forKey:@"rustleft"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"rustleft"];
    }
    if (b28.selected)
    {
        [recorddict setValue:@"Localized" forKey:@"rustlocal"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"rustlocal"];
    }
    
    if((([temp1 length]>0)&&([self validateNames:temp1]==1))||([temp1 length]==0))
    {
        if((([temp2 length]>0)&&([self validateNames:temp2 ]==1))||([temp2 length]==0))
        {
            if((([temp3 length]>0)&&([self validateNames:temp3 ]==1))||([temp3 length]==0))
            {
                [recorddict setValue:painlevel.text forKey:@"cervical_Painlevel"];
                [recorddict setValue:right.text forKey:@"Right text"];
                [recorddict setValue:left.text forKey:@"Left text"];
               if(a==1)
                 {
                 [self performSegueWithIdentifier:@"hami4" sender:self];
                 }
       
             // NSLog(@"success%@",recorddict);
                
            }
   
                else
                {
                    a=0;
                    
                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid left text field ."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                    [alert show];
                    
                    
                }
            }
            else
            {
                a=0;
                
                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid right text field ."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                [alert show];
                
            }
        }
        else
        {
            a=0;
            
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid painlevel ."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
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
    
    if([identifier isEqual:@"hami4"])
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
    
    if ([segue.identifier isEqualToString:@"hami4"])
    {
        
        hamil3ViewController*destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
          NSLog(@"recorddict in third %@",recorddict);
    }
    
    
}
- (void)dealloc {
    
    [painlevel release];
    [right release];
    [left release];
    [b1 release];
    [b2 release];
    [b3 release];
    [b4 release];
    [b5 release];
    [b6 release];
    [b7 release];
    [b8 release];
    [b9 release];
    [b10 release];
    [b11 release];
    [b12 release];
    [b13 release];
    [b14 release];
    [b15 release];
    [b16 release];
    [b17 release];
    [b18 release];
    [b19 release];
    [b20 release];
    [b21 release];
    [b22 release];
    [b23 release];
    [b24 release];
    [b25 release];
    [b26 release];
    [b27 release];
    [b28 release];
    [super dealloc];
}
@end
