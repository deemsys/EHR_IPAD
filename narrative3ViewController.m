//
//  narrative3ViewController.m
//  narrative
//
//  Created by deemsys on 2/28/14.
//  Copyright (c) 2014 deemsys. All rights reserved.
//

#import "narrative3ViewController.h"
#import "narrative1ViewController.h"
#import "narrative2ViewController.h"
#import "narrativeViewController.h"

@interface narrative3ViewController ()

@end

@implementation narrative3ViewController

@synthesize i1;
@synthesize i2;
@synthesize i3;
@synthesize de1;
@synthesize de2;
@synthesize de3;
@synthesize mr1;
@synthesize mr2;
@synthesize mr3;
@synthesize date1;
@synthesize date2;
@synthesize exp1;
@synthesize hope;
@synthesize he1;
@synthesize he2;
@synthesize he3;
@synthesize his1;
@synthesize his2;
@synthesize his3;
@synthesize his4;
@synthesize his5;
@synthesize his6;
@synthesize name;
@synthesize name1;
@synthesize name2;
@synthesize name3;
@synthesize mrseg;
@synthesize goodseg;


@synthesize recorddict;

-(BOOL)validateNames:(NSString *)country1
{
    NSString *countryFormat1 = @"(?:[A-Za-z0-9]+[A-Za-z0-9]*)";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateDate:(NSString *)country1
{
    NSString *countryFormat1 = @"[0-9]{1,2}+[-]+[0-9]{1,2}+[-]+[0-9]{4}";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}


- (IBAction)save:(id)sender {
    
    a=1;
 
    temp4 =[i1.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp5 =[i2.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp6=[i3.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp7=[de1.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp8=[de2.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp9=[de3.text stringByReplacingOccurrencesOfString:@" " withString:@""];
//    temp10=[exp1.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp11=[name.text stringByReplacingOccurrencesOfString:@" " withString:@""];
//    temp12=[hope.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp13=[date1.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp14=[date2.text stringByReplacingOccurrencesOfString:@" " withString:@""];
   
    temp16=[exp1.text stringByReplacingOccurrencesOfString:@" " withString:@""];

    temp19=[hope.text stringByReplacingOccurrencesOfString:@" " withString:@""];
   

    
    
    if(([temp19 length]!=0)&&([temp11 length]!=0))
       
      {
                            if((([temp4 length]>0)&&([self validateNames:temp4 ]==1))||([temp4 length]==0))
                        {
                            if((([temp5 length]>0)&&([self validateNames:temp5]==1))||([temp5 length]==0))
                            {
                                if((([temp6 length]>0)&&([self validateNames:temp6]==1))||([temp6 length]==0))
                                {
                                    if((([temp7 length]>0)&&([self validateNames:temp7]==1))||([temp7 length]==0))
                                    {
                                        if((([temp8 length]>0)&&([self validateNames:temp8]==1))||([temp8 length]==0))
                                        {
                                            if((([temp9 length]>0)&&([self validateNames:temp9]==1))||([temp9 length]==0))
                                            {
                                                  if((([temp11 length]>0)&&([self validateNames:temp11]==1))||([temp11 length]==0))
                                                    {
                                                        
                                                            if((([temp13 length]>0)&&([self validateDate:temp13]==1))||([temp13 length]==0))
                                                            {
                                                                if((([temp14 length]>0)&&([self validateDate:temp14]==1))||([temp14 length]==0))
                                                                {
                                                                    
                                                                        if((([temp16 length]>0)&&([self validateNames:temp16]==1))||([temp16 length]==0))
                                                                        {
                                                                            
                                                                                    if((([temp19 length]>0)&&([self validateNames:temp19]==1))||([temp19 length]==0))
                                                                                    {
                                                                                        
                                                                                            a=0;
                                                                                     
                                                                                            [recorddict setValue:i1.text forKey:@"i1"];
                                                                                            [recorddict setValue:i2.text forKey:@"i2"];
                                                                                            [recorddict setValue:i3.text forKey:@"i3"];
                                                                                            [recorddict setValue:name.text forKey:@"name"];
                                                                                            [recorddict setValue:mr forKey:@"mr2"];
                                                                                         [recorddict setValue:good forKey:@"goodsegval"];
                                                                                            [recorddict setValue:his1.text forKey:@"gennnn"];
                                                                                            [recorddict setValue:date1.text forKey:@"date1"];
                                                                                            [recorddict setValue:date2.text forKey:@"date2"];
                                                                                            [recorddict setValue:exp1.text forKey:@"exp1"];
                                                                                            [recorddict setValue:hope.text forKey:@"hope"];
                                                                                            [recorddict setValue:de1.text forKey:@"de1"];
                                                                                            [recorddict setValue:de2.text forKey:@"de2"];
                                                                                            [recorddict setValue:de3.text forKey:@"de3"];
                                                                           NSLog(@"success!!!recorddict %@",recorddict);
                                                                                        
                                                                                        
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                        a=0;
                                                                                        
                                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid hope."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                        [alert show];
                                                                                    }
                                                                                    
                                                                                }
                                                                    
                                                                        else
                                                                        {
                                                                            a=0;
                                                                            
                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid expirence."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                            [alert show];
                                                                        }
                                                                        
                                                                    
                                                                    
                                                                }
                                                                else
                                                                {
                                                                    a=0;
                                                                    
                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid date."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                    [alert show];
                                                                }
                                                                
                                                            }
                                                            else
                                                            {
                                                                a=0;
                                                                
                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid date."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                [alert show];
                                                            }
                                                            
                                                        
                                                    }
                                                    else
                                                    {
                                                        a=0;
                                                        
                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid name."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                        [alert show];
                                                    }
                                                }
                                                                                            else
                                            {
                                                a=0;
                                                
                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid description 3."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                [alert show];
                                            }
                                        }
                                        else
                                        {
                                            a=0;
                                            
                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid  description 2."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                            [alert show];
                                        }
                                    }
                                    else
                                    {
                                        a=0;
                                        
                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid  description 1."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                        [alert show];
                                    }
                                }
                                else
                                {
                                    a=0;
                                    
                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid icode 3."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                    [alert show];
                                }
                            }
                            else
                            {
                                a=0;
                                
                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid icode 2."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                [alert show];
                            }
                        }
                        else
                        {
                            a=0;
                            
                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid icode 1."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                            [alert show];
                        }
                    }
    
    else
    {
        a=0;
        
        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter required fields."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
        [alert show];
    }
    if (a==1) {
        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Info!" message:@"Success."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
        [alert show];
    }
}
- (IBAction)goodsegact:(id)sender {
    if (goodseg.selectedSegmentIndex==0) {
        good=@"Good at this time";
    }
    if (goodseg.selectedSegmentIndex==1) {
        good=@"Poor due to";
    }
}
- (IBAction)mrsegact:(id)sender {
    if (mrseg.selectedSegmentIndex==0) {
        mr=@"Mr";
    }
    if (meseg.selectedSegmentIndex==1) {
        mr=@"Mrs";
    }
    if (mrseg.selectedSegmentIndex==2) {
        mr=@"Ms";
    }
    if (([mr isEqualToString:@"Ms"])||([mr isEqualToString:@"Mrs"]))
    {
        he1.text=@"She";
        he2.text=@"She";
        he3.text=@"She";
        his1.text=@"her";
        his2.text=@"her";
        his3.text=@"her";
        his4.text=@"her";
        his5.text=@"her";
        his6.text=@"her";
        
        
    }
    else  if ([mr isEqualToString:@"Mr"])
    {
        he1.text=@"He";
        he2.text=@"He";
        he3.text=@"He";
        his1.text=@"his";
        his2.text=@"his";
        his3.text=@"his";
        his4.text=@"his";
        his5.text=@"his";
        his6.text=@"his";
    }
    mr1.text=mr;
    mr2.text=mr;
    mr3.text=mr;
}
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    if (textField.tag==2) {
        
        NSString *newString = [textField.text stringByReplacingCharactersInRange:range withString:string];
        
        self.name1.text = newString;
        self.name2.text=newString;
        self.name3.text=newString;
               return YES;
        
        
    }
    else
        return YES;
    
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
    good=@"Good at this time";
    mr=@"Mr";
    name.delegate=self;
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
  
    [meseg release];

    [goodseg release];
  
    [super dealloc];
}
@end
