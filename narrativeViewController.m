//
//  narrativeViewController.m
//  narrative
//
//  Created by deemsys on 2/26/14.
//  Copyright (c) 2014 deemsys. All rights reserved.
//

#import "narrativeViewController.h"
#import "narrative1ViewController.h"

@interface narrativeViewController ()

@end

@implementation narrativeViewController
@synthesize text2;
@synthesize text3;
@synthesize text4;
@synthesize text5;
@synthesize text6;
@synthesize text8;
@synthesize text9;
@synthesize text10;

@synthesize recorddict;
@synthesize  patientname;
@synthesize dateofinjury;
@synthesize dateofvisit;
@synthesize reportdate;
@synthesize to;
@synthesize accon1;
@synthesize accon;
@synthesize examon;
@synthesize index;
@synthesize narra;
@synthesize history;
@synthesize precom;
@synthesize patname;
@synthesize patname2;
@synthesize gend;
@synthesize wasnot;
@synthesize index1;
@synthesize index2;
@synthesize gen1;
@synthesize gen2;
@synthesize gen3;
@synthesize gen4;
@synthesize gen5;
@synthesize gen6;
@synthesize gen7;
@synthesize gen8;
@synthesize his;
@synthesize his1;
@synthesize his2;
@synthesize his3;
@synthesize his4;
@synthesize his5;
@synthesize his6;
@synthesize his7;
@synthesize his8;
@synthesize his9;
@synthesize index3;
@synthesize index4;



- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    if (textField.tag==2) {
        
        NSString *newString = [textField.text stringByReplacingCharactersInRange:range withString:string];
       
        self.patname.text = newString;
        self.patname2.text=newString;
        self.patname3.text=newString;
        self.patname4.text=newString;
        return YES;
        

    }
    else
        return YES;
   
}


-(BOOL)validateNames:(NSString *)country1
{
    NSString *countryFormat1 = @"(?:[A-Za-z]+[A-Za-z0-9]*)";
    
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
- (IBAction)s1:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        s1l=@"activity";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        s1l=@"bending";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        s1l=@"twisting";
    }
    if ([sender selectedSegmentIndex]==3)
    {
        s1l=@"lifting";
    }
    if ([sender selectedSegmentIndex]==4)
    {
        s1l=@"Other";
    }

}

- (IBAction)indexseg:(id)sender {
    if (index.selectedSegmentIndex==0)
    {
     indexresult=@"Mr";
    }
    if (index.selectedSegmentIndex==1)
    {
     indexresult=@"Mrs";
    }if (index.selectedSegmentIndex==2)
    {
        indexresult=@"Ms";
    }
    index1.text=indexresult;
    index2.text=indexresult;
    index3.text=indexresult;
    index4.text=indexresult;
}

- (IBAction)s2:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        s2l=@"work";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        s2l=@"sleep";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        s2l=@"housework";
    }
    if ([sender selectedSegmentIndex]==3)
    {
        s2l=@"recreation";
    }
    if ([sender selectedSegmentIndex]==4)
    {
        s2l=@"Other";
    }

    
}
- (IBAction)genderselected:(id)sender {
    if (gend.selectedSegmentIndex==0) {
        gender=@"He";
    }
    if (gend.selectedSegmentIndex==1) {
        gender=@"She";
    }
    gen1.text=gender;
    gen2.text=gender;
    gen3.text=gender;
    gen4.text=gender;
    gen5.text=gender;
    gen6.text=gender;
    gen7.text=gender;
    gen8.text=gender;
    if ([gender isEqualToString:@"He"])
    {
     his.text=@"his";
         his1.text=@"his";
         his2.text=@"his";
         his3.text=@"his";
         his4.text=@"his";
         his5.text=@"his";
         his6.text=@"his";
         his7.text=@"his";
         his8.text=@"his";
         his9.text=@"his";
    }
    else if ([gender isEqualToString:@"She"])
    {
        his.text=@"her";
        his1.text=@"her";
        his2.text=@"her";
        his3.text=@"her";
        his4.text=@"her";
        his5.text=@"her";
        his6.text=@"her";
        his7.text=@"her";
        his8.text=@"her";
        his9.text=@"her";
        
    }
    
}
- (IBAction)wasnotaction:(id)sender {
    if (wasnot.selectedSegmentIndex==0) {
     wasnotlabel=@"was";
    }
    if (wasnot.selectedSegmentIndex==1) {
        wasnotlabel=@"wasnot";
    }
}


