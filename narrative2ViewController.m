//
//  narrative2ViewController.m
//  narrative
//
//  Created by deemsys on 2/27/14.
//  Copyright (c) 2014 deemsys. All rights reserved.
//

#import "narrative2ViewController.h"
#import "narrative1ViewController.h"
#import "narrative3ViewController.h"


@interface narrative2ViewController ()

@end

@implementation narrative2ViewController
@synthesize  text1;
@synthesize text2;
@synthesize text3;
@synthesize text4;
@synthesize o1;
@synthesize o2;
@synthesize o3;
@synthesize o4;
@synthesize o5;
@synthesize o6;
@synthesize rs1;
@synthesize rs2;
@synthesize recorddict;
@synthesize rs3;
@synthesize rs4;
@synthesize rs5;
@synthesize rs6;
@synthesize ls1;
@synthesize ls2;
@synthesize ls3;
@synthesize ls4;
@synthesize ls5;
@synthesize ls6;
@synthesize s1;
@synthesize s2;
@synthesize s3;
@synthesize s4;
@synthesize s5;
@synthesize s6;
@synthesize s7;
@synthesize s8;
@synthesize s9;
@synthesize s10;
@synthesize s11;
@synthesize s12;
@synthesize s13;
@synthesize s14;
@synthesize s15;
@synthesize s16;
@synthesize s17;
@synthesize s18;
@synthesize s18another;

-(BOOL)validateNames:(NSString *)country1
{
    NSString *countryFormat1 = @"(?:[A-Za-z]+[A-Za-z0-9]*)";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    
    //NSLog(@"identifier %@",identifier);
    if([identifier isEqual:@"narr3"])
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
    
    if ([segue.identifier isEqualToString:@"narr3"])
    {
        
        narrative3ViewController *destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        NSLog(@"recorddict in narrative second page %@",recorddict);
    }
    
    
}
- (IBAction)s1:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        s1l=@"Cervical";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        s1l=@"Thoracic";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        s1l=@"Lumbar";
    }
}
- (IBAction)s2:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        s2l=@"Cervical";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        s2l=@"Thoracic";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        s2l=@"Lumbar";
    }

    
}
- (IBAction)s3:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        s3l=@"Within Normal Limit";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        s3l=@"Not Within Normal Limit ";
    }

    
}
- (IBAction)s4:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        s4l=@"equal and intact and without incident";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        s4l=@"hyporeflexic";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        s4l=@"hyperreflexic";
    }

    
}
- (IBAction)s5:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        s5l=@"Cervical";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        s5l=@"Thoracic";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        s5l=@"Lumbar";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        s5l=@"sacroilliac";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        s5l=@"other";
    }


    
}
- (IBAction)s6:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        s6l=@"two";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        s6l=@"Three";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        s6l=@"four";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        s6l=@"five";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        s6l=@"six";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        s6l=@"seven";
    }

}
- (IBAction)s7:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        s7l=@"Cervical";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        s7l=@"Thoracic";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        s7l=@"Lumbar";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        s7l=@"si";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        s7l=@"other";
    }
}
- (IBAction)s8:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        s8l=@"two";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        s8l=@"Three";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        s8l=@"four";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        s8l=@"five";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        s8l=@"six";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        s8l=@"seven";
    }

    
}
- (IBAction)s9:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        s9l=@"Cervical";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        s9l=@"Thoracic";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        s9l=@"Lumbar";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        s9l=@"si";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        s9l=@"other";
    }

    
}
- (IBAction)s10:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        s10l=@"Negative for recent fracture";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        s10l=@"dislocation of gross osteologis";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        s10l=@"positive for fracture";
    }
    
}
- (IBAction)s11:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        s11l=@"Cervical";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        s11l=@"Thoracic";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        s11l=@"Lumbar";
    }
    
}
- (IBAction)s12:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        s12l=@"hyperlordosis";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        s12l=@"hypolordosis";
    }
    
}
- (IBAction)s13:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        s13l=@"Not present";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        s13l=@"present at the";
    }
    
}
- (IBAction)s14:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        s14l=@"anterior";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        s14l=@"thoracic";
    }
}
- (IBAction)s15:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        s15l=@"mild";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        s15l=@"moderate";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        s15l=@"severe";
    }
}
- (IBAction)s16:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        s16l=@"dextro";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        s16l=@"levo";
    }
    
}
- (IBAction)s17:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        s17l=@"scoliosis";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        s17l=@"towering";
    }
}
- (IBAction)s18:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        s19l=@"Cervical";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        s19l=@"Thoracic";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        s19l=@"Lumbar";
    }
    
}
- (IBAction)s18another:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        s18ll=@"Cervical";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        s18ll=@"Thoracic";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        s18ll=@"Lumbar";
    }
    
}
- (IBAction)rs1:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        rs1l=@"Positive";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        rs1l=@"Negative";
    }
    
}
- (IBAction)rs2:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        rs2l=@"Positive";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        rs2l=@"Negative";
    }
}
- (IBAction)rs3:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        rs3l=@"Positive";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        rs3l=@"Negative";
    }
}
- (IBAction)rs4:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        rs4l=@"Positive";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        rs4l=@"Negative";
    }
}
- (IBAction)rs5:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        rs5l=@"Positive";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        rs5l=@"Negative";
    }
}
- (IBAction)rs6:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        rs6l=@"Positive";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        rs6l=@"Negative";
    }
}
- (IBAction)ls1:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        ls1l=@"Positive";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        ls1l=@"Negative";
    }
}
- (IBAction)ls2:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        ls2l=@"Positive";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        ls2l=@"Negative";
    }
}
- (IBAction)ls3:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        ls3l=@"Positive";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        ls3l=@"Negative";
    }
    
}
- (IBAction)ls4:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        ls4l=@"Positive";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        ls4l=@"Negative";
    }
}
- (IBAction)ls5:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        ls5l=@"Positive";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        ls5l=@"Negative";
    }
}
- (IBAction)ls6:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        ls6l=@"Positive";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        ls6l=@"Negative";
    }
}

