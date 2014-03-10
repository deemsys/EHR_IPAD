//
//  oswestrydisability4ViewController.m
//  oswestrydisability
//
//  Created by DeemsysInc on 3/8/14.
//  Copyright (c) 2014 DeemsysInc. All rights reserved.
//

#import "oswestrydisability4ViewController.h"
#import "oswestrydisability3ViewController.h"
#import "BlockAlertView.h"
@interface oswestrydisability4ViewController ()

@end

@implementation oswestrydisability4ViewController
@synthesize date;
@synthesize sec101;
@synthesize sec102;
@synthesize sec103;
@synthesize sec104;
@synthesize sec105;
@synthesize sec106;
@synthesize seg1;
@synthesize seg2;
@synthesize seg3;
@synthesize seg4;
@synthesize name;
@synthesize recorddict;
@synthesize rightlabel;
@synthesize rightslider;
@synthesize workmodbut;
@synthesize workmodtv;
@synthesize worselabel;
@synthesize worseslider;
@synthesize comments;
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
    seg1val=@"";
    seg2val=@"";
    seg3val=@"";
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)first:(id)sender {
    
    val10=@"0";
    [sec101 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [sec102 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec103 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec104 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec105 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec106 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    NSNumber *a=[recorddict objectForKey:@"total1"];
    NSNumber* b=[recorddict objectForKey:@"total2"];
    aa=[a intValue];
    bb=[b intValue];
    cc=[val10 intValue];
    result=aa+bb+cc;
    
    
    
}
- (IBAction)second:(id)sender {
    val10=@"1";
    
    [sec102 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [sec101 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec103 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec104 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec105 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec106 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    NSNumber *a=[recorddict objectForKey:@"total1"];
    NSNumber* b=[recorddict objectForKey:@"total2"];
    aa=[a intValue];
    bb=[b intValue];
    cc=[val10 intValue];
    result=aa+bb+cc;
}
- (IBAction)third:(id)sender {
    val10=@"2";
    [sec103 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [sec101 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec102 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec104 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec105 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec106 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    NSNumber *a=[recorddict objectForKey:@"total1"];
    NSNumber* b=[recorddict objectForKey:@"total2"];
    aa=[a intValue];
    bb=[b intValue];
    cc=[val10 intValue];
    result=aa+bb+cc;
    
    
    
}
- (IBAction)fourth:(id)sender {
    val10=@"3";
    [sec104 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [sec101 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec102 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec103 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec105 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec106 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    NSNumber *a=[recorddict objectForKey:@"total1"];
    NSNumber* b=[recorddict objectForKey:@"total2"];
    aa=[a intValue];
    bb=[b intValue];
    cc=[val10 intValue];
    result=aa+bb+cc;
    
    
}
- (IBAction)fifth:(id)sender {
    val10=@"4";
    [sec105 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [sec101 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec102 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec104 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec103 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec106 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    NSNumber *a=[recorddict objectForKey:@"total1"];
    NSNumber* b=[recorddict objectForKey:@"total2"];
    aa=[a intValue];
    bb=[b intValue];
    cc=[val10 intValue];
    result=aa+bb+cc;
    
    
}
-(IBAction)sixth:(id)sender {
    val10=@"5";
    [sec106 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [sec101 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec102 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec104 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec103 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec105 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    NSNumber *a=[recorddict objectForKey:@"total1"];
    NSNumber *b=[recorddict objectForKey:@"total2"];
    aa=[a intValue];
    bb=[b intValue];
    cc=[val10 intValue];
    result=aa+bb+cc;
    
    
    
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
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    
    //NSLog(@"identifier %@",identifier);
    if([identifier isEqual:@"oswestry3"])
    {
        if (c==1)
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
    
    if ([segue.identifier isEqualToString:@"oswestry3"])
    {
        
        oswestrydisability3ViewController *destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        NSLog(@"recorddict in oswestry third %@",recorddict);
    }
    
    
}
- (IBAction)rightnow:(id)sender {
    int right=(int)rightslider.value;
    rightlabel.text=[NSString stringWithFormat:@"%d",right];
}
- (IBAction)painworse:(id)sender
{
    int right1=(int)worseslider.value;
    worselabel.text=[NSString stringWithFormat:@"%d",right1];
    
}
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
    
    c=1;
    
    NSString *temp3=[[comments.text stringByReplacingOccurrencesOfString:@"\n" withString:@" "]stringByReplacingOccurrencesOfString:@" " withString:@""];
    NSString *temp1 = [name.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    NSString *temp2 = [date.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    if (([temp1 length]>0)&&([temp2 length]>0))
    {
        if ([self validateNames:temp1]==1)
        {
            if ([self validateDate:temp2]==1)
            {
                if ((temp3.length>0)&&([self validateNames:temp3]==1))
                {
                    [recorddict setValue:comments.text forKey:@"comment"];
                    [recorddict setValue:workmodtv.text  forKey:@"joborwork"];
                    [recorddict setValue:val10 forKey:@"sec10"];
                    [recorddict setValue:name.text forKey:@"patient name"];
                    [recorddict setValue:date.text forKey:@"Date"];
                    [recorddict setValue:worselabel.text forKey:@"worsepainlevel"];
                    [recorddict setValue:rightlabel.text forKey:@"rightpainlevel"];
                    [recorddict setValue:seg1val forKey:@"seg1"];
                    [recorddict setValue:seg2val forKey:@"seg2"];
                    [recorddict setValue:seg3val forKey:@"seg3"];
                    [recorddict setValue:seg4val forKey:@"seg4"];
                    
                    if (workmodbut.selected) {
                        [recorddict setValue:@"I do not work" forKey:@"dontwork"];
                    }
                    else{
                        [recorddict setValue:@"" forKey:@"dontwork"];
                    }
                    
                    
                    
                    //                    NSLog(@"recorddict %@",recorddict);
                    
                }
                else
                {
                    c=0;
                    BlockAlertView *alert=[[BlockAlertView alloc]initWithTitle:@"Oh snap!" message:@"Enter valid comment."];
                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                    [alert show];
                    
                }
                
            }
            else
            {
                c =0;
                
                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid date."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                [alert show];
            }
            
            
        }
        else
        {
            c =0;
            
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid patient name."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
            [alert show];
        }
        
    }
    else{
        c =0;
        
        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter all the required fields."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
        [alert show];
    }
    
    
    
    if (c==1) {
        [self performSegueWithIdentifier:@"oswestry3" sender:self];
    }
}
- (IBAction)seg1selected:(id)sender
{
    if (seg1.selectedSegmentIndex==0) {
        seg1val=@"0";
    }
    else if (seg1.selectedSegmentIndex==1) {
        seg1val=@"1";
    }
    
    else if (seg1.selectedSegmentIndex==2) {
        seg1val=@"2";
    }
    
    else if (seg1.selectedSegmentIndex==3) {
        seg1val=@"3";
    }
    else  if (seg1.selectedSegmentIndex==4) {
        seg1val=@"4";
    }
    
    
}
- (IBAction)seg2selected:(id)sender
{
    if (seg2.selectedSegmentIndex==0) {
        seg2val=@"0";
    }
    else if (seg2.selectedSegmentIndex==1) {
        seg2val=@"1";
    }
    
    else if (seg2.selectedSegmentIndex==2) {
        seg2val=@"2";
    }
    
    else if (seg2.selectedSegmentIndex==3) {
        seg2val=@"3";
    }
    else  if (seg2.selectedSegmentIndex==4) {
        seg2val=@"4";
    }
    
}
- (IBAction)seg3selected:(id)sender
{
    if (seg3.selectedSegmentIndex==0) {
        seg3val=@"0";
    }
    else if (seg3.selectedSegmentIndex==1) {
        seg3val=@"1";
    }
    
    else if (seg3.selectedSegmentIndex==2) {
        seg3val=@"2";
    }
    
    else if (seg3.selectedSegmentIndex==3) {
        seg3val=@"3";
    }
    else  if (seg3.selectedSegmentIndex==4) {
        seg3val=@"4";
    }
    
}
- (IBAction)seg4selected:(id)sender
{
    if (seg4.selectedSegmentIndex==0) {
        seg4val=@"0";
    }
    else if (seg4.selectedSegmentIndex==1) {
        seg4val=@"1";
    }
    
    else if (seg4.selectedSegmentIndex==2) {
        seg4val=@"2";
    }
    
    else if (seg4.selectedSegmentIndex==3) {
        seg4val=@"3";
    }
    else  if (seg4.selectedSegmentIndex==4) {
        seg4val=@"4";
    }
    
}


- (void)dealloc {
    
    [super dealloc];
}
@end