- (IBAction)next:(id)sender {
    recorddict=[[NSMutableDictionary alloc]init];
    a=1;
        temp2 =[text2.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp3 =[text3.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp4 =[text4.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp5 =[text5.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp6=[text6.text stringByReplacingOccurrencesOfString:@" " withString:@""];
//    temp7=[text7.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp8=[text8.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp9=[text9.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp10=[text10.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp11=[patientname.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp12=[to.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    
//    temp13=[patname.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp14=[dateofinjury.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp15=[dateofvisit.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp16=[reportdate.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp17=[accon.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp18=[accon1.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp19=[examon.text stringByReplacingOccurrencesOfString:@" " withString:@""];

    
    if(([temp2 length]!=0)&&
       ([temp3 length]!=0)&&
       ([temp4 length]!=0)&&
       ([temp5 length]!=0)&&
       ([temp6 length]!=0)&&
       ([temp8 length]!=0)&&
       ([temp9 length]!=0)&&
       ([temp10 length]!=0)&&
       ([temp11 length]!=0)&&
       ([temp12 length]!=0)&&
       ([dateofinjury.text length]!=0)&&
       ([dateofvisit.text length]!=0)&&
       ([reportdate.text length]!=0)&&
       ([accon.text length]!=0)&&
       ([accon1.text length]!=0)&&
       ([examon.text length]!=0))
       
       
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
                                    
                                        if((([temp8 length]>0)&&([self validateDate:temp8]==1))||([temp8 length]==0))
                                        {
                                            if((([temp9 length]>0)&&([self validateNames:temp9]==1))||([temp9 length]==0))
                                            {
                                                if((([temp10 length]>0)&&([self validateDate:temp10]==1))||([temp10 length]==0))
                                                {
                                                    if((([temp11 length]>0)&&([self validateNames:temp11]==1))||([temp11 length]==0))
                                                    {
                                                        if((([temp12 length]>0)&&([self validateNames:temp12]==1))||([temp12 length]==0))
                                                        {
                                                            if((([temp14 length]>0)&&([self validateDate:temp14]==1))||([temp14 length]==0))
                                                            {
                                                                if((([temp15 length]>0)&&([self validateDate:temp15]==1))||([temp15 length]==0))
                                                                {
                                                                    if((([temp16 length]>0)&&([self validateDate:temp16]==1))||([temp16 length]==0))
                                                                    {
                                                                        if((([temp17 length]>0)&&([self validateDate:temp17]==1))||([temp17 length]==0))
                                                                        {
                                                                            if((([temp19 length]>0)&&([self validateDate:temp19]==1))||([temp19 length]==0))
                                                                            {
                                                                                if((([temp18 length]>0)&&([self validateDate:temp18]==1))||([temp18 length]==0))
                                                                                {
                                                                                    
                                                                                       
                                                                                    
                                                                                    a=1;
                                        
                                            [recorddict setValue:text2.text forKey:@"text2"];
                                            [recorddict setValue:text3.text forKey:@"text3"];
                                            [recorddict setValue:text4.text forKey:@"text4"];
                                            
                                            [recorddict setValue:text5.text forKey:@"text5"];
                                            
                                            [recorddict setValue:text6.text forKey:@"text6"];
                                          
                                            [recorddict setValue:text8.text forKey:@"text8"];
                                            [recorddict setValue:text9.text forKey:@"text9"];
                                            [recorddict setValue:text10.text forKey:@"text10"];
                                            [recorddict setValue:patientname.text forKey:@"patient name"];
                                            [recorddict setValue:to.text forKey:@"to"];
                                                            
                                                                                    [recorddict setValue:dateofinjury.text forKey:@"dateofinjury"];
                                                                                    [recorddict setValue:dateofvisit.text forKey:@"date of visit"];
                                                                                    [recorddict setValue:reportdate.text forKey:@"reportdate"];
                                                                                    [recorddict setValue:examon.text forKey:@"examon"];
                                                                                    [recorddict setValue:accon.text forKey:@"accon"];
                                                                                    [recorddict setValue:accon1.text forKey:@"accon1"];
                                                                                    [recorddict setValue:s1l forKey:@"s1"];
                                                                                    [recorddict setValue:s2l forKey:@"s2"];
                                                                                    [recorddict setValue:indexresult forKey:@"index"];
                                                                                    [recorddict setValue:wasnotlabel forKey:@"wasnotlabel"];
//                                                                                    [recorddict setValue:index1.text forKey:@"index1"];
                                                                                    [recorddict setValue:gen1.text  forKey:@"genderval"];
                                                                                    [recorddict setValue:his.text forKey:@"his"];
                                                                                    
                                            NSLog(@"success!!!recorddict %@",recorddict);
                                                   
                                                    
                                           
                                                

                                                                                
                                                                                }
                                                                                else
                                                                                {
                                                                                    a=0;
                                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid accident date"];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                    [alert show];
                                                                                }
                                                                                
                                                                            }
                                                                            else
                                                                            {
                                                                                a=0;
                                                                                
                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid examination date."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                [alert show];
                                                                            }
                                                                            
                                                                        }
                                                                        
                                                                        else
                                                                        {
                                                                            a=0;
                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid accident date."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                            [alert show];
                                                                        }
                                                                        
                                                                    }
                                                                    else
                                                                    {
                                                                        a=0;
                                                                        
                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid report date."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                        [alert show];
                                                                    }
                                                                    
                                                                }
                                                                else
                                                                {
                                                                    a=0;
                                                                    
                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid date of visit"];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                    [alert show];
                                                                }
                                                            }
                                                            
                                                            else
                                                            {
                                                                a=0;
                                                                
                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid date of injury"];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                [alert show];
                                                            }
                                                            
                                                        }

                                                        else
                                                        {
                                                            a=0;
                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid to."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                            [alert show];
                                                        }
                                                        
                                                    }
                                                    else
                                                    {
                                                        a=0;
                                                        
                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid patient name."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                        [alert show];
                                                    }
                                                    
                                                }
                                                
                                        else
                                        {
                                            a=0;
                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid accident on."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                            [alert show];
                                        }
                                        
                                    }
                                    else
                                    {
                                        a=0;
                                        
                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid complaints of."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                        [alert show];
                                    }
                                    
                                }
                                        else
                                        {
                                            a=0;
                                            
                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid clinic on."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                            [alert show];
                                        }
                                    }

                                
                            else
                            {
                                a=0;
                                
                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid accident appeared."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                [alert show];
                            }
                            
                        }
                        else
                        {
                            a=0;
                            
                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid symptoms of."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                            [alert show];
                        }
                        
                    }
                    else
                    {
                        a=0;
                        
                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid slammed."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                        [alert show];
                    }
                    
                }
                else
                {
                    a=0;
                    
                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid his."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                    [alert show];
                }
                
            }
            else
            {
                a=0;
                
                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid body was."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                [alert show];
            }
            
            
        }
    
    
    
    else
    {
        a=0;
        
        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter All Required fields."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
        [alert show];
    }
    if (a==1)
    {
        [self performSegueWithIdentifier:@"narr1" sender:self];
    }
}

    


