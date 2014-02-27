//
//  lumbopelvicViewController.m
//  EHR
//
//  Created by DeemsysInc on 2/27/14.
//  Copyright (c) 2014 DeemSysInc. All rights reserved.
//

#import "lumbopelvicViewController.h"
#import "lumbopelvic1ViewController.h"
#import "BlockAlertView.h"
@interface lumbopelvicViewController ()

@end

@implementation lumbopelvicViewController

@synthesize recorddict;
@synthesize patientname;
@synthesize othernotes;
@synthesize flexion;
@synthesize extension;
@synthesize lateralL;
@synthesize lateralR;
@synthesize rotationL;
@synthesize rotationR;
@synthesize T8_9;
@synthesize T10_11;
@synthesize T12_L1;
@synthesize L2_3;
@synthesize L4_5;
@synthesize LSI;
@synthesize T9_10;
@synthesize T11_12;
@synthesize L1_2;
@synthesize L3_4;
@synthesize L5_SI;
@synthesize RSI;
@synthesize trendL;
@synthesize trendR;
@synthesize kempL;
@synthesize kempR;
@synthesize slumpL;
@synthesize slumpR;
@synthesize straightlegL;
@synthesize straightlegR;
@synthesize welllegL;
@synthesize welllegR;
@synthesize nachelsL;
@synthesize nachelsR;
@synthesize positive;
@synthesize positive_adam;
@synthesize L1L;
@synthesize L1R;
@synthesize L2L;
@synthesize L2R;
@synthesize L3L;
@synthesize L3RR;
@synthesize L4L;
@synthesize L4R;
@synthesize L5L;
@synthesize L5R;
@synthesize SIL;
@synthesize SIR;
@synthesize segmentSwitch;
@synthesize piri;
@synthesize glu;
@synthesize lli;
@synthesize quad;
@synthesize glutes;
@synthesize rect;
@synthesize para;
@synthesize ham;
@synthesize obli;
@synthesize gait;

@synthesize gaitArray;
@synthesize pelvic;
@synthesize pelvicArray;
@synthesize rightbut;
@synthesize leftbut;
@synthesize gaitseg;
@synthesize pelvicseg;

-(BOOL)validateNames:(NSString *)country1
{
    //    NSString *countryFormat1 = @"(?:[A-Za-z]+[A-Za-z0-9]*)";
    NSString *countryFormat1 = @"[0-9]{1,3}";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}