- (IBAction)next:(id)sender {
    //recorddict=[[NSMutableDictionary alloc]init];

    a=1;
    temp1 =[text1.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp2 =[text2.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp3 =[text3.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp4 =[text4.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp5 =[o1.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp6 =[o2.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp7 =[o3.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp8 =[o4.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp9 =[o5.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp10 =[o6.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    
  //  if(([temp1 length]!=0)&&       ([temp2 length]!=0)&&       ([temp3 length]!=0)&&       ([temp4 length]!=0))
//    {
        if((([temp1 length]>0)&&([self validateNames:temp1]==1))||([temp1 length]==0))
        {
        
            if((([temp2 length]>0)&&([self validateNames:temp2]==1))||([temp2 length]==0))
            {
                if((([temp3 length]>0)&&([self validateNames:temp3 ]==1))||([temp3 length]==0))
                {
                    if((([temp4 length]>0)&&([self validateNames:temp4 ]==1))||([temp4 length]==0))
                    {
                        if((([temp5 length]>0)&&([self validateNames:temp5]==1))||([temp5 length]==0))
                        {
                            
                            if((([temp6 length]>0)&&([self validateNames:temp6]==1))||([temp6 length]==0))
                            {
                                if((([temp7 length]>0)&&([self validateNames:temp7 ]==1))||([temp7 length]==0))
                                {
                                    if((([temp8 length]>0)&&([self validateNames:temp8 ]==1))||([temp8 length]==0))
                                    {
                                        if((([temp9 length]>0)&&([self validateNames:temp9 ]==1))||([temp9 length]==0))
                                        {
                                            if((([temp10 length]>0)&&([self validateNames:temp10 ]==1))||([temp10 length]==0))
                                            {
                                        
                        [recorddict setValue:text1.text forKey:@"text1"];
                        [recorddict setValue:text2.text forKey:@"text2"];
                        [recorddict setValue:text3.text forKey:@"text3"];
                        [recorddict setValue:text4.text forKey:@"text4"];
                        [recorddict setValue:o1.text forKey:@"o1"];
                        [recorddict setValue:o2.text forKey:@"o2"];
                        [recorddict setValue:o3.text forKey:@"03"];
                        [recorddict setValue:o4.text forKey:@"o4"];
                        [recorddict setValue:o5.text forKey:@"o5"];
                        [recorddict setValue:o6.text forKey:@"o6"];
                        

[recorddict setValue:s1l forKey:@"s1"];
[recorddict setValue:s2l forKey:@"s2"];
[recorddict setValue:s3l forKey:@"s3"];
[recorddict setValue:s4l forKey:@"s4"];
[recorddict setValue:s5l forKey:@"s5"];
                        [recorddict setValue:s6l forKey:@"s6"];
                        [recorddict setValue:s7l forKey:@"s7"];
                        [recorddict setValue:s8l forKey:@"s8"];
                        [recorddict setValue:s9l forKey:@"s9"];
                        [recorddict setValue:s10l forKey:@"s10"];


                        
                        [recorddict setValue:s11l forKey:@"s11"];
                        [recorddict setValue:s12l forKey:@"s12"];
                        [recorddict setValue:s13l forKey:@"s13"];
                        [recorddict setValue:s14l forKey:@"s14"];
                        [recorddict setValue:s15l forKey:@"s15"];
                        [recorddict setValue:s16l forKey:@"s16"];
                        [recorddict setValue:s17l forKey:@"s17"];
                        [recorddict setValue:s18l forKey:@"s18"];
                        [recorddict setValue:s18ll forKey:@"s18another"];
                        [recorddict setValue:s19l forKey:@"s19"];



                        [recorddict setValue:rs1l forKey:@"rs1"];
                        [recorddict setValue:rs2l forKey:@"rs2"];
                        [recorddict setValue:rs3l forKey:@"rs3"];
                        [recorddict setValue:rs4l forKey:@"rs4"];
                        [recorddict setValue:rs5l forKey:@"rs5"];
                        [recorddict setValue:rs6l forKey:@"rs6"];
                        
                        [recorddict setValue:ls1l forKey:@"ls1"];
                        [recorddict setValue:ls2l forKey:@"ls2"];
                        [recorddict setValue:ls3l forKey:@"ls3"];
                        [recorddict setValue:ls4l forKey:@"ls4"];
                        [recorddict setValue:ls6l forKey:@"ls6"];
                                                [recorddict setValue:ls5l forKey:@"ls5"];
                                                
                        NSLog(@"success!!!recorddict %@",recorddict);


                                            }
                                            if(a==1)
                                            {
                                                [self performSegueWithIdentifier:@"narr3" sender:self];
                                            }

                                        
                                            else
                                            {
                                                a=0;
                                                
                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid orthopedic test6."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                [alert show];
                                                
                                                
                                            }
                                        }
                                        else
                                        {
                                            a=0;
                                            
                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid orthopedic test5."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                            [alert show];
                                            
                                        }
                                    }
                                    else
                                    {
                                        a=0;
                                        
                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid  orthopedic test4."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                        [alert show];
                                    }
                                    
                                }
                                else
                                {
                                    a=0;
                                    
                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid  orthopedic test3."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                    [alert show];
                                }
                                
                            }
                            else
                            {
                                a=0;
                                
                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid orthopedic test2."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                [alert show];
                            }
                            
                        }
                        else
                        {
                            a=0;
                            
                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid orthopedic test1 ."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                            [alert show];
                        }
                        
                        
                    }
                    else
                    {
                        a=0;
                        
                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid text4."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                        [alert show];
                        
                    }
                }
                else
                {
                    a=0;
                    
                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid  text3."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                    [alert show];
                    
                }
            }
            else
            {
                a=0;
                
                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid text2 ."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                [alert show];
                
            }
        }
        else
        {
            a=0;
            
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid text1 ."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
            [alert show];
            
        }
//    }
 /*   else
    {
        a=0;
        
        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter required fields ."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
        [alert show];
        
    }*/
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
    
    s1l=@"Cervical";
    s2l=@"Cervical";
    s3l=@"Within Normal Limit";
    s4l=@"equal and intact and without incident";
    s5l=@"Cervical";
    s6l=@"two";
    s7l=@"Cervical";
    s8l=@"two";
    s9l=@"Cervical";
    s10l=@"Negative for recent fracture";
    s11l=@"Cervical";
    s12l=@"hyperlordosis";
    s13l=@"Not present";
    s14l=@"anterior";
    s15l=@"mild";
    s16l=@"dextro";
    s17l=@"scoliosis";
    s19l=@"Cervical";
    s18ll=@"Cervical";
    rs1l=@"";
    rs2l=@"";
    rs3l=@"";
    rs4l=@"";
    rs5l=@"";
    rs6l=@"";
    ls1l=@"";
    ls2l=@"";
    ls3l=@"";
    ls4l=@"";
    ls5l=@"";
    ls6l=@"";
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [s18another release];
  
    [super dealloc];
}
@end