- (void)viewDidLoad
{
    [super viewDidLoad];
    patientname.delegate=self;
    gen1.text=@"He";
    gen2.text=@"He";
    gen3.text=@"He";
    gen4.text=@"He";
    gen5.text=@"He";
    gen6.text=@"He";
    gen7.text=@"He";
    gen8.text=@"He";
    his1.text=@"his";
    his2.text=@"his";
    his3.text=@"his";
    his4.text=@"his";
    his5.text=@"his";
    his6.text=@"his";
    his7.text=@"his";
    his8.text=@"his";
    his9.text=@"his";
    index1.text=@"Mr";
    index2.text=@"Mr";
    index3.text=@"Mr";
    index4.text=@"Mr";
    s1l=@"activity";
    indexresult=@"Mr";
    s2l=@"work";
    wasnotlabel=@"was";
    NSMutableAttributedString *attributeString = [[NSMutableAttributedString alloc] initWithString:@"Narrative Report"];
    [attributeString addAttribute:NSUnderlineStyleAttributeName
     
                            value:[NSNumber numberWithInt:1]
                            range:(NSRange){0,[attributeString length]}];
    narra.attributedText=[attributeString copy];
    NSMutableAttributedString *attributeString1 = [[NSMutableAttributedString alloc] initWithString:@"History"];
    [attributeString1 addAttribute:NSUnderlineStyleAttributeName
     
                            value:[NSNumber numberWithInt:1]
                            range:(NSRange){0,[attributeString1 length]}];
    history.attributedText=[attributeString1 copy];
    NSMutableAttributedString *attributeString2 = [[NSMutableAttributedString alloc] initWithString:@"Present Complaint"];
    [attributeString2 addAttribute:NSUnderlineStyleAttributeName
     
                            value:[NSNumber numberWithInt:1]
                            range:(NSRange){0,[attributeString2 length]}];
    precom.attributedText=[attributeString2 copy];

	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    
    //NSLog(@"identifier %@",identifier);
    if([identifier isEqual:@"narr1"])
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
    
    if ([segue.identifier isEqualToString:@"narr1"])
    {
        
        narrative1ViewController *destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        NSLog(@"recorddict in narrative first page %@",recorddict);
    }
    
    
}
- (void)dealloc {
 
   
    [super dealloc];
}
@end
