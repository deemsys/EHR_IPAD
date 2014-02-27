//
//  elbowViewController.m
//  elbow
//
//  Created by Admin on 21/02/14.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//

#import "elbowViewController.h"
#import "elbow1ViewController.h"
#import "BlockAlertView.h"
@interface elbowViewController ()

@end
@implementation elbowViewController
@synthesize patientname;
@synthesize muscle;
@synthesize swelling;
@synthesize othernotes;
@synthesize flexL;
@synthesize flexR;
@synthesize extensionL;
@synthesize extensionR;
@synthesize pronationL;
@synthesize pronationR;
@synthesize supiL;
@synthesize supiR;
@synthesize golfL;
@synthesize golfR;
@synthesize tennisL;
@synthesize tennisR;
@synthesize varusL;
@synthesize varusR;
@synthesize valgusL;
@synthesize valgusR;
@synthesize tinL;
@synthesize tinR;
@synthesize ULTTL;
@synthesize ULTTR;
@synthesize SC5L;
@synthesize SC5R;
@synthesize SC6L;
@synthesize SC6R;
@synthesize SC7L;
@synthesize SC7R;
@synthesize SC8L;
@synthesize SC8R;
@synthesize ST1L;
@synthesize ST1R;
@synthesize RC5L;
@synthesize RC5R;
@synthesize RC6L;
@synthesize RC6R;
@synthesize RC7L;
@synthesize RC7R;
@synthesize domi;
@synthesize biceps;
@synthesize pronator;
@synthesize triceps;
@synthesize anconeus;
@synthesize common;
@synthesize commonexten;
-(BOOL)validateNames:(NSString *)country1
{
    NSString *countryFormat1 = @"[0-9]{1,3}";
    
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
-(BOOL)validateNameformat:(NSString *)country1
{
 
      NSString *countryFormat1 = @"(?:[A-Za-z]+[A-Za-z0-9]*)";
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
-(IBAction)checkboxSelected:(UIButton*)sender
{
    sender.selected = !sender.selected;
    if(sender.selected)
    {
        [sender setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
        
    }
    else{
        [sender setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    }
    
}
- (IBAction)domi:(id)sender
{
    
    UISegmentedControl *segmentedControl = (UISegmentedControl *) sender;
    NSInteger selectedSegment = segmentedControl.selectedSegmentIndex;
    
    if (selectedSegment == 0)
    {
        dominant_hand=@"Left";
    }
    else if(selectedSegment==1)
    {
        dominant_hand=@"Right";
    }
}
- (IBAction)biceps:(id)sender
{
    
    UISegmentedControl *segmentedControl = (UISegmentedControl *) sender;
    NSInteger selectedSegment = segmentedControl.selectedSegmentIndex;
    
    if (selectedSegment == 0)
    {
        biceps_brachii=@"Left";
    }
    else if(selectedSegment==1)
    {
        biceps_brachii=@"Right";
    }
}
- (IBAction)pronator:(id)sender
{
    
    UISegmentedControl *segmentedControl = (UISegmentedControl *) sender;
    NSInteger selectedSegment = segmentedControl.selectedSegmentIndex;
    
    if (selectedSegment == 0)
    {
        pronator_teres=@"Left";
    }
    else if(selectedSegment==1)
    {
        pronator_teres=@"Right";
    }
}
- (IBAction)triceps:(id)sender
{
    UISegmentedControl *segmentedControl = (UISegmentedControl *) sender;
    NSInteger selectedSegment = segmentedControl.selectedSegmentIndex;
    
    if (selectedSegment == 0)
    {
       triceps_brachii=@"Left";
    }
    else if(selectedSegment==1)
    {
        triceps_brachii=@"Right";
    }
}
- (IBAction)anconeus:(id)sender
{
    
    UISegmentedControl *segmentedControl = (UISegmentedControl *) sender;
    NSInteger selectedSegment = segmentedControl.selectedSegmentIndex;
    
    if (selectedSegment == 0)
    {
        Anconeus=@"Left";
    }
    else if(selectedSegment==1)
    {
        Anconeus=@"Right";
    }
}
- (IBAction)common:(id)sender
{
    
    UISegmentedControl *segmentedControl = (UISegmentedControl *) sender;
    NSInteger selectedSegment = segmentedControl.selectedSegmentIndex;
    
    if (selectedSegment == 0)
    {
        common_flexors=@"Left";
    }
    else if(selectedSegment==1)
    {
        common_flexors=@"Right";
    }
}
- (IBAction)commonexten:(id)sender
{
    
    UISegmentedControl *segmentedControl = (UISegmentedControl *) sender;
    NSInteger selectedSegment = segmentedControl.selectedSegmentIndex;
    
    if (selectedSegment == 0)
    {
        common_extensors=@"Left";
    }
    else if(selectedSegment==1)
    {
        common_extensors=@"Right";
    }
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    dominant_hand=@"";
    biceps_brachii=@"";
    pronator_teres=@"";
    triceps_brachii=@"";
    Anconeus=@"";
    common_flexors=@"";
    common_extensors=@"";
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)NEXT:(id)sender
{
    recorddict=[[NSMutableDictionary alloc]init];
    [recorddict addEntriesFromDictionary:recorddict];
    Palpation=[[NSMutableArray alloc]init];
    Functional=[[NSMutableArray alloc]init];
    Orthopedic=[[NSMutableArray alloc]init];
    Neurological=[[NSMutableArray alloc]init];
    if(palpation.selected)
    {
        
      [recorddict setValue:@"All Soft Tissue Unremarkable " forKey:@"palpation un"];
    }
    else
    {
       [recorddict setValue:@"" forKey:@"palpation un"];
    }
    if(functional.selected)
    {
        [recorddict setValue:@"Unremarkable" forKey:@"functional un"];
    }
    else
    {
       [recorddict setValue:@"" forKey:@"palpation un"];
    }
    if(ortho.selected)
    {
        [recorddict setValue:@"Unremarkable " forKey:@"orthopedic un"];
    }
    else
    {
       [recorddict setValue:@"" forKey:@"orthopedic un"];
    }
    if(neuro.selected)
    {
        [recorddict setValue:@"Neurological Testing Unremarkable " forKey:@"neuro un"];
        
    }
    else
    {
        [recorddict setValue:@"" forKey:@"neuro un"];
    }
    
    
    
        a=1;
        temp1 =[patientname.text stringByReplacingOccurrencesOfString:@" " withString:@""];
        temp2 =[muscle.text stringByReplacingOccurrencesOfString:@" " withString:@""];
        temp3 =[swelling.text stringByReplacingOccurrencesOfString:@" " withString:@""];
        temp4 =[othernotes.text stringByReplacingOccurrencesOfString:@" " withString:@""];
        temp5 =[flexL.text stringByReplacingOccurrencesOfString:@" " withString:@""];
        temp6=[flexR.text stringByReplacingOccurrencesOfString:@" " withString:@""];
        temp7=[extensionL.text stringByReplacingOccurrencesOfString:@" " withString:@""];
        temp8=[extensionR.text stringByReplacingOccurrencesOfString:@" " withString:@""];
        temp9=[pronationL.text stringByReplacingOccurrencesOfString:@" " withString:@""];
        temp10=[pronationR.text stringByReplacingOccurrencesOfString:@" " withString:@""];
        temp11=[supiL.text stringByReplacingOccurrencesOfString:@" " withString:@""];
        temp12=[supiR.text stringByReplacingOccurrencesOfString:@" " withString:@""];
        temp13=[golfL.text stringByReplacingOccurrencesOfString:@" " withString:@""];
        temp14=[golfR.text stringByReplacingOccurrencesOfString:@" " withString:@""];
        temp15=[tennisL.text stringByReplacingOccurrencesOfString:@" " withString:@""];
        temp16=[tennisR.text stringByReplacingOccurrencesOfString:@" " withString:@""];
        temp17=[varusL.text stringByReplacingOccurrencesOfString:@" " withString:@""];
        temp18=[varusR.text stringByReplacingOccurrencesOfString:@" " withString:@""];
        temp19=[valgusL.text stringByReplacingOccurrencesOfString:@" " withString:@""];
        temp20=[valgusR.text stringByReplacingOccurrencesOfString:@" " withString:@""];
        temp21=[tinL.text stringByReplacingOccurrencesOfString:@" " withString:@""];
        temp22=[tinR.text stringByReplacingOccurrencesOfString:@" " withString:@""];
        temp23=[ULTTL.text stringByReplacingOccurrencesOfString:@" " withString:@""];
        temp24=[ULTTR.text stringByReplacingOccurrencesOfString:@" " withString:@""];
        temp25=[SC5L.text stringByReplacingOccurrencesOfString:@" " withString:@""];
        temp26=[SC5R.text stringByReplacingOccurrencesOfString:@" " withString:@""];
        temp27=[SC6L.text stringByReplacingOccurrencesOfString:@" " withString:@""];
        temp28=[SC6R.text stringByReplacingOccurrencesOfString:@" " withString:@""];
        temp29=[SC7L.text stringByReplacingOccurrencesOfString:@" " withString:@""];
        temp30=[SC7R.text stringByReplacingOccurrencesOfString:@" " withString:@""];
        temp31=[SC8L.text stringByReplacingOccurrencesOfString:@" " withString:@""];
        temp32=[SC8R.text stringByReplacingOccurrencesOfString:@" " withString:@""];
        temp33=[ST1L.text stringByReplacingOccurrencesOfString:@" " withString:@""];
        temp34=[ST1R.text stringByReplacingOccurrencesOfString:@" " withString:@""];
        temp35=[RC5L.text stringByReplacingOccurrencesOfString:@" " withString:@""];
        temp36=[RC5R.text stringByReplacingOccurrencesOfString:@" " withString:@""];
        temp37=[RC6L.text stringByReplacingOccurrencesOfString:@" " withString:@""];
        temp38=[RC6R.text stringByReplacingOccurrencesOfString:@" " withString:@""];
        temp39=[RC7L.text stringByReplacingOccurrencesOfString:@" " withString:@""];
        temp40=[RC7R.text stringByReplacingOccurrencesOfString:@" " withString:@""];
        if(([temp1 length]!=0)&&
           ([date.text length]!=0))
        {
            if([self validateNameformat:temp1]==1)
            {
                if([self validateDate:[date text]]==1)
                {
                    if((([temp2 length]>0)&&([self validateNameformat:temp2]==1))||([temp2 length]==0))
                    {
                        if((([temp3 length]>0)&&([self validateNameformat:temp3 ]==1))||([temp3 length]==0))
                        {
                            if((([temp4 length]>0)&&([self validateNameformat:temp4 ]==1))||([temp4 length]==0))
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
                                                                                                                                                        if((([temp35 length]>0)&&([self validateNumberlimit:temp35]==1))||([temp35 length]==0))
                                                                                                                                                        {
                                                                                                                                                            if((([temp36 length]>0)&&([self validateNumberlimit:temp36 ]==1))||([temp36 length]==0))
                                                                                                                                                            {
                                                                                                                                                                if((([temp37 length]>0)&&([self validateNumberlimit:temp37]==1))||([temp37 length]==0))
                                                                                                                                                                {
                                                                                                                                                                    if((([temp38 length]>0)&&([self validateNumberlimit:temp38 ]==1))||([temp38 length]==0))
                                                                                                                                                                    {
                                                                                                                                                                        if((([temp39 length]>0)&&([self validateNumberlimit:temp39]==1))||([temp39 length]==0))
                                                                                                                                                                        {
                                                                                                                                                                            if((([temp40 length]>0)&&([self validateNumberlimit:temp40 ]==1))||([temp40 length]==0))
                                                                                                                                                                            {
                                                                                                                                                                                
                                        
                                        [recorddict setValue:patientname.text forKey:@"Patientname"];
                                         [recorddict setValue:date.text forKey:@"Date"];
                                        [recorddict setValue:muscle.text forKey:@"Muscle Symmetry"];
                                        [recorddict setValue:swelling.text forKey:@"Swelling/Discoloration"];
                                        [recorddict setValue:othernotes.text forKey:@"Other/Notes"];
                                        [recorddict setValue:flexL.text forKey:@"Flexion Left"];
                                        [recorddict setValue:flexR.text forKey:@"Flexion Right"];
                                      [recorddict setValue:extensionL.text forKey:@"extension left"];
                                     [recorddict setValue:extensionR.text forKey:@"extension right"];
                                        [recorddict setValue:pronationL.text forKey:@"Pronation Left"];
                                        [recorddict setValue:pronationR.text forKey:@"Pronation Right"];
                                        [recorddict setValue:supiL.text forKey:@"Supination Left"];
                                        [recorddict setValue:supiR.text forKey:@"Supination Right"];
                                        [recorddict setValue:golfL.text forKey:@"Golfer's Elbow Left"];
                                        [recorddict setValue:golfR.text forKey:@"GOlfer's Elbow Right"];
                                        [recorddict setValue:tennisL.text forKey:@"Tennis Elbow Left"];
                                        [recorddict setValue:tennisR.text forKey:@"Tennis Elbow Right"];
                                        [recorddict setValue:varusL.text forKey:@"Varus Stress Left"];
                                        [recorddict setValue:varusR.text forKey:@"Varus Stress Right"];
                                        [recorddict setValue:valgusL.text forKey:@"Valgus Stress Left"];
                                        [recorddict setValue:valgusR.text forKey:@"Valgus Stress Right"];
                                        [recorddict setValue:tinL.text forKey:@"Tinnels Left"];
                                        [recorddict setValue:tinR.text forKey:@"Tinnels Right"];
                                        [recorddict setValue:ULTTL.text forKey:@"ULTT Left"];
                                        [recorddict setValue:ULTTR.text forKey:@"ULTT Right"];
                                        [recorddict setValue:SC5L.text forKey:@"Sensory c5 Left"];
                                        [recorddict setValue:SC5R.text forKey:@"Sensory c5 Right"];
                                        [recorddict setValue:SC6L.text forKey:@"Sensory c6 Left"];
                                        [recorddict setValue:SC6R.text forKey:@"Sensory c6 Right"];
                                        [recorddict setValue:SC7L.text forKey:@"Sensory c7 Left"];
                                        [recorddict setValue:SC7R.text forKey:@"Sensory c7 Right"];
                                        [recorddict setValue:SC8L.text forKey:@"Sensory c8 Left"];
                                        [recorddict setValue:SC8R.text forKey:@"Sensory c8 Right"];
                                        [recorddict setValue:ST1L.text forKey:@"Sensory t1 Left"];
                                        [recorddict setValue:ST1R.text forKey:@"Sensory t1 Right"];
                                        [recorddict setValue:RC5L.text forKey:@"Reflexess c5 Left"];
                                        [recorddict setValue:RC5R.text forKey:@"Reflexess c5 Right"];
                                        [recorddict setValue:RC6L.text forKey:@"Reflexess c6 Left"];
                                        [recorddict setValue:RC6R.text forKey:@"Reflexess c6 Right"];
                                        [recorddict setValue:RC7L.text forKey:@"Reflexess c7 Left"];
                                        [recorddict setValue:RC7R.text forKey:@"Reflexess c7 Right"];
                                    [recorddict setValue:dominant_hand forKey:@"Dominant hand"];
                                        [recorddict setValue:biceps_brachii forKey:@"Biceps brachii"];
                                        [recorddict setValue:pronator_teres  forKey:@"Pronator_teres"];
                                        [recorddict setValue:triceps_brachii forKey:@"Triceps brachii"];
                                        [recorddict setValue:Anconeus forKey:@"Anconeus"];
                                        [recorddict setValue:common_flexors forKey:@"Common flexors"];
                                        [recorddict setValue:common_extensors forKey:@"Common extensors"];
                                      //  NSLog(@"success!!!recorddict %@",recorddict);
                                                                                                                                                                                if(a==1)
                                                                                                                                                                                {
                                                                                                                                                                                    [self performSegueWithIdentifier:@"elbow" sender:self];
                                                                                                                                                                                }
                                                                                                                                                                                
                                                                                                                                                                            }
                                                                                                                                                                            
                                    else
                                    {
                                        a=0;
                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid Reflexes C7 Right."];
                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                        [alert show];
                                    }
                                    }
                                    else
                                    {
                                        a=0;
                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid Reflexes C7 Left."];
                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                        [alert show];
                                    }
                                    }
                                    else
                                    {
                                        a=0;
                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid Reflexes C6 Right."];
                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                        [alert show];
                                    }
                                    }
                                    else
                                    {
                                        a=0;
                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid Reflexes C6 Left."];
                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                        [alert show];
                                    }
                                    }
                                    else
                                    {
                                        a=0;
                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid Reflexes C5 Right."];
                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                        [alert show];
                                    }
                                    }
                                    else
                                    {
                                        a=0;
                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid Reflexes C5 Left."];
                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                        [alert show];
                                    }
                                    }
                                    else
                                    {
                                        a=0;
                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid Sensoty T1 Right."];
                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                        [alert show];
                                    }
                                    }
                                    else
                                    {
                                        a=0;
                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid Sensory T1 Left."];
                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                        [alert show];
                                    }
                                    }
                                    else
                                    {
                                        a=0;
                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid Sensory C8 Right."];
                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                        [alert show];
                                    }
                                    }
                                    else
                                    {
                                        a=0;
                                    
                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid Sensory C8 Left."];
                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                        [alert show];
                                    }
                                    }
                                    else
                                    {
                                        a=0;
                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid Sensory C7 Right."];
                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                        [alert show];
                                    }
                                    }
                                    else
                                    {
                                        a=0;
                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid Sensory C7 Left."];
                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                        [alert show];
                                    }
                                    }
                                    else
                                    {
                                        a=0;
                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid Sensory C6 Right."];
                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                        [alert show];
                                    }
                                    }
                                    else
                                    {
                                        a=0;
                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid Sensory C6 Left."];
                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                        [alert show];
                                    }
                                    }
                                    else
                                    {
                                        a=0;
                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid Sensory C5 Right."];
                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                        [alert show];
                                    }
                                    }
                                    else
                                    {
                                        a=0;
                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid Sensory C5 Left."];
                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                        [alert show];
                                    }
                                    }
                                    else
                                    {
                                        a=0;
                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid ULTT Right."];
                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                        [alert show];
                                    }
                                    }
                                    else
                                    {
                                        a=0;
                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid ULTT Left."];
                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                        [alert show];
                                    }
                                    }
                                    else
                                    {
                                        a=0;
                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid Tinnels Right."];
                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                        [alert show];
                                    }
                                    }
                                    else
                                    {
                                        a=0;
                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid Tinnels Left."];
                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                        [alert show];
                                    }
                                    }
                                    else
                                    {
                                        a=0;
                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid Valgus Stress Right."];
                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                        [alert show];
                                    }
                                    }
                                    else
                                    {
                                        a=0;
                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid Valgus Stress Left."];
                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                        [alert show];
                                    }
                                    }
                                    else
                                    {
                                        a=0;
                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid Varus Stress Right."];
                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                        [alert show];
                                    }
                                    }
                                    else
                                    {
                                        a=0;
                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid Varus Left."];
                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                        [alert show];
                                    }
                                    }
                                    else
                                    {
                                        a=0;
                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid Tennis Elbow Right ."];
                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                        [alert show];
                                    }
                                    }
                                    else
                                    {
                                        a=0;
                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid Tennis Elbow Left."];
                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                        [alert show];
                                    }
                                    }
                                    else
                                    {
                                        a=0;
                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid Golfer's Elbow Right."];
                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                        [alert show];
                                    }
                                    }
                                    else
                                    {
                                        a=0;
                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid Golfer's Elbow Left."];
                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                        [alert show];
                                    }
                                    }
                                    else
                                    {
                                        a=0;
                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid Supination Right."];
                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                        [alert show];
                                    }
                                    }
                                    else
                                    {
                                        a=0;
                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid Supination Left."];
                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                        [alert show];
                                    }
                                    }
                                    else
                                    {
                                        a=0;
                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid Pronation Right."];
                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                        [alert show];
                                    }
                                    }
                                    else
                                    {
                                        a=0;
                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid Pronation Left."];
                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                        [alert show];
                                    }
                                }
                                else
                                {
                                    a=0;
                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid Extension Right."];
                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                    [alert show];
                                }
                            }
                            else
                            {
                                a=0;
                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid Extension Left."];
                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                [alert show];
                            }
                        }
                        else
                        {
                            a=0;
                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid Flexion Right."];
                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                            [alert show];
                        }
                    }
                    else
                    {
                        a=0;
                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid Flexion Left."];
                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                        [alert show];
                    }
                }
                else
                {
                    a=0;
                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid Other/Notes."];
                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                    [alert show];
                }
            }
                else
                {
                    a=0;
                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid Swelling/Discoloration."];
                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                    [alert show];
                }
            }
            else
            {
                a=0;
                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid Muscle Symmetry."];
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
                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid Patient Name."];
                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                [alert show];
            }
        }
    else
    {
        a=0;
        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter All The Required Fields."];
        [alert setDestructiveButtonWithTitle:@"x" block:nil];
        [alert show];
    }
}
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    
      if([identifier isEqual:@"elbow"])
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
    
    if ([segue.identifier isEqualToString:@"elbow"])
    {
        
        elbow1ViewController*destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
     NSLog(@"recorddict in elbow first %@",recorddict);
    }
    
    
}
- (void)dealloc
        {
 
    [super dealloc];
}

@end

