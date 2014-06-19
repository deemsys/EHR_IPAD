//
//  physicalexamViewController.m
//  EHR
//
//  Created by DeemSysInc on 26/10/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import "physicalexamViewController.h"
#import "CervicalSpineViewController.h"

@interface physicalexamViewController ()

@end

@implementation physicalexamViewController
@synthesize recorddict;

int suc;
NSString *texty1,*texty2,*texty3,*texty4,*texty5,*texty6,*texty7,*texty8,*texty9,*texty10,*texty11,*texty12,*texty13,*texty14,*texty15,*texty16,*texty17,*texty18,*texty19,*texty20;

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
    texty13=@"Excellent";
     texty14=@"UN";
     texty15=@"Antalgic";
     texty16=@"Normal";
     texty17=@"Normal";
     texty18=@"Good";
     texty19=@"Present";
     texty20=@"Normal";
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];

	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
   /* [physiciansign release];
    [patname release];
    [patid release];
    [date release];
    [vitalsage release];
    [sex release];
    [height release];
    [weight release];
    [temp release];
    [bp release];
    [pulse release];
    [appearance release];
    [gait release];
    [weightseg release];
    [head release];
    [visceral release];
    [posture release];
    [romberg release];
    [cnexam release];
    [abnormalfind release];
    
    [_seg2 release];*/
    [super dealloc];
}
-(void)dismissKeyboard {
    [physiciansign resignFirstResponder];
    [sex resignFirstResponder];
    [patid resignFirstResponder];
    [patname resignFirstResponder];
    [pulse resignFirstResponder];
    [temp resignFirstResponder];
    [date resignFirstResponder];
    [vitalsage resignFirstResponder];
    [weight resignFirstResponder];
    [bp resignFirstResponder];
    [height resignFirstResponder];
    [abnormalfind resignFirstResponder];
    [physiciansign resignFirstResponder];
    
    
}
- (IBAction)seg8:(id)sender {
    if(head.selectedSegmentIndex==0)
    {
        texty16=@"Normal";
    }
    else if(head.selectedSegmentIndex==1)
    {
        texty16=@"AbNormal";
    }
}

- (IBAction)seg7:(id)sender {
    if(cnexam.selectedSegmentIndex==0)
    {
        texty20=@"Normal";
    }
    else if(cnexam.selectedSegmentIndex==1)
    {
        texty20=@"DNP";
    }
}

- (IBAction)seg6:(id)sender {
    if(romberg.selectedSegmentIndex==0)
    {
        texty19=@"Present";
    }
    else if(romberg.selectedSegmentIndex==1)
    {
        texty19=@"Not Present";
    }
}

- (IBAction)seg1:(id)sender {
    if(appearance.selectedSegmentIndex==0)
    {
        texty13=@"Excellent";
    }
    else if(appearance.selectedSegmentIndex==1)
    {
        texty13=@"Good";
    }
    else if(appearance.selectedSegmentIndex==2)
    {
        texty13=@"Fair";
    }
   else if(appearance.selectedSegmentIndex==3)
    {
        texty13=@"Severe";
    }
}

- (IBAction)seg3:(id)sender {
    if(weightseg.selectedSegmentIndex==0)
    {
        texty14=@"UN";
    }
    else if(weightseg.selectedSegmentIndex==1)
    {
        texty14=@"N";
    }
    else if(weightseg.selectedSegmentIndex==2)
    {
        texty14=@"WN";
    }
}

- (IBAction)seg2:(id)sender {
    if(gait.selectedSegmentIndex==0)
    {
        texty15=@"Antalgic";
    }
    else if(gait.selectedSegmentIndex==1)
    {
        texty15=@"Limp";
    }
    else if(gait.selectedSegmentIndex==2)
    {
        texty15=@"Sway";
    }
    else if(gait.selectedSegmentIndex==3)
    {
        texty15=@"Stagger";
    }
    else if(gait.selectedSegmentIndex==4)
    {
        texty15=@"Normal";
    }
}

