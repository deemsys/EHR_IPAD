//
//  radiological1ViewController.m
//  radiological
//
//  Created by deemsys on 3/3/14.
//  Copyright (c) 2014 deemsys. All rights reserved.
//

#import "radiological1ViewController.h"
#import "radiological2ViewController.h"
#import "radiologicalViewController.h"

#import "radiological3ViewController.h"

@interface radiological1ViewController ()

@end

@implementation radiological1ViewController
@synthesize views;
@synthesize neg;





@synthesize  hypo;
@synthesize nor;
@synthesize hyper;
@synthesize  hyposeg;
@synthesize  norseg;
@synthesize  hyperseg;
@synthesize deg;
@synthesize degtext;
@synthesize  mild;
@synthesize moderate;
@synthesize severe;
@synthesize narrow;
@synthesize narrowtext;
@synthesize  anterior;
@synthesize  anteriortext;
@synthesize  sub;
@synthesize subtext;
@synthesize  sch;
@synthesize schtext;
@synthesize  foraminal;
@synthesize  foraminaltext;
@synthesize oster;
@synthesize osterseg;
@synthesize dlt;
@synthesize mi;
@synthesize mo;
@synthesize se;
@synthesize apex;
@synthesize apextext;
@synthesize soft;
@synthesize softtext;
@synthesize other;
@synthesize  othertext;
@synthesize recorddict;
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
- (IBAction)views:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        viewl=@"A-P lower";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        viewl=@"Apom";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        viewl=@"L lateral";
    }
    if ([sender selectedSegmentIndex]==3)
    {
        viewl=@"RLF";
    }
    if ([sender selectedSegmentIndex]==4)
    {
        viewl=@"LLF";
    }
    if ([sender selectedSegmentIndex]==5)
    {
        viewl=@"RPO";
    }
    if ([sender selectedSegmentIndex]==6)
    {
        viewl=@"LPO";
    }
    if ([sender selectedSegmentIndex]==7)
    {
        viewl=@"P-A Chest";
    }
    if ([sender selectedSegmentIndex]==8)
    {
        viewl=@"Lateral chest";
    }

}
- (IBAction)hyper:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        hypersegl=@"Mild";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        hypersegl=@"Moderate";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        hypersegl=@"Severe";
    }

}