-(BOOL)validateNameformat:(NSString *)country1
{
    NSString *countryFormat1 = @"(?:[A-Za-z]+[A-Za-z0-9]*)";
    //    NSString *countryFormat1 = @"[0-9]{1,3}";
    
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
-(IBAction)checkboxSelected:(UIButton*)sender {
    sender.selected = !sender.selected;
    if(sender.selected){
        [sender setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
        
    }
    else{
        [sender setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    }
    
    if (leftbut.selected)
    {
        leftseg.hidden=NO;
    }
    else
        leftseg.hidden=YES;
    if (rightbut.selected)
    {
        rightseg.hidden=NO;
    }
    else
        rightseg.hidden=YES;
    
}
- (IBAction)lef:(id)sender
{
    UISegmentedControl *segmentedControl = (UISegmentedControl *) sender;
    NSInteger selectedSegment = segmentedControl.selectedSegmentIndex;
    
    if (selectedSegment == 0)
    {
        left=@"1/8";
        lefoth.hidden=YES;
        lefoth.text=@"";
    }
    else if(selectedSegment==1)
    {
        left=@"1/4";
        lefoth.hidden=YES;
        lefoth.text=@"";
    }
    else if (selectedSegment == 2)
    {
        left=@"3/8";
        lefoth.hidden=YES;
        lefoth.text=@"";
    }
    else if(selectedSegment==3)
    {
        left=@"1/2";
        lefoth.hidden=YES;
        lefoth.text=@"";
    }
    else if (selectedSegment == 4)
    {
        left=@"5/8";
        lefoth.hidden=YES;
        lefoth.text=@"";
    }
    else if(selectedSegment==5)
    {
        left=@"3/4";
        lefoth.hidden=YES;
        lefoth.text=@"";
    }
    else if (selectedSegment == 6)
    {
        left=@"7/8";
        lefoth.hidden=YES;
        lefoth.text=@"";
    }
    else if(selectedSegment==7)
    {
        left=@"1";
        lefoth.hidden=YES;
        lefoth.text=@"";
    }
    else if(selectedSegment==8)
    {
        left=@"other";
        lefoth.hidden=NO;
        //        left=lefoth.text;
    }
    
}
- (IBAction)rig:(id)sender
{
    UISegmentedControl *segmentedControl = (UISegmentedControl *) sender;
    NSInteger selectedSegment = segmentedControl.selectedSegmentIndex;
    
    if (selectedSegment == 0)
    {
        right=@"1/8";
        rigoth.hidden=YES;
        rigoth.text=@"";
    }
    else if(selectedSegment==1)
    {
        right=@"1/4";
        rigoth.hidden=YES;
        rigoth.text=@"";
    }
    else if (selectedSegment == 2)
    {
        right=@"3/8";
        rigoth.hidden=YES;
        rigoth.text=@"";
    }
    else if(selectedSegment==3)
    {
        right=@"1/2";
        rigoth.hidden=YES;
        rigoth.text=@"";
    }
    else if (selectedSegment == 4)
    {
        right=@"5/8";
        rigoth.hidden=YES;
        rigoth.text=@"";
    }
    else if(selectedSegment==5)
    {
        right=@"3/4";
        rigoth.hidden=YES;
        rigoth.text=@"";
    }
    else if (selectedSegment == 6)
    {
        right=@"7/8";
        rigoth.hidden=YES;
        rigoth.text=@"";
    }
    else if(selectedSegment==7)
    {
        right=@"1";
        rigoth.hidden=YES;
        rigoth.text=@"";
    }
    else if(selectedSegment==8)
    {
        right=@"other";
        rigoth.hidden=NO;
        //        right=rigoth.text;
    }
}

- (IBAction)piri:(id)sender
{
    UISegmentedControl *segmentedControl = (UISegmentedControl *) sender;
    NSInteger selectedSegment = segmentedControl.selectedSegmentIndex;
    
    if (selectedSegment == 0)
    {
        Piriforms=@"Left";
    }
    else if(selectedSegment==1)
    {
        Piriforms=@"Right";
    }
}
- (IBAction)glu:(id)sender
{
    UISegmentedControl *segmentedControl = (UISegmentedControl *) sender;
    NSInteger selectedSegment = segmentedControl.selectedSegmentIndex;
    
    if (selectedSegment == 0)
    {
        GluteusMaximus=@"Left";
    }
    else if(selectedSegment==1)
    {
        GluteusMaximus=@"Right";
    }
}
- (IBAction)lli:(id)sender
{
    
    UISegmentedControl *segmentedControl = (UISegmentedControl *) sender;
    NSInteger selectedSegment = segmentedControl.selectedSegmentIndex;
    
    if (selectedSegment == 0)
    {
        lliopsoas=@"Left";
    }
    if(selectedSegment==1)
    {
        lliopsoas=@"Right";
    }
}
- (IBAction)quad:(id)sender
{
    
    UISegmentedControl *segmentedControl = (UISegmentedControl *) sender;
    NSInteger selectedSegment = segmentedControl.selectedSegmentIndex;
    
    if (selectedSegment == 0)
    {
        QuadLumb=@"Left";
    }
    if(selectedSegment==1)
    {
        QuadLumb=@"Right";
    }
}
- (IBAction)glutes:(id)sender
{
    
    UISegmentedControl *segmentedControl = (UISegmentedControl *) sender;
    NSInteger selectedSegment = segmentedControl.selectedSegmentIndex;
    
    if (selectedSegment == 0)
    {
        GluteusMedius=@"Left";
    }
    if(selectedSegment==1)
    {
        GluteusMedius=@"Right";
    }
}
- (IBAction)rect:(id)sender
{
    
    UISegmentedControl *segmentedControl = (UISegmentedControl *) sender;
    NSInteger selectedSegment = segmentedControl.selectedSegmentIndex;
    
    if (selectedSegment == 0)
    {
        RectusAbdominis=@"Left";
    }
    if(selectedSegment==1)
    {
        RectusAbdominis=@"Right";
    }
}
- (IBAction)para:(id)sender
{
    
    UISegmentedControl *segmentedControl = (UISegmentedControl *) sender;
    NSInteger selectedSegment = segmentedControl.selectedSegmentIndex;
    
    if (selectedSegment == 0)
    {
        Paraspinals=@"Left";
    }
    if(selectedSegment==1)
    {
        Paraspinals=@"Right";
    }
}
- (IBAction)ham:(id)sender
{
    
    UISegmentedControl *segmentedControl = (UISegmentedControl *) sender;
    NSInteger selectedSegment = segmentedControl.selectedSegmentIndex;
    
    if (selectedSegment == 0)
    {
        Hamstrings=@"Left";
    }
    if(selectedSegment==1)
    {
        Hamstrings=@"Right";
    }
}
- (IBAction)obli:(id)sender
{
    
    UISegmentedControl *segmentedControl = (UISegmentedControl *) sender;
    NSInteger selectedSegment = segmentedControl.selectedSegmentIndex;
    
    if (selectedSegment == 0)
    {
        Obliques=@"Left";
    }
    if(selectedSegment==1)
    {
        Obliques=@"Right";
    }
}


- (IBAction)segmentSwitch:(id)sender


{
    UISegmentedControl *segmentedControl = (UISegmentedControl *) sender;
    NSInteger selectedSegment = segmentedControl.selectedSegmentIndex;
    
    if (selectedSegment == 0)
    {
        AO=@"Excellent";
    }
    else if(selectedSegment==1)
    {
        AO=@"Good";
    }
    else if(selectedSegment==2)
    {
        AO=@"Fair";
    }else if(selectedSegment==3)
    {
        AO=@"Severe";
    }
}

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    
    if([identifier isEqual:@"perry1to2"])
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
    
    if ([segue.identifier isEqualToString:@"perry1to2"])
    {
        
        lumbopelvic1ViewController*destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        NSLog(@"recorddict in perry first %@",recorddict);
    }
    
    
}
- (IBAction)NEXT:(id)sender
{
    
    recorddict=[[NSMutableDictionary alloc]init];
    //    [recorddict addEntriesFromDictionary:recorddict];
    //electedcheckbox=[[NSMutableArray alloc]init];
    
    if(PALPATION.selected)
    {
        [recorddict setValue:@"All Soft Tissue Unremarkable " forKey:@"palpation un"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"palpation un"];
    }
    if(FUNCTIONAL.selected)
    {
        [recorddict setValue:@"Unremarkable" forKey:@"functional un"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"functional un"];
    }
    if(SUBLUX.selected)
    {
        [recorddict setValue:@"Unremarkable " forKey:@"sublex un"];
        
    }
    else
    {
        [recorddict setValue:@"" forKey:@"sublex un"];
    }
    if(ORTHO.selected)
    {
        [recorddict setValue:@"Unremarkable " forKey:@"orthopedic un"];
        
    }
    else
    {
        [recorddict setValue:@"" forKey:@"orthopedic un"];
    }
    if(NEURO.selected)
    {
        [recorddict setValue:@"Neurological Testing Unremarkable " forKey:@"neuro un"];
        
    }
    else
    {
        [recorddict setValue:@"" forKey:@"neuro un"];
    }
    
    
    
    a=1;
    temp1 =[patientname.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp2 =[date.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp3 =[othernotes.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp4 =[flexion.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp5 =[extension.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp6=[lateralL.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp7=[lateralR.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp8=[rotationL.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp9=[rotationR.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp10=[T8_9.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp11=[T10_11.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp12=[T12_L1.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp13=[L2_3.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp14=[L4_5.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp15=[LSI.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp16=[T9_10.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp17=[T11_12.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp18=[L1_2.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp19=[L3_4.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp20=[L5_SI.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp21=[RSI.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp22=[trendL.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp23=[trendR.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp24=[kempL.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp25=[kempR.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp26=[slumpL.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp27=[slumpR.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp28=[straightlegL.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp29=[straightlegR.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp30=[welllegL.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp31=[welllegR.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp32=[nachelsL.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp33=[nachelsR.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp34=[positive.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp35=[positive_adam.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp36=[L1L.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp37=[L1R.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp38=[L2L.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp39=[L2R.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp40=[L3L.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp41=[L3RR.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp42=[L4L.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp43=[L4R.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp44=[L5L.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp45=[L5R.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp46=[SIL.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp47=[SIR.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    
    if(([temp1 length]!=0)&&
       ([temp2 length]!=0))
    {
        if([self validateNameformat:temp1]==1)
        {
            if([self validateDate:temp2]==1)
            {
                if((([temp3 length]>0)&&([self validateNameformat:temp3 ]==1))||([temp3 length]==0))
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
                                            if((([temp10 length]>0)&&([self validateNames:temp10 ]==1))||([temp10 length]==0))
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
                                                                                if((([temp19 length]>0)&&([self validateNames:temp19]==1))||([temp19 length]==0))
                                                                                {
                                                                                    if((([temp20 length]>0)&&([self validateNames:temp20]==1))||([temp20 length]==0))
                                                                                    {
                                                                                        if((([temp21 length]>0)&&([self validateNames:temp21]==1))||([temp21 length]==0))
                                                                                        {
                                                                                            if((([temp22 length]>0)&&([self validateNames:temp22]==1))||([temp22 length]==0))
                                                                                            {
                                                                                                if((([temp23 length]>0)&&([self validateNames:temp23 ]==1))||([temp23 length]==0))
                                                                                                {
                                                                                                    if((([temp24 length]>0)&&([self validateNames:temp24]==1))||([temp24 length]==0))
                                                                                                    {
                                                                                                        if((([temp25 length]>0)&&([self validateNames:temp25 ]==1))||([temp25 length]==0))
                                                                                                        {
                                                                                                            if((([temp26 length]>0)&&([self validateNames:temp26 ]==1))||([temp26 length]==0))
                                                                                                            {
                                                                                                                if((([temp27 length]>0)&&([self validateNames:temp27]==1))||([temp27 length]==0))
                                                                                                                {
                                                                                                                    if((([temp28 length]>0)&&([self validateNames:temp28 ]==1))||([temp28 length]==0))
                                                                                                                    {
                                                                                                                        if((([temp29 length]>0)&&([self validateNames:temp29]==1))||([temp29 length]==0))
                                                                                                                        {
                                                                                                                            if((([temp30 length]>0)&&([self validateNames:temp30]==1))||([temp30 length]==0))
                                                                                                                            {
                                                                                                                                if((([temp31 length]>0)&&([self validateNames:temp31]==1))||([temp31 length]==0))
                                                                                                                                {
                                                                                                                                    if((([temp32 length]>0)&&([self validateNames:temp32 ]==1))||([temp32 length]==0))
                                                                                                                                    {
                                                                                                                                        if((([temp33 length]>0)&&([self validateNames:temp33]==1))||([temp33 length]==0))
                                                                                                                                        {
                                                                                                                                            if((([temp34 length]>0)&&([self validateNames:temp34 ]==1))||([temp34 length]==0))
                                                                                                                                            {
                                                                                                                                                if((([temp35 length]>0)&&([self validateNames:temp35]==1))||([temp35 length]==0))
                                                                                                                                                {
                                                                                                                                                    if((([temp36 length]>0)&&([self validateNames:temp36 ]==1))||([temp36 length]==0))
                                                                                                                                                    {
                                                                                                                                                        if((([temp37 length]>0)&&([self validateNames:temp37]==1))||([temp37 length]==0))
                                                                                                                                                        {
                                                                                                                                                            if((([temp38 length]>0)&&([self validateNames:temp38 ]==1))||([temp38 length]==0))
                                                                                                                                                            {
                                                                                                                                                                if((([temp39 length]>0)&&([self validateNames:temp39]==1))||([temp39 length]==0))
                                                                                                                                                                {
                                                                                                                                                                    if((([temp40 length]>0)&&([self validateNames:temp40 ]==1))||([temp40 length]==0))
                                                                                                                                                                    {
                                                                                                                                                                        
                                                                                                                                                                        if((([temp41 length]>0)&&([self validateNames:temp41]==1))||([temp41 length]==0))
                                                                                                                                                                        {
                                                                                                                                                                            if((([temp42 length]>0)&&([self validateNames:temp42 ]==1))||([temp42 length]==0))
                                                                                                                                                                            {
                                                                                                                                                                                if((([temp43 length]>0)&&([self validateNames:temp43]==1))||([temp43 length]==0))
                                                                                                                                                                                {
                                                                                                                                                                                    if((([temp44 length]>0)&&([self validateNames:temp44 ]==1))||([temp44 length]==0))
                                                                                                                                                                                    {
                                                                                                                                                                                        if((([temp45 length]>0)&&([self validateNames:temp45 ]==1))||([temp45 length]==0))
                                                                                                                                                                                        {
                                                                                                                                                                                            if((([temp46 length]>0)&&([self validateNames:temp46 ]==1))||([temp46 length]==0))
                                                                                                                                                                                            {
                                                                                                                                                                                                if((([temp47 length]>0)&&([self validateNames:temp47]==1))||([temp47 length]==0))
                                                                                                                                                                                                {
                                                                                                                                                                                                    
                                                                                                                                                                                                    a=1;
                                                                                                                                                                                                    
                                                                                                                                                                                                    [recorddict setValue:patientname.text forKey:@"patientname"];
                                                                                                                                                                                                    [recorddict setValue:date.text forKey:@"Date"];
                                                                                                                                                                                                    [recorddict setValue:othernotes.text forKey:@"other notes"];
                                                                                                                                                                                                    [recorddict setValue:flexion.text forKey:@"flexion"];
                                                                                                                                                                                                    [recorddict setValue:extension.text forKey:@"extension"];
                                                                                                                                                                                                    [recorddict setValue:lateralL.text forKey:@"lateralL"];
                                                                                                                                                                                                    [recorddict setValue:lateralR.text forKey:@"lateralR"];
                                                                                                                                                                                                    [recorddict setValue:rotationL.text forKey:@"rotation left"];
                                                                                                                                                                                                    [recorddict setValue:rotationR.text forKey:@"rotation right"];
                                                                                                                                                                                                    [recorddict setValue:T8_9.text forKey:@"t8_9"];
                                                                                                                                                                                                    [recorddict setValue:T10_11.text forKey:@"t10_11"];
                                                                                                                                                                                                    [recorddict setValue:T12_L1.text forKey:@"T12-L1"];
                                                                                                                                                                                                    [recorddict setValue:L2_3.text forKey:@"L2-3"];
                                                                                                                                                                                                    [recorddict setValue:L4_5.text forKey:@"L4-5"];
                                                                                                                                                                                                    [recorddict setValue:LSI.text forKey:@"LSI"];
                                                                                                                                                                                                    [recorddict setValue:T9_10.text forKey:@"T9-10"];
                                                                                                                                                                                                    [recorddict setValue:T11_12.text forKey:@"T11_12"];
                                                                                                                                                                                                    [recorddict setValue:L1_2.text forKey:@"L1_2"];
                                                                                                                                                                                                    [recorddict setValue:L3_4.text forKey:@"L3_4"];
                                                                                                                                                                                                    [recorddict setValue:L5_SI.text forKey:@"L5_SI"];
                                                                                                                                                                                                    [recorddict setValue:RSI.text forKey:@"RSI"];
                                                                                                                                                                                                    [recorddict setValue:trendL.text forKey:@"trend Left"];
                                                                                                                                                                                                    [recorddict setValue:trendR.text forKey:@"trend Right"];
                                                                                                                                                                                                    [recorddict setValue:kempL.text forKey:@"kemp Left"];
                                                                                                                                                                                                    [recorddict setValue:kempR.text forKey:@"kemp Right"];
                                                                                                                                                                                                    [recorddict setValue:slumpL.text forKey:@"slump Left"];
                                                                                                                                                                                                    [recorddict setValue:slumpR.text forKey:@"slumpl Right"];
                                                                                                                                                                                                    [recorddict setValue:straightlegL.text forKey:@"straightleg Left"];
                                                                                                                                                                                                    [recorddict setValue:straightlegR.text forKey:@"straightleg Right"];
                                                                                                                                                                                                    [recorddict setValue:welllegL.text forKey:@"wellleg Left"];
                                                                                                                                                                                                    [recorddict setValue:welllegR.text forKey:@"wellleg Right"];
                                                                                                                                                                                                    [recorddict setValue:nachelsL.text forKey:@"nachlas Left"];
                                                                                                                                                                                                    [recorddict setValue:nachelsR.text forKey:@"nachlas Right"];
                                                                                                                                                                                                    [recorddict setValue:positive.text forKey:@"positive"];
                                                                                                                                                                                                    [recorddict setValue:positive_adam.text forKey:@"positive adam"];
                                                                                                                                                                                                    [recorddict setValue:L1L.text forKey:@"L1 Left"];
                                                                                                                                                                                                    [recorddict setValue:L1R.text forKey:@"L1 Right"];
                                                                                                                                                                                                    [recorddict setValue:L2L.text forKey:@"L2 Left"];
                                                                                                                                                                                                    [recorddict setValue:L2R.text forKey:@"L2 Right"];
                                                                                                                                                                                                    [recorddict setValue:L3L.text forKey:@"L3 Left"];
                                                                                                                                                                                                    [recorddict setValue:L3RR.text forKey:@"L3 Right"];
                                                                                                                                                                                                    [recorddict setValue:L4L.text forKey:@"L4 Left"];
                                                                                                                                                                                                    [recorddict setValue:L4R.text forKey:@"L4 Right"];
                                                                                                                                                                                                    [recorddict setValue:L5L.text forKey:@"L5 Left"];
                                                                                                                                                                                                    [recorddict setValue:L5R.text forKey:@"L5 Right"];
                                                                                                                                                                                                    [recorddict setValue:SIL.text forKey:@"SI Left"];
                                                                                                                                                                                                    [recorddict setValue:SIR.text forKey:@"SI Right"];
                                                                                                                                                                                                    [recorddict setValue:left forKey:@"leftseg"];
                                                                                                                                                                                                    [recorddict setValue:right forKey:@"rightseg"];
                                                                                                                                                                                                    [recorddict setValue:AO forKey:@"AO"];
                                                                                                                                                                                                    [recorddict setValue:Piriforms forKey:@"piriforms"];
                                                                                                                                                                                                    [recorddict setValue:GluteusMaximus forKey:@"gluteus maximus"];
                                                                                                                                                                                                    [recorddict setValue:lliopsoas forKey:@"lliopsoas"];
                                                                                                                                                                                                    [recorddict setValue:QuadLumb forKey:@"quad lumb"];
                                                                                                                                                                                                    [recorddict setValue:GluteusMedius forKey:@"gluteus medius"];
                                                                                                                                                                                                    [recorddict setValue:RectusAbdominis forKey:@"rectus abdominis"];
                                                                                                                                                                                                    [recorddict setValue:Paraspinals forKey:@"paraspinals"];
                                                                                                                                                                                                    [recorddict setValue:Hamstrings forKey:@"hamstrings"];
                                                                                                                                                                                                    [recorddict setValue:Obliques forKey:@"obliques"];
                                                                                                                                                                                                    [recorddict setValue:selectgait forKey:@"selectedgait"];
                                                                                                                                                                                                    [recorddict setValue:selectpelvic forKey:@"pelvic unleveling"];
                                                                                                                                                                                                    [recorddict setValue:lefoth.text forKey:@"left other"];
                                                                                                                                                                                                    [recorddict setValue:rigoth.text forKey:@"right other"];
                                                                                                                                                                                                    
                                                                                                                                                                                                    
                                                                                                                                                                                                    //  NSLog(@"success!!!recorddict %@",recorddict);
                                                                                                                                                                                                    
                                                                                                                                                                                                    if(a==1)
                                                                                                                                                                                                    {
                                                                                                                                                                                                        [self performSegueWithIdentifier:@"perry1to2" sender:self];
                                                                                                                                                                                                    }
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                    a=0;
                                                                                                                                                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid SI Right."];
                                                                                                                                                                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                                                                                    [alert show];
                                                                                                                                                                                                }
                                                                                                                                                                                            }
                                                                                                                                                                                            else
                                                                                                                                                                                            {
                                                                                                                                                                                                a=0;
                                                                                                                                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid SI Left."];
                                                                                                                                                                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                                                                                [alert show];
                                                                                                                                                                                            }
                                                                                                                                                                                        }
                                                                                                                                                                                        else
                                                                                                                                                                                        {
                                                                                                                                                                                            a=0;
                                                                                                                                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid L5 Right."];
                                                                                                                                                                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                                                                            [alert show];
                                                                                                                                                                                        }
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                        a=0;
                                                                                                                                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid L5 Left."];
                                                                                                                                                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                                                                        [alert show];
                                                                                                                                                                                    }
                                                                                                                                                                                }
                                                                                                                                                                                else
                                                                                                                                                                                {
                                                                                                                                                                                    a=0;
                                                                                                                                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid L4 Right."];
                                                                                                                                                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                                                                    [alert show];
                                                                                                                                                                                }
                                                                                                                                                                            }
                                                                                                                                                                            else
                                                                                                                                                                            {
                                                                                                                                                                                a=0;
                                                                                                                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid L4 Left."];
                                                                                                                                                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                                                                [alert show];
                                                                                                                                                                            }
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                            a=0;
                                                                                                                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid L3 Right."];
                                                                                                                                                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                                                            [alert show];
                                                                                                                                                                        }
                                                                                                                                                                    }
                                                                                                                                                                    else
                                                                                                                                                                    {
                                                                                                                                                                        a=0;
                                                                                                                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid L3 Left."];
                                                                                                                                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                                                        [alert show];
                                                                                                                                                                    }
                                                                                                                                                                }
                                                                                                                                                                else
                                                                                                                                                                {
                                                                                                                                                                    a=0;
                                                                                                                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid L2 Right."];
                                                                                                                                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                                                    [alert show];
                                                                                                                                                                }
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                                a=0;
                                                                                                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid L2 Left."];
                                                                                                                                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                                                [alert show];
                                                                                                                                                            }
                                                                                                                                                        }
                                                                                                                                                        else
                                                                                                                                                        {
                                                                                                                                                            a=0;
                                                                                                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid L1 Right."];
                                                                                                                                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                                            [alert show];
                                                                                                                                                        }
                                                                                                                                                    }
                                                                                                                                                    else
                                                                                                                                                    {
                                                                                                                                                        a=0;
                                                                                                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid L1 Left."];
                                                                                                                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                                        [alert show];
                                                                                                                                                    }
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                    a=0;
                                                                                                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid positive adam."];
                                                                                                                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                                    [alert show];
                                                                                                                                                }
                                                                                                                                            }
                                                                                                                                            else
                                                                                                                                            {
                                                                                                                                                a=0;
                                                                                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid positive."];
                                                                                                                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                                [alert show];
                                                                                                                                            }
                                                                                                                                        }
                                                                                                                                        else
                                                                                                                                        {
                                                                                                                                            a=0;
                                                                                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid nachels Right."];
                                                                                                                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                            [alert show];
                                                                                                                                        }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                        a=0;
                                                                                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid nachels Left."];
                                                                                                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                        [alert show];
                                                                                                                                    }
                                                                                                                                }
                                                                                                                                
                                                                                                                                else
                                                                                                                                {
                                                                                                                                    a=0;
                                                                                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid well leg Right."];
                                                                                                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                    [alert show];
                                                                                                                                }
                                                                                                                            }
                                                                                                                            else
                                                                                                                            {
                                                                                                                                a=0;
                                                                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid well leg Left."];
                                                                                                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                [alert show];
                                                                                                                            }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                            a=0;
                                                                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid Straight leg Right."];
                                                                                                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                            [alert show];
                                                                                                                        }
                                                                                                                    }
                                                                                                                    else
                                                                                                                    {
                                                                                                                        a=0;
                                                                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid Strsight leg Left."];
                                                                                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                        [alert show];
                                                                                                                    }
                                                                                                                }
                                                                                                                else
                                                                                                                {
                                                                                                                    a=0;
                                                                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid slump right."];
                                                                                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                    [alert show];
                                                                                                                }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                                a=0;
                                                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid slump left."];
                                                                                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                [alert show];
                                                                                                            }
                                                                                                        }
                                                                                                        else
                                                                                                        {
                                                                                                            a=0;
                                                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid kemp right."];
                                                                                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                            [alert show];
                                                                                                        }
                                                                                                    }
                                                                                                    else
                                                                                                    {
                                                                                                        a=0;
                                                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid kemp left."];
                                                                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                        [alert show];
                                                                                                    }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                    a=0;
                                                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid trend right."];
                                                                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                    [alert show];
                                                                                                }
                                                                                            }
                                                                                            else
                                                                                            {
                                                                                                a=0;
                                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid trend left."];
                                                                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                [alert show];
                                                                                            }
                                                                                        }
                                                                                        else
                                                                                        {
                                                                                            a=0;
                                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid RSI."];
                                                                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                            [alert show];
                                                                                        }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                        a=0;
                                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid L5-SI."];
                                                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                        [alert show];
                                                                                    }
                                                                                }
                                                                                else
                                                                                {
                                                                                    a=0;
                                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid L3-4."];
                                                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                    [alert show];
                                                                                }
                                                                            }
                                                                            else
                                                                            {
                                                                                a=0;
                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid L1-2."];
                                                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                [alert show];
                                                                            }
                                                                        }
                                                                        else
                                                                        {
                                                                            a=0;
                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid T11-12."];
                                                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                            [alert show];
                                                                        }
                                                                    }
                                                                    else
                                                                    {
                                                                        a=0;
                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid T9-10"];
                                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                        [alert show];
                                                                    }
                                                                }
                                                                else
                                                                {
                                                                    a=0;
                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid LSI."];
                                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                    [alert show];
                                                                }
                                                            }
                                                            else
                                                            {
                                                                a=0;
                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid L4-5."];
                                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                [alert show];
                                                            }
                                                        }
                                                        else
                                                        {
                                                            a=0;
                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid L2-3."];
                                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                            [alert show];
                                                        }
                                                    }
                                                    else
                                                    {
                                                        a=0;
                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid T12-L1."];
                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                        [alert show];
                                                    }
                                                }
                                                else
                                                {
                                                    a=0;
                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid T10-11."];
                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                    [alert show];
                                                }
                                            }
                                            else
                                            {
                                                a=0;
                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid T8-9."];
                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                [alert show];
                                            }
                                        }
                                        else
                                        {
                                            a=0;
                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid rotation right."];
                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                            [alert show];
                                        }
                                    }
                                    else
                                    {
                                        a=0;
                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid rotation left."];
                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                        [alert show];
                                    }
                                }
                                else
                                {
                                    a=0;
                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid lateral right."];
                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                    [alert show];
                                }
                            }
                            else
                            {
                                a=0;
                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid lateral left."];
                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                [alert show];
                            }
                        }
                        else
                        {
                            a=0;
                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid extension."];
                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                            [alert show];
                        }
                    }
                    else
                    {
                        a=0;
                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid flexion."];
                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                        [alert show];
                    }
                }
                else
                {
                    a=0;
                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid other notes."];
                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                    [alert show];
                }
            }
            else
            {
                a=0;
                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid Date."];
                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                [alert show];
            }
        }
        else
        {
            a=0;
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter Valid Patient Name."];
            [alert setDestructiveButtonWithTitle:@"x" block:nil];
            [alert show];
        }
    }
    
    
    else
    {
        a=0;
        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter All Required Fields."];
        [alert setDestructiveButtonWithTitle:@"x" block:nil];
        [alert show];
    }
}


- (void)viewDidLoad
{
    
    left=@"1/8";
    right=@"1/8";
    Piriforms=@"Left";
    GluteusMaximus=@"Left";
    lliopsoas=@"Left";
    QuadLumb=@"Left";
    GluteusMedius=@"Left";
    RectusAbdominis=@"Left";
    Paraspinals=@"Left";
    Hamstrings=@"Left";
    Obliques=@"Left";
    AO=@"Excellent";
    [super viewDidLoad];
    lefoth.hidden=YES;
    rigoth.hidden=YES;
    [gait setBackgroundColor:([UIColor whiteColor])];
    [pelvic setBackgroundColor:([UIColor whiteColor])];
    selectgait=@"Normal";
    selectpelvic=@"None";
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    c=0;
}



- (IBAction)selectgait:(id)sender {
    // UISegmentedControl *segmentedControl = (UISegmentedControl *) sender;
    //  NSInteger selectedSegment = segmentedControl.selectedSegmentIndex;
    if (gaitseg.selectedSegmentIndex == 0)
    {
        selectgait=@"Normal";
    }
    else if(gaitseg.selectedSegmentIndex ==1)
    {
        selectgait=@"Antalgic";
    }
    else if (gaitseg.selectedSegmentIndex  == 2)
    {
        selectgait=@"Shuffling";
    }
    else if(gaitseg.selectedSegmentIndex ==3)
    {
        selectgait=@"Limp";
        
    }
    else if (gaitseg.selectedSegmentIndex  == 4)
    {
        selectgait=@"Stagger";
        
    }
    else if(gaitseg.selectedSegmentIndex ==5)
    {
        selectgait=@"Cane Assisted";
        
    }
    else if (gaitseg.selectedSegmentIndex  == 6)
    {
        selectgait=@"Wheel Chair";
        
    }
}
- (IBAction)pelvic:(id)sender
{
    if (pelvicseg.selectedSegmentIndex==0)
    {
        selectpelvic=@"None";
        
    }
    else if (pelvicseg.selectedSegmentIndex==1)
    {
        selectpelvic=@"Superior illiac Crest right";
    }
    else if (pelvicseg.selectedSegmentIndex==2)
    {
        selectpelvic=@"Superior illiac Crest left";
    }
}


-(void)dismissKeyboard
{
    // [gait resignFirstResponder];
    
    //[medicaldetails resignFirstResponder];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)dealloc {
   /* [PALPATION release];
    [FUNCTIONAL release];
    [SUBLUX release];
    [ORTHO release];
    [NEURO release];
    
    
    [piri release];
    [glu release];
    [lli release];
    [quad release];
    [glutes release];
    [rect release];
    [para release];
    [ham release];
    [obli release];
    [piri release];
    [glu release];
    [lli release];
    [quad release];
    [glutes release];
    [rect release];
    [para release];
    [ham release];
    [obli release];
    [gait release];
    [gait release];
    [selectgait release];
    [selectpelvic release];
    [selectpelvic release];
    [pelvic release];
    [pelvic release];
    
    [date release];
    [leftseg release];
    [rightseg release];
    [lefoth release];
    [rigoth release];
    
    [leftbut release];
    [rightbut release];*/
    
    [super dealloc];
}



@end