- (IBAction)seg4:(id)sender {
    if(visceral.selectedSegmentIndex==0)
    {
        texty17=@"Normal";
    }
    else if(visceral.selectedSegmentIndex==1)
    {
        texty17=@"AbNormal";
    }
}

- (IBAction)seg5:(id)sender {
    if(posture.selectedSegmentIndex==0)
    {
        texty18=@"Good";
    }
    else if(posture.selectedSegmentIndex==1)
    {
        texty18=@"Poor";
    }
}
-(BOOL)validateNames:(NSString *)country1
{
    NSString *countryFormat1 = @"(?:[A-Za-z0-9,/\'.;]*)";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateString:(NSString *)user

{
    NSString *userFormat1 =@"[A-Z0-9a-z._/-]+";
    // NSString *userFormat1 =@"[0-5]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *userTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", userFormat1];
    return [userTest1 evaluateWithObject:user];
    
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
-(BOOL)validateage:(NSString*)mobilenumber{
    NSString *mobileFormat1 =  @"[0-9]{1,3}?";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *mobileTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", mobileFormat1];
    return [mobileTest1 evaluateWithObject:mobilenumber];
    
}
/*recorddict=[[NSMutableDictionary alloc]init];
 [recorddict setValue:texty13 forKey:@"appearance"];
 [recorddict setValue:texty14 forKey:@"weightseg"];
 [recorddict setValue:texty15 forKey:@"gait"];
 [recorddict setValue:texty16 forKey:@"headseg"];
 [recorddict setValue:texty17 forKey:@"visceral pathologies"];
 [recorddict setValue:texty18 forKey:@"posture"];
 [recorddict setValue:texty19 forKey:@"rombergs sign"];
 [recorddict setValue:texty20 forKey:@"cnexam"];
 NSLog(@"Record dict Value in Physical Exam:%@",recorddict);
*/
- (IBAction)submit:(id)sender {
//     NSLog(@"Record dict Value in Physical Exam for segments:%@",texty13);
//      NSLog(@"Record dict Value in Physical Exam for segments:%@",texty14);
//      NSLog(@"Record dict Value in Physical Exam for segments:%@",texty15);
//    /  NSLog(@"Record dict Value in Physical Exam for segments:%@",texty16);
//    /  NSLog(@"Record dict Value in Physical Exam for segments:%@",texty17);
//      NSLog(@"Record dict Value in Physical Exam for segments:%@",texty18);
//      NSLog(@"Record dict Value in Physical Exam for segments:%@",texty19);
//      NSLog(@"Record dict Value in Physical Exam for segments:%@",texty20);
    
    texty1=[physiciansign.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty2=[patname.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty3=[patid.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty4=[date.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty5=[vitalsage.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty6=[sex.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty7=[height.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty8=[weight.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty9=[temp.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty10=[bp.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty11=[pulse.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty12=[abnormalfind.text stringByReplacingOccurrencesOfString:@" " withString:@""];
   

    if([physiciansign.text length]!=0&&[patname.text length]!=0&&[patid.text length]!=0&&[vitalsage.text length]!=0&&[sex.text length]!=0&&[height.text length]!=0&&[weight.text length]!=0&&[temp.text length]!=0&&[bp.text length]!=0&&[pulse.text length]!=0&&[date.text length]!=0&&[abnormalfind.text length]!=0){
        if([self validateString:texty1]==1)
        {
            if([self validateNames:texty2]==1)
            {
                if([self validateString:texty3]==1)
                {
                    if([self validateDate:texty4]==1)
                    {
                        if([self validateage:texty5]==1)
                        {
                            if([self validateString:texty6]==1)
                            {
                                if([self validateString:texty7]==1)
                                {
                                    if([self validateString:texty8]==1)
                                    {
                                        if([self validateString:texty9]==1)
                                        {
                                            if([self validateString:texty10]==1)
                                            {
                                                if([self validateString:texty11]==1)
                                                {
                                                    if([self validateString:texty12]==1)
                                                    {
                                                        recorddict=[[NSMutableDictionary alloc]init];
                                                         [recorddict setValue:physiciansign.text forKey:@"physician sign"];
                                                         [recorddict setValue:patname.text forKey:@"patient name"];
                                                         [recorddict setValue:patid.text forKey:@"patient id"];
                                                         [recorddict setValue:date.text forKey:@"Date"];
                                                         [recorddict setValue:vitalsage.text forKey:@"vital age"];
                                                         [recorddict setValue:sex.text forKey:@"sex"];
                                                         [recorddict setValue:height.text forKey:@"Height"];
                                                         [recorddict setValue:weight.text forKey:@"Weight"];
                                                         [recorddict setValue:temp.text forKey:@"temp"];
                                                         [recorddict setValue:bp.text forKey:@"bp"];
                                                         [recorddict setValue:pulse.text forKey:@"pulse"];
                                                         [recorddict setValue:abnormalfind.text forKey:@"abnormal findings"];
                                                        
                                                        
                                                        [recorddict setValue:texty13 forKey:@"appearance"];
                                                        [recorddict setValue:texty14 forKey:@"weightseg"];
                                                        [recorddict setValue:texty15 forKey:@"gait"];
                                                        [recorddict setValue:texty16 forKey:@"headseg"];
                                                        [recorddict setValue:texty17 forKey:@"visceral pathologies"];
                                                        [recorddict setValue:texty18 forKey:@"posture"];
                                                        [recorddict setValue:texty19 forKey:@"rombergs sign"];
                                                        [recorddict setValue:texty20 forKey:@"cnexam"];
                                                        NSLog(@"Record dict Value in Physical Exam:%@",recorddict);
                                                        suc=1;
                                                                                                            }else{
                                                        suc=0;
                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Abnormal Field."];
                                                        
                                                        
                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                        [alert show];
                                                    }

                                                    
                                                }else{
                                                    suc=0;
                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Pulse Field."];
                                                    
                                                    
                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                    [alert show];
                                                }

                                                
                                            }else{
                                                suc=0;
                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid BP Field."];
                                                
                                                
                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                [alert show];
                                            }

                                            
                                        }else{
                                            suc=0;
                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Temp Field."];
                                            
                                            
                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                            [alert show];
                                        }

                                        
                                    }else{
                                        suc=0;
                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Weight."];
                                        
                                        
                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                        [alert show];
                                    }

                                    
                                }else{
                                    suc=0;
                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Height."];
                                    
                                    
                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                    [alert show];
                                }

                                
                            }else{
                                suc=0;
                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Sex."];
                                
                                
                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                [alert show];
                            }

                            
                        }else{
                            suc=0;
                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Vital Age."];
                            
                            
                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                            [alert show];
                        }

                        
                    }else{
                        suc=0;
                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Date."];
                        
                        
                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                        [alert show];
                    }

                    
                }else{
                    suc=0;
                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Patient ID."];
                    
                    
                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                    [alert show];
                }

                
            }else{
                suc=0;
                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Patient name."];
                
                
                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                [alert show];
            }
            
        }else{
            suc=0;
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Physician Sign."];
            
            
            [alert setDestructiveButtonWithTitle:@"x" block:nil];
            [alert show];
        }
    }else{
        suc=0;
        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter All Required Fields."];
        
        
        [alert setDestructiveButtonWithTitle:@"x" block:nil];
        [alert show];
    }
    if(suc==1){
        [self performSegueWithIdentifier:@"physic1" sender:self];
    }
}
    - (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
    {
        NSLog(@"succc value in perform segue %i",suc);
        //NSLog(@"identifier %@",identifier);
        if([identifier isEqual:@"physic1"])
        {
            if (suc==1)
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
        
        
        if ([segue.identifier isEqualToString:@"physic1"])
        {
            
            NSLog(@"succc value in prepre segue %i ",suc);
          CervicalSpineViewController *destViewController = [segue destinationViewController];
            destViewController.recorddict=recorddict;
            NSLog(@"recorddict in knee exam controller %@",recorddict);
            // destViewController.delegate=self;
            
        }
        
        
        
    }

@end