- (IBAction)nor:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        norsegl=@"Mild";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        norsegl=@"Moderate";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        norsegl=@"Severe";
    }
}
- (IBAction)hypo:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        hyposegl=@"Mild";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        hyposegl=@"Moderate";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        hyposegl=@"Severe";
    }

}
- (IBAction)oster:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        ostersegl=@"Mild";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        ostersegl=@"Moderate";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        ostersegl=@"Severe";
    }

}
- (IBAction)dlt:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        dltsegl=@"Dextro";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        dltsegl=@"Levo Scoliosis";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        dltsegl=@"Towering";
    }

}
- (IBAction)checkboxselected:(UIButton *)sender {

    sender.selected = !sender.selected;
    if(sender.selected){
        [sender setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
    }
    else{
        [sender setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    }
    if(nor.selected)
    {
        norseg. hidden=NO;
    }
    else{
        norseg.hidden=YES;
        
    }
    
    if(hypo.selected)
    {
        hyposeg. hidden=NO;
    }
    else{
        hyposeg.hidden=YES;
        
    }
    if(hyper.selected)
    {
        hyperseg. hidden=NO;
    }
    else{
        hyperseg.hidden=YES;
        
    }
    if(narrow.selected)
    {
        narrowtext. hidden=NO;
    }
    else{
        narrowtext.hidden=YES;
        
    }
    
    if(anterior.selected)
    {
        anteriortext. hidden=NO;
    }
    else{
        anteriortext.hidden=YES;
        
    }
    if(sub.selected)
    {
        subtext. hidden=NO;
    }
    else{
        subtext.hidden=YES;
        
    }
    
    if(sch.selected)
    {
        schtext. hidden=NO;
    }
    else{
        schtext.hidden=YES;
        
    }
    if(foraminal.selected)
    {
        foraminaltext. hidden=NO;
    }
    else{
        foraminaltext.hidden=YES;
        
    }
    
    if(oster.selected)
    {
        osterseg. hidden=NO;
    }
    else{
        osterseg.hidden=YES;
        
    }

    if(apex.selected)
    {
        apextext. hidden=NO;
    }
    else{
        apextext.hidden=YES;
        
    }
    
    if(soft.selected)
    {
        softtext. hidden=NO;
    }
    else{
        softtext.hidden=YES;
        
    }
    
    if(other.selected)
    {
        othertext. hidden=NO;
    }
    else{
        othertext.hidden=YES;
        
    }
    if(deg.selected)
    {
        degtext. hidden=NO;
    }
    else{
        degtext.hidden=YES;
        
    }


}


- (IBAction)next:(id)sender {
   //recorddict=[[NSMutableDictionary alloc]init];
    if(neg.selected)
    {
        
        [recorddict setValue:@" Negative for recent fracture, dislocation or gross Osteopathology"forKey:@"T_negative1"];
    }
    else
    {
        
        [recorddict  setValue:@"" forKey:@"T_negative1"];
    }
    
    
    if(hypo.selected)
    {
        
        
        [recorddict  setValue:@"  Hypokyphosis" forKey:@"T_hypo1"];
    }
    else
    {
        
        [recorddict  setValue:@"" forKey:@"T_hypo1"];
    }
    
    
    if(nor.selected)
    {
        
        
        [recorddict setValue:@" Normal kyphosis" forKey:@"T_normal1"];
    }
    else
    {
        
        [recorddict  setValue:@"" forKey:@"T_normal1"];
        
    }
    if(hyper.selected)
    {
        
        
        [recorddict  setValue:@"Hyperkyphosis" forKey:@"T_hyper1"];
    }
    else
    {
        
        [recorddict  setValue:@"" forKey:@"T_hyper1"];
    }
    
    if(deg.selected)
    {
        
        
        [recorddict setValue:@"Degenerative joint disease at" forKey:@"T_degen1"];
    }
    else
    {
        
        [recorddict  setValue:@"" forKey:@"T_degen1"];
        
    }
    if(mild.selected)
    {
        
        
        [recorddict  setValue:@"mild" forKey:@"T_mild1"];
    }
    else
    {
        
        [recorddict  setValue:@"" forKey:@"T_mild1"];
    }
    if(moderate.selected)
    {
        
        
        [recorddict  setValue:@"moderate" forKey:@"T_moderate1"];
    }
    else
    {
        
        [recorddict  setValue:@"" forKey:@"T_moderate1"];
        
    }
    if(severe.selected)
    {
        
        [recorddict setValue:@"severe" forKey:@"T_severe1"];
    }
    else
    {
        [recorddict  setValue:@"" forKey:@"T_severe1"];
    }
    if(narrow.selected)
    {
        
        
        [recorddict setValue:@"  Narrowed disc space at" forKey:@"T_narrow11"];
    }
    else
    {
        
        [recorddict  setValue:@"" forKey:@"narrow11"];
        
    }
    if(anterior.selected)
    {
        
        
        [recorddict  setValue:@"  Anterior vertebral body osteophytes at"forKey:@"T_anterior11"];
    }
    else
    {
        
        [recorddict  setValue:@"" forKey:@"T_anterior11"];
    }
    if(sub.selected)
    {
        
        
        [recorddict  setValue:@" Subchondral sclerosis of" forKey:@"T_sub11"];
    }
    else
    {
        
        [recorddict  setValue:@"" forKey:@"T_sub11"];
        
    }
    if(sch.selected)
    {
        
        [recorddict setValue:@" Schmorl's nodes at"
                      forKey:@"T_sch11"];
    }
    else
    {
        
        [recorddict  setValue:@"" forKey:@"T_sch11"];
    }
        if(oster.selected)
    {
        
        
        [recorddict  setValue:@" Osteoporosis" forKey:@"T_oster11"];
    }
    else
    {
        
        [recorddict  setValue:@"" forKey:@"T_oster11"];
    }
    
        if(mi.selected)
    {
        
        
        [recorddict setValue:@"mi1d" forKey:@"T_mild11T"];
    }
    else
    {
        
        [recorddict  setValue:@"" forKey:@"T_mild11T"];
        
    }
    if(mo.selected)
    {
        
        
        [recorddict  setValue:@"moderate" forKey:@"T_moderate11T"];
    }
    else
    {
        
        [recorddict  setValue:@"" forKey:@"T_moderate11T"];
    }
    if(se.selected)
    {
        
        
        [recorddict  setValue:@"severe" forKey:@"T_severe11T"];
    }
    else
    {
        
        [recorddict  setValue:@"" forKey:@"T_severe11T"];
        
    }
    
    if(apex.selected)
    {
        
        
        [recorddict setValue:@"Apex at" forKey:@"T_apex11"];
    }
    else
    {
        
        [recorddict  setValue:@"" forKey:@"T_apex11"];
        
    }
    if(soft.selected)
    {
        
        
        [recorddict  setValue:@" Soft tissue edema of" forKey:@"T_soft11"];
    }
    else
    {
        
        [recorddict  setValue:@"" forKey:@"T_soft11"];
    }
    if(other.selected)
    {
        
        
        [recorddict  setValue:@"other" forKey:@"T_other11"];
    }
    else
    {
        
        [recorddict  setValue:@"" forKey:@"T_other11"];
        
    }
    if(foraminal.selected)
    {
        
        
        [recorddict  setValue:@"foraminal enchroachment between" forKey:@"T_foraminal1"];
    }
    else
    {
        
        [recorddict  setValue:@"" forKey:@"T_foraminal1"];
        
    }


    
    a=1;
    temp1 = [degtext.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp2 = [foraminaltext.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp3 = [schtext.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp4 = [apextext.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp5 = [softtext.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp6=[othertext.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp7=[narrowtext.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp8=[anteriortext.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp9=[subtext.text stringByReplacingOccurrencesOfString:@" " withString:@""];

    if((([temp1 length]>0)&&([self validateNames:temp1]==1))||([temp1 length]==0))
    {
        if((([temp2 length]>0)&&([self validateNames:temp2 ]==1))||([temp2 length]==0))
        {
            if((([temp3 length]>0)&&([self validateNames:temp3 ]==1))||([temp3 length]==0))
            {
                if((([temp4 length]>0)&&([self validateNames:temp4 ]==1))||([temp4 length]==0))
                {
                    if((([temp5 length]>0)&&([self validateNames:temp5 ]==1))||([temp5 length]==0))
                    {
                        if((([temp6 length]>0)&&([self validateNames:temp6]==1))||([temp6 length]==0))
                        {
                            if((([temp7 length]>0)&&([self validateNames:temp7]==1))||([temp7 length]==0))
                            {
                                if((([temp8 length]>0)&&([self validateNames:temp8]==1))||([temp8 length]==0))
                                {
                                    if((([temp9 length]>0)&&([self validateNames:temp9]==1))||([temp9 length]==0))
                                    {
                                [recorddict setValue:ostersegl forKey:@"T_oster"];
                                        [recorddict setValue:subtext.text forKey:@"T_sub"];
                                        [recorddict setValue:schtext.text forKey:@"T_sch"];
                                        [recorddict setValue:apextext.text forKey:@"T_apex"];
                                        [recorddict setValue:softtext.text forKey:@"T_soft"];
                                        [recorddict setValue:othertext.text forKey:@"T_other"];
                                        [recorddict setValue:narrowtext.text forKey:@"T_narrow"];
                                        
                                        [recorddict setValue:anteriortext.text forKey:@"T_anterior"];
                                        [recorddict setValue:viewl forKey:@"T_views"];
                                        [recorddict setValue:hyposegl forKey:@"T_hypo"];
                                        [recorddict setValue:norsegl forKey:@"T_normal"];
                                        [recorddict setValue:hypersegl forKey:@"T_hyper"];
                                        [recorddict setValue:foraminaltext.text forKey:@"T_foraminal"];
                                        [recorddict setValue:dltsegl forKey:@"T_dlt"];
                                        ;
                                        [recorddict setValue:degtext.text forKey:@"T_Degenerative joint disease"];
                                        
                                        [recorddict setValue:degsegl forKey:@"T_deg"];
                                        
                                       
                                     
                                       if(a==1)
                                        {
                                            [self performSegueWithIdentifier:@"radio2" sender:self];
                                        }

                                    }
                                    else
                                    {
                                        a=0;
                                        
                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid subchondral sclerosis of  text ."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                        [alert show];
                                        
                                        
                                    }
                                }
                                else
                                {
                                    a=0;
                                    
                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid Anterior vertebral body osteophytes at text."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                    [alert show];
                                    
                                }
                            }
                            else
                            {
                                a=0;
                                
                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid Narrowed disc space at text."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                [alert show];
                            }
                            
                        }
                        else
                        {
                            a=0;
                            
                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid  other text ."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                            [alert show];
                        }
                        
                    }
                    else
                    {
                        a=0;
                        
                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid  Subchondral soft text."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                        [alert show];
                    }
                    
                }
                else
                {
                    a=0;
                    
                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid apex."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                    [alert show];
                }
                
                
            }
            else
            {
                a=0;
                
                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid sch text ."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                [alert show];
                
            }
        }
        else
        {
            a=0;
            
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid foraminal text."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
            [alert show];
            
        }
    }
    else
    {
        a=0;
        
        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid degtext."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
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



- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    
    //NSLog(@"identifier %@",identifier);
    if([identifier isEqual:@"radio2"])
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
    
    
    if ([segue.identifier isEqualToString:@"radio2"])
    {
        
        
        radiological2ViewController *destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        NSLog(@"recorddict in radio second %@",recorddict);
        // destViewController.delegate=self;
        
    }
    
    
    
}

- (void)viewDidLoad

{
    [super viewDidLoad];
   
    hyposeg.hidden=YES;
    norseg.hidden=YES;
    hyperseg.hidden=YES;
    degtext.hidden=YES;
    narrowtext .hidden=YES;
    anteriortext .hidden=YES;
    subtext .hidden=YES;
    schtext .hidden=YES;
    foraminaltext.hidden=YES;
    osterseg.hidden=YES;
    apextext .hidden=YES;
    softtext .hidden=YES;
    othertext .hidden=YES;
    viewl=@"A-P lower";
    hyposegl=@"mild";
    hypersegl=@"mild";
    norsegl=@"mild";
    ostersegl=@"mild";
    dltsegl=@"Dextro";
    

	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
