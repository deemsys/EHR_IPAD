//
//  elbow1ViewController.m
//  elbow
//
//  Created by Admin on 25/02/14.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//
#import "elbowViewController.h"
#import "elbow1ViewController.h"
#import "BlockAlertView.h"
@interface elbow1ViewController ()

@end

@implementation elbow1ViewController
@synthesize moc5L;
@synthesize moc5R;
@synthesize moc6L;
@synthesize moc6R;
@synthesize moc7L;
@synthesize moc7R;
@synthesize moc8L;
@synthesize moc8R;
@synthesize plan1;
@synthesize plan2;
@synthesize diag1;
@synthesize diag2;
@synthesize diag3;
@synthesize diag4;
@synthesize diag5;
@synthesize diag6;
@synthesize physician_sign;
@synthesize mot1L;
@synthesize mot1R;
@synthesize recorddict;
@synthesize assessment;
@synthesize funcother;
@synthesize planother;
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
-(BOOL)validateDate:(NSString *)country1
{
    NSString *countryFormat1 =  @"[0-9]{2}+[/]+[0-9]{2}+[/]+[0-9]{4}";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateNumberlimit:(NSString *)country1
{
    NSString *countryFormat1 = @"[0-5]{1}";
    
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
    if (b3.selected) {
        funcother.hidden=NO;
    }
    else
        funcother.hidden=YES;
    if (b18.selected) {
        planother.hidden=NO;
    }
    else
        planother.hidden=YES;
    
}
- (IBAction)patient_status:(id)sender
{
    
    UISegmentedControl *segmentedControl = (UISegmentedControl *) sender;
    NSInteger selectedSegment = segmentedControl.selectedSegmentIndex;
    
    if (selectedSegment == 0)
    {
        patient_status=@"Excellent";
    }
    else if(selectedSegment==1)
    {
        patient_status=@"Good";
    }
    if (selectedSegment == 2)
    {
        patient_status=@"Fair";
    }
    else if(selectedSegment==3)
    {
        patient_status=@"Poor";
    }

}



- (IBAction)SAVE:(id)sender
{
    
    a=1;
   // recorddict=[[NSMutableDictionary alloc]init];
   // [recorddict addEntriesFromDictionary:recorddict];
    
    a=1;
    if (b1.selected)
    {
        [recorddict setValue:@"Overhead Activities" forKey:@"Overhead"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"Overhead"];
    }
    if (b2.selected)
    {
        [recorddict setValue:@"Lifting" forKey:@"lift"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"lift"];
    }
    if (b3.selected)
    {
        [recorddict setValue:@"Other" forKey:@"other"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"other"];
    }
    if (b4.selected)
    {
        [recorddict setValue:@"Spinal Decompression" forKey:@"spinal"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"spinal"];
    }
    if (b5.selected)
    {
        [recorddict setValue:@"Supplementation" forKey:@"supplement"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"supplement"];
    }
    if (b6.selected)
    {
        [recorddict setValue:@"Nerve Conduction" forKey:@"nerve"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"nerve"];
    }
    if (b7.selected)
    {
        [recorddict setValue:@"Chiropractic" forKey:@"chiro"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"chiro"];
    }
    if (b8.selected)
    {
        [recorddict setValue:@"HEP" forKey:@"hep"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"hep"];
    }
    if (b9.selected)
    {
        [recorddict setValue:@"EMG" forKey:@"emg"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"emg"];
    }
    if (b10.selected)
    {
        [recorddict setValue:@"Physical Therapy" forKey:@"physical"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"physical"];
    }
    if (b11.selected)
    {
        [recorddict setValue:@"Radiographic X-Ray" forKey:@"radio"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"radio"];
    }
    if (b12.selected)
    {
        [recorddict setValue:@"Outside Referral" forKey:@"outside"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"outside"];
    }
    if (b13.selected)
    {
        [recorddict setValue:@"Orthotics/Bracing" forKey:@"orthotics"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"orthotics"];
    }
    if (b14.selected)
    {
        [recorddict setValue:@"MRI" forKey:@"mri"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"mri"];
    }
    if (b15.selected)
    {
        [recorddict setValue:@"D/C" forKey:@"d/c"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"d/c"];
    }
    if (b16.selected)
    {
        [recorddict setValue:@"Modalities" forKey:@"modal"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"modal"];
    }
    if (b17.selected)
    {
        [recorddict setValue:@"CT Scan" forKey:@"ct scan"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"ct scan"];
    }
    if (b18.selected)
    {
        [recorddict setValue:@"other" forKey:@"other1"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"other1"];
    }
    
    temp1 =[moc5L.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp2 =[moc5R.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp3 =[moc6L.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp4 =[moc6R.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp5 =[moc7L.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp6=[moc7R.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp7=[moc8L.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp8=[moc8R.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp9=[mot1L.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp10=[mot1R.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp11=[diag1.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp12=[diag2.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp13=[diag3.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp14=[diag4.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp15=[diag5.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp16=[diag6.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp17=[plan1.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp18=[plan2.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp19=[physician_sign.text stringByReplacingOccurrencesOfString:@" " withString:@""];
        if([temp19 length]!=0)
    {
    if((([temp1 length]>0)&&([self validateNumberlimit:temp1]==1))||([temp1 length]==0))
    {
    if((([temp2 length]>0)&&([self validateNumberlimit:temp2]==1))||([temp2 length]==0))
    {
        if((([temp3 length]>0)&&([self validateNumberlimit:temp3 ]==1))||([temp3 length]==0))
        {
            if((([temp4 length]>0)&&([self validateNumberlimit:temp4 ]==1))||([temp4 length]==0))
            {
                if((([temp5 length]>0)&&([self validateNumberlimit:temp5]==1))||([temp5 length]==0))
                {
                    if((([temp6 length]>0)&&([self validateNumberlimit:temp6]==1))||([temp6 length]==0))
                    {
                        if((([temp7 length]>0)&&([self validateNumberlimit:temp7]==1))||([temp7 length]==0))
                        {
                            if((([temp8 length]>0)&&([self validateNumberlimit:temp8]==1))||([temp8 length]==0))
                            {
                                if((([temp9 length]>0)&&([self validateNumberlimit:temp9]==1))||([temp9 length]==0))
                                {
                                    if((([temp10 length]>0)&&([self validateNumberlimit:temp10 ]==1))||([temp10 length]==0))
                                    {
                                        if((([temp11 length]>0)&&([self validateNames:temp11]==1))||([temp11 length]==0))
                                        {
                                            if((([temp12 length]>0)&&([self validateNames:temp12]==1))||([temp12 length]==0))
                                            {
                                                if((([temp13 length]>0)&&([self validateNames:temp13]==1))||([temp13 length]==0))
                                                {
                                                    if((([temp14 length]>0)&&([self validateNames:temp14]==1))||([temp14 length]==0))
                                                    {
                                                        if((([temp15 length]>0)&&([self validateNames:temp15]==1))||([temp15 length]==0))
                                                        {
                                                            if((([temp16 length]>0)&&([self validateNames:temp16]==1))||([temp16 length]==0))
                                                            {
                                                                if((([temp17 length]>0)&&([self validateNames:temp17]==1))||([temp17 length]==0))
                                                                {
                                                                    if((([temp18 length]>0)&&([self validateNames:temp18]==1))||([temp18 length]==0))
                                                                    {
                                                      
                                                                             [recorddict setValue:moc5L.text forKey:@"Motor C5 Left"];
                                                                             [recorddict setValue:moc5R.text forKey:@"Motor C5 Right"];
                                                                            [recorddict setValue:moc6L.text forKey:@"Motor C6 Left"];
                                                                            [recorddict setValue:moc6R.text forKey:@"Motor C6 Right"];
                                                                            [recorddict setValue:moc7L.text forKey:@"Motor C7 Left"];
                                                                            [recorddict setValue:moc7R.text forKey:@"Motor C7 Right"];
                                                                            [recorddict setValue:moc8L.text forKey:@"Motor C8 Left"];
                                                                            [recorddict setValue:moc8R.text forKey:@"Motor C8 Right"];
                                                                            [recorddict setValue:mot1L.text forKey:@"Motor T1 Left"];
                                                                            [recorddict setValue:mot1R.text forKey:@"Motor T1 Right"];
                                                                            [recorddict setValue:diag1.text forKey:@"DIAGNOSIS 1"];
                                                                            [recorddict setValue:diag2.text forKey:@"DIAGNOSIS 2"];
                                                                            [recorddict setValue:diag3.text forKey:@"DIAGNOSIS 3"];
                                                                            [recorddict setValue:diag4.text forKey:@"DIAGNOSIS 4"];
                                                                            [recorddict setValue:diag5.text forKey:@"DIAGNOSIS 5"];
                                                                            [recorddict setValue:diag6.text forKey:@"DIAGNOSIS 6"];
                                                                            [recorddict setValue:plan1.text forKey:@"Plan 1"];
                                                                            [recorddict setValue:plan2.text forKey:@"Plan 2"];
                                                                        [recorddict setValue:funcother.text forKey:@"functional other"];
                                                                         [recorddict setValue:planother.text forKey:@"plan other"];
                                                                        
                                                                            [recorddict setValue:physician_sign.text forKey:@"Physician Signature"];
                                                                        [recorddict setValue:patient_status forKey:@"Patient Status"];
                                               [recorddict setValue:assessment.text forKey:@"assessment"];
                                                                NSLog(@"success!!!recorddict %@",recorddict);
                                                                    }
                                                                    else
                                                                    {
                                                                        a=0;
                                                                        
                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid Plan2 reason ."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                        [alert show];
                                                                        
                                                                        
                                                                    }
                                                                }
                                                                else
                                                                {
                                                                    a=0;
                                                                    
                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid Plan1 reason ."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                    [alert show];
                                                                    
                                                                    
                                                                }
                                                            }
                                                            
                                                            else
                                                            {
                                                                a=0;
                                                                
                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid diagnosis 6 reason ."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                [alert show];
                                                                
                                                                
                                                            }
                                                        }
                                                        else
                                                        {
                                                            a=0;
                                                            
                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid diagnosis 5 reason ."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                            [alert show];
                                                            
                                                            
                                                        }
                                                    }
                                                    else
                                                    {
                                                        a=0;
                                                        
                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid diagnosis 4 reason ."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                        [alert show];
                                                        
                                                        
                                                    }
                                                }
                                                else
                                                {
                                                    a=0;
                                                    
                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid diagnosis 3 reason ."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                    [alert show];
                                                    
                                                    
                                                }
                                            }
                                            else
                                            {
                                                a=0;
                                                
                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid diagnosis 2 reason ."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                [alert show];
                                                
                                                
                                            }
                                        }
                                        else
                                        {
                                            a=0;
                                            
                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid diagnosis 1 reason ."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                            [alert show];
                                            
                                            
                                        }
                                    }
                                    else
                                    {
                                        a=0;
                                        
                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid Motor T1 Right  ."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                        [alert show];
                                        
                                        
                                    }
                                }
                                else
                                {
                                    a=0;
                                    
                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid Motor T1 Left  ."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                    [alert show];
                                    
                                    
                                }
                            }
                            else
                            {
                                a=0;
                                
                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid Motor C8 Right  ."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                [alert show];
                                
                                
                            }
                        }
                        else
                        {
                            a=0;
                            
                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid Motor C8 Left  ."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                            [alert show];
                            
                            
                        }
                    }
                    else
                    {
                        a=0;
                        
                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid Motor C7 Right  ."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                        [alert show];
                        
                        
                    }
                }
                else
                {
                    a=0;
                    
                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid Motor C7 Left  ."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                    [alert show];
                    
                    
                }
            }
            else
            {
                a=0;
                
                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid Motor C6 Right  ."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                [alert show];
                
                
            }
        }
        else
        {
            a=0;
            
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid Motor C6 Left  ."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
            [alert show];
            
            
        }
    }
    else
    {
        a=0;
        
        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid Motor C5 Right  ."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
        [alert show];
        
        
    }
    }
    else
    {
        a=0;
        
        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid Motor C5 Left  ."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
        [alert show];
        
        
    }
    }
        else
        {
            a=0;
            
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Physician Signature  ."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
            [alert show];
            
            
        }
    if (a==1) {
        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Info!" message:@" success."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
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
        patient_status=@"Excellent";
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {

    
    [super dealloc];
}
@end
