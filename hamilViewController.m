//
//  hamilViewController.m
//  hamil
//
//  Created by Admin on 03/03/14.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//

#import "hamilViewController.h"
#import "hami1ViewController.h"
#import "BlockAlertView.h"

@interface hamilViewController ()

@end

@implementation hamilViewController
@synthesize recorddict;



-(IBAction)checkboxSelected:(UIButton*)sender {
    sender.selected = !sender.selected;
    if(sender.selected){
        [sender setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
    }
    else{
        [sender setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    }
    
    
}
-(BOOL)validateNames1:(NSString *)country1
{
    NSString *countryFormat1 = @"(?:[A-Za-z0-9]*)";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}

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
- (IBAction)seg1:(id)sender
{
    if(ha.selectedSegmentIndex==0)
    {
        haseg=@"Right";
    }
    else if (ha.selectedSegmentIndex==1)
    {
        haseg=@"Left";
    }
}
- (IBAction)seg2:(id)sender
{
    if(wri.selectedSegmentIndex==0)
    {
        wristseg=@"Right";
    }
    else if (wri.selectedSegmentIndex==1)
    {
        wristseg=@"Left";
    }
}
- (IBAction)seg3:(id)sender
{
    if(nec.selectedSegmentIndex==0)
    {
       neckseg=@"Right";
    }
    else if (ha.selectedSegmentIndex==1)
    {
        neckseg=@"Left";
    }
}
- (IBAction)seg4:(id)sender
{
    if(lbp.selectedSegmentIndex==0)
    {
       lbpseg=@"Right";
    }
    else if (lbp.selectedSegmentIndex==1)
    {
        lbpseg=@"Left";
    }
}
- (IBAction)seg5:(id)sender
{
    if(mb.selectedSegmentIndex==0)
    {
        mbseg=@"Right";
    }
    else if (mb.selectedSegmentIndex==1)
    {
        mbseg=@"Left";
    }
}
- (IBAction)seg6:(id)sender
{
    if(hip.selectedSegmentIndex==0)
    {
        hipseg=@"Right";
    }
    else if (hip.selectedSegmentIndex==1)
    {
        hipseg=@"Left";
    }
}
- (IBAction)seg7:(id)sender
{
    if(rib.selectedSegmentIndex==0)
    {
        ribsseg=@"Right";
    }
    else if (rib.selectedSegmentIndex==1)
    {
      ribsseg=@"Left";
    }
}
- (IBAction)seg8:(id)sender
{
    if(leg.selectedSegmentIndex==0)
    {
        legseg=@"Right";
    }
    else if (leg.selectedSegmentIndex==1)
    {
        legseg=@"Left";
    }
}
- (IBAction)seg9:(id)sender
{
    if(sho.selectedSegmentIndex==0)
    {
        shoulderseg=@"Right";
    }
    else if (sho.selectedSegmentIndex==1)
    {
        shoulderseg=@"Left";
    }
}
- (IBAction)seg10:(id)sender
{
    if(knee.selectedSegmentIndex==0)
    {
        kneeseg=@"Right";
    }
    else if (knee.selectedSegmentIndex==1)
    {
        kneeseg=@"Left";
    }
}
- (IBAction)seg11:(id)sender
{
    if(elb.selectedSegmentIndex==0)
    {
        elbowseg=@"Right";
    }
    else if (elb.selectedSegmentIndex==1)
    {
        elbowseg=@"Left";
    }
}
- (IBAction)seg12:(id)sender
{
    if(foo.selectedSegmentIndex==0)
    {
        footseg=@"Right";
    }
    else if (foo.selectedSegmentIndex==1)
    {
        footseg=@"Left";
    }
}
- (IBAction)seg13:(id)sender
{
    if(han.selectedSegmentIndex==0)
    {
        handseg=@"Right";
    }
    else if (han.selectedSegmentIndex==1)
    {
        handseg=@"Left";
    }
}
- (IBAction)seg14:(id)sender
{
    if(ank.selectedSegmentIndex==0)
    {
        ankleseg=@"Right";
    }
    else if (ank.selectedSegmentIndex==1)
    {
        ankleseg=@"Left";
    }
}

- (IBAction)next:(id)sender
{
    recorddict=[[NSMutableDictionary alloc]init];
    
    if (b1.selected)
    {
       
        [recorddict setValue:@"HA" forKey:@"ha"];
    }
    else
    {
        
        [recorddict setValue:@"" forKey:@"ha"];
    }
    if (b2.selected)
    {
        [recorddict setValue:@"Wrist" forKey:@"wrist"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"wrist"];
    }
    if (b3.selected)
    {
        [recorddict setValue:@"Neck" forKey:@"neck"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"neck"];
    }
    if (b4.selected)
    {
        [recorddict setValue:@"LBP" forKey:@"lbp"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"lbp"];
    }
    if (b5.selected)
    {
        [recorddict setValue:@"MB" forKey:@"mb"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"mb"];
    }
    if (b6.selected)
    {
        [recorddict setValue:@"Hip" forKey:@"hip"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"hip"];
    }
    if (b7.selected)
    {
        [recorddict setValue:@"Ribs" forKey:@"ribs"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"ribs"];
    }
    if (b8.selected)
    {
        [recorddict setValue:@"Leg" forKey:@"leg"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"leg"];
    }
    if (b9.selected)
    {
        [recorddict setValue:@"Shoulder" forKey:@"shoulder"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"shoulder"];
    }
    if (b10.selected)
    {
        [recorddict setValue:@"Knee" forKey:@"knee"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"knee"];
    }
    if (b11.selected)
    {
        [recorddict setValue:@"Elbow" forKey:@"elbow"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"elbow"];
    }
    if (b12.selected)
    {
        [recorddict setValue:@"Foot" forKey:@"foot"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"foot"];
    }
    if (b13.selected)
    {
        [recorddict setValue:@"Hand" forKey:@"hand"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"hand"];
    }
    if (b14.selected)
    {
        [recorddict setValue:@"Ankle" forKey:@"ankle"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"ankle"];
    }if (b15.selected)
    {
        [recorddict setValue:@"Sudden" forKey:@"sud"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"sud"];
    }
    if (b16.selected)
    {
        [recorddict setValue:@"Gradual" forKey:@"grad"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"grad"];
    }
    
    if (b17.selected)
    {
        [recorddict setValue:@"Acute" forKey:@"acute"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"acute"];
    }
    if (b18.selected)
    {
        [recorddict setValue:@"Subacute" forKey:@"subacute"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"subacute"];
    }
    if (b19.selected)
    {
        [recorddict setValue:@"Chronic" forKey:@"chronic"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"chronic"];
    }
    if (b20.selected)
    {
        [recorddict setValue:@"Lying down" forKey:@"lying"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"lying"];
    }
    if (b21.selected)
    {
        [recorddict setValue:@"Sitting" forKey:@"sit"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"sit"];
    }
    if (b22.selected)
    {
        [recorddict setValue:@"Standing" forKey:@"stand"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"stand"];
    }
    if (b23.selected)
    {
        [recorddict setValue:@"Bending" forKey:@"bend1"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"bend1"];
    }
    if (b24.selected)
    {
        [recorddict setValue:@"Rest" forKey:@"rest"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"rest"];
    }
    if (b25.selected)
    {
        [recorddict setValue:@"other" forKey:@"feel better other"];
      //  [recorddict setValue:other1.text forKey:@"feel better othertext"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"feel better other"];
      //   [recorddict setValue:@"" forKey:@"feel better othertext"];
    }
    if (b26.selected)
    {
        [recorddict setValue:@"Ice" forKey:@"ice"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"ice"];
    }
    if (b27.selected)
    {
        [recorddict setValue:@"Heat" forKey:@"heat"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"heat"];
    }
    if (b28.selected)
    {
        [recorddict setValue:@"Massage" forKey:@"massage"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"massage"];
    }
    if (b29.selected)
    {
        [recorddict setValue:@"Aspirin" forKey:@"asprin"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"asprin"];
    }
    if (b30.selected)
    {
        [recorddict setValue:@"other" forKey:@"done  other"];
        // [recorddict setValue:other2.text forKey:@"done other text"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"done other"];
       // [recorddict setValue:@"" forKey:@"done other text"];
    }
    if (b31.selected)
    {
        [recorddict setValue:@"Bending" forKey:@"bending2"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"bending2"];
    }
    if (b32.selected)
    {
        [recorddict setValue:@"Twisting" forKey:@"twist"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"twist"];
    }
    if (b33.selected)
    {
        [recorddict setValue:@"Lifting" forKey:@"lift"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"lift"];
    }
    if (b34.selected)
    {
        [recorddict setValue:@"Walking" forKey:@"walk"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"walk"];
    }
    if (b35.selected)
    {
        [recorddict setValue:@"Activity" forKey:@"activity"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"activity"];
    }
    if (b36.selected)
    {
        [recorddict setValue:@"other" forKey:@"feel worse other"];
        //[recorddict setValue:other3.text forKey:@"feel worse other text"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"feel worse other"];
       // [recorddict setValue:@"" forKey:@"feel worse other text"];
    }
    if (b37.selected)
    {
        [recorddict setValue:@"Sharp/Shooting" forKey:@"sharp"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"sharp"];
    }
    if (b38.selected)
    {
        [recorddict setValue:@"Severe/intolerable" forKey:@"severe"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"severe"];
    }
    if (b39.selected)
    {
        [recorddict setValue:@"Dull/achy" forKey:@"dull"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"dull"];
    }
    if (b40.selected)
    {
        [recorddict setValue:@"Burning/Stinging" forKey:@"burn"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"burn"];
    }
    if (b41.selected)
    {
        [recorddict setValue:@"Deep/Nagging" forKey:@"deep"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"deep"];
    }
    if (b42.selected)
    {
        [recorddict setValue:@"Throbbing/Diffuse" forKey:@"throb"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"throb"];
    }
    if (b43.selected)
    {
        [recorddict setValue:@"Numb" forKey:@"numb"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"numb"];
    }
    if (b44.selected)
    {
        [recorddict setValue:@"Tingling" forKey:@"ting"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"ting"];
    }
    if (b45.selected)
    {
        [recorddict setValue:@"Stiff" forKey:@"stiff"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"stiff"];
    }
    if (b46.selected)
    {
        [recorddict setValue:@"Stabbing" forKey:@"stab"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"stab"];
    }
    if (b47.selected)
    {
        [recorddict setValue:@"Cramping" forKey:@"cramp"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"cramp"];
    }
    if (b48.selected)
    {
        [recorddict setValue:@"other" forKey:@"pain other"];
       // [recorddict setValue:other4.text forKey:@"pain other text"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"pain other"];
       // [recorddict setValue:@"" forKey:@"pain other text"];
    }
    a=1;
    temp1 =[gradualH.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp2 =[gradualD.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp3 =[injury_occur.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp4 =[other1.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp5 =[other2.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp6=[other3.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp7=[other4.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp8=[[happen.text stringByReplacingOccurrencesOfString:@"\n" withString:@" "]stringByReplacingOccurrencesOfString:@" " withString:@""];
  
    if((([temp1 length]>0)&&([self validateNames1:temp1]==1))||([temp1 length]==0))
    {
    if((([temp2 length]>0)&&([self validateNames1:temp2]==1))||([temp2 length]==0))
    {
        if((([temp3 length]>0)&&([self validateDate:temp3 ]==1))||([temp3 length]==0))
        {
            if((([temp4 length]>0)&&([self validateNames:temp4 ]==1))||([temp4 length]==0))
            {
                if((([temp5 length]>0)&&([self validateNames:temp5]==1))||([temp5 length]==0))
                {
                    if((([temp6 length]>0)&&([self validateNames:temp6]==1))||([temp6 length]==0))
                    {
                        if((([temp7 length]>0)&&([self validateNames:temp7]==1))||([temp7 length]==0))
                        {
                            [recorddict setValue:gradualH.text forKey:@"gradual hours"];
                            [recorddict setValue:gradualD.text forKey:@"gradual days"];
                            [recorddict setValue:injury_occur.text forKey:@"injury date"];
                            [recorddict setValue:other1.text forKey:@"feel better other text"];
                            [recorddict setValue:other2.text forKey:@"done other text"];
                            [recorddict setValue:other3.text forKey:@"feel worse other text"];
                            [recorddict setValue:other4.text forKey:@"pain other text"];
                            [recorddict setValue:happen.text forKey:@"happened"];
                        
                            [recorddict setValue:haseg forKey:@"Haseg"];
                            [recorddict setValue:wristseg forKey:@"Wristseg"];
                            [recorddict setValue:neckseg forKey:@"Neckseg"];
                            [recorddict setValue:lbpseg forKey:@"Lbpseg"];
                            [recorddict setValue:mbseg forKey:@"Mbseg"];
                            [recorddict setValue:hipseg forKey:@"Hipseg"];
                            [recorddict setValue:ribsseg forKey:@"Ribsseg"];
                            [recorddict setValue:legseg forKey:@"Legseg"];
                            [recorddict setValue:shoulderseg forKey:@"Shoulderseg"];
                            [recorddict setValue:kneeseg forKey:@"Kneeseg"];
                            [recorddict setValue:elbowseg forKey:@"Elbowseg"];
                            [recorddict setValue:footseg forKey:@"Footseg"];
                            [recorddict setValue:handseg forKey:@"Handseg"];
                            [recorddict setValue:ankleseg forKey:@"Ankleseg"];
                     if(a==1)
                        {
                            [self performSegueWithIdentifier:@"hami2" sender:self];
                        }
                       
                      //  NSLog(@"success%@",recorddict);
                    }
                    else
                    {
                        a=0;
                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid Describe pain other."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                        [alert show];
                    }
                    
                }
                else
                {
                    a=0;
                    
                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid feel worse other."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                    [alert show];
                }
                
            }
            else
            {
                a=0;
                
                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid have you done other."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                [alert show];
            }
            
        }
        else
        {
            a=0;
            
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid feel better other."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
            [alert show];
        }
        
    }
    else
    {
        a=0;
        
        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid injury date."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
        [alert show];
    }
        
    }
    else
    {
        a=0;
        
        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid Gradual Days."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
        [alert show];
    }
    
}
else
{
    a=0;
    
    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid Gradual Hours."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
    [alert show];
}

}



- (void)viewDidLoad
{
    
    haseg=@"";
    wristseg=@"";
    neckseg=@"";
    lbpseg=@"";
    mbseg=@"";
    hipseg=@"";
    ribsseg=@"";
    legseg=@"";
    shoulderseg=@"";
    kneeseg=@"";
    elbowseg=@"";
    footseg=@"";
    handseg=@"";
    ankleseg=@"";
    happen.layer.borderWidth = 0.7;
    happen.layer.borderColor = [[UIColor colorWithRed:205/255.0f green:205/255.0f blue:205/255.0f alpha:1.0f] CGColor];
    //    self.layer.borderColor=[[UIColor blackColor]CGColor];
 happen.layer.cornerRadius = 6.5;
   happen.delegate = self;
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
   
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    
    if([identifier isEqual:@"hami2"])
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
    
    if ([segue.identifier isEqualToString:@"hami2"])
    {
        
       hami1ViewController*destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
      NSLog(@"recorddict in hmail first %@",recorddict);
    }
    
    
}
- (void)dealloc {
    [happen release];
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
    [b29 release];
    [b30 release];
    [b31 release];
    [b32 release];
    [b33 release];
    [b34 release];
    [b35 release];
    [b36 release];
    [b37 release];
    [b38 release];
    [b39 release];
    [b40 release];
    [b41 release];
    [b42 release];
    [b43 release];
    [b44 release];
    [b45 release];
    [b46 release];
    [b47 release];
    [b48 release];
    [ha release];
    [wri release];
    [nec release];
    [lbp release];
    [mb release];
    [hip release];
    [rib release];
    [leg release];
    [sho release];
    [knee release];
    [elb release];
    [foo release];
    [han release];
    [ank release];
    [super dealloc];
}
@end
