//
//  dcfee4ViewController.m
//  dcfee
//
//  Created by DeemsysInc on 4/12/14.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//

#import "dcfee4ViewController.h"
#import "dcfee1ViewController.h"
#import "dcfee2ViewController.h"
#import "dcfee3ViewController.h"
#import "dcfeeViewController.h"

@interface dcfee4ViewController ()

@end

@implementation dcfee4ViewController
@synthesize pillow;
@synthesize lumbarsupport;
@synthesize orthoticleft;
@synthesize orthoticright;
@synthesize tensunit;
@synthesize coldpack;
@synthesize wristsplint;
@synthesize heellift;
@synthesize exerciseball;
@synthesize exerciseband;
@synthesize unlisteditem;
@synthesize charges;
@synthesize less;
@synthesize balance;
@synthesize amt;
@synthesize date;
@synthesize patientsign;
@synthesize drsign;
@synthesize reshedule;
@synthesize months;
@synthesize recorddict;
@synthesize chargeslabel;
@synthesize balancelabel;


-(BOOL)validateNumbers:(NSString*)number
{
    NSString *mobileFormat1 =  @"[0-9]{1,10}?";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *mobileTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", mobileFormat1];
    return [mobileTest1 evaluateWithObject:number];
    
}
-(BOOL)validateNames:(NSString *)country1
{
    NSString *countryFormat1 = @"(?:[A-Za-z]+[A-Za-z]*)";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
- (IBAction)back:(id)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];
}
-(BOOL)validateDate:(NSString *)country1
{
    NSString *countryFormat1 = @"[0-9]{2}+[/]+[0-9]{2}+[/]+[0-9]{4}";
    
    //  [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
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
- (IBAction)save:(id)sender {
    
    
   
    
    
    
    
    temp1 =[pillow.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp2 =[lumbarsupport.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp3 =[orthoticleft.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp4 =[orthoticright.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp5=[tensunit.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp6 =[coldpack.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp7=[wristsplint.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp8=[heellift.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp9=[exerciseball.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp10=[exerciseband.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp11=[unlisteditem.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp12=[charges.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp13=[less.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp14=[balance.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp15=[amt.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp16=[date.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp17=[patientsign.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp18=[drsign.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp19=[reshedule.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp20=[months.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    if(([date.text length]!=0)&&
       ([patientsign.text length]!=0)&&
       ([drsign.text length]!=0))
        
    {
        c=0;
       
        if ([self validateNames:temp17]==1)
        {
            if ([self validateNames:temp18]==1)
            {
                if ([self validateDate:temp16]==1)
                {
                    if((([temp1 length]>0)&&([self validateNumbers:temp1]==1))||([temp1 length]==0))
                    {
                        if((([temp2 length]>0)&&([self validateNumbers:temp2]==1))||([temp2 length]==0))
                        {
                            if((([temp3 length]>0)&&([self validateNumbers:temp3]==1))||([temp3 length]==0))
                            {
                                if((([temp4 length]>0)&&([self validateNumbers:temp4]==1))||([temp4 length]==0))
                                {
                                    if((([temp5 length]>0)&&([self validateNumbers:temp5]==1))||([temp5 length]==0))
                                    {
                                        
                                        if((([temp6 length]>0)&&([self validateNumbers:temp6]==1))||([temp6 length]==0))
                                        {
                                            if((([temp7 length]>0)&&([self validateNumbers:temp7]==1))||([temp7 length]==0))
                                            {
                                                if((([temp8 length]>0)&&([self validateNumbers:temp8]==1))||([temp8 length]==0))
                                                {
                                                    if((([temp9 length]>0)&&([self validateNumbers:temp9]==1))||([temp9 length]==0))
                                                    {
                                                        if((([temp10 length]>0)&&([self validateNumbers:temp10 ]==1))||([temp10 length]==0))
                                                        {
                                                            if((([temp11 length]>0)&&([self validateNumbers:temp11]==1))||([temp11 length]==0))
                                                            {
                                                                if(([temp12 length]>0)||([temp12 length]==0))
                                                                {
                                                                    if((([temp13 length]>0)&&([self validateNumbers:temp13]==1))||([temp13 length]==0))
                                                                    {
                                                                        if(([temp14 length]>0)||([temp14 length]==0))
                                                                        {
                                                                            if(([temp15 length]>0)||([temp15 length]==0))
                                                                                
                                                                            {
                                                                                
                                                                                if((([temp19 length]>0)&&([self validateNumbers:temp19]==1))||([temp19 length]==0))
                                                                                    
                                                                                {
                                                                                    
                                                                                    if((([temp20 length]>0)&&([self validateNumbers:temp20]==1))||([temp20 length]==0))
                                                                                        
                                                                                    {
                                                                                        NSString *page1=[recorddict objectForKey:@"calc1"];
                                                                                        calc1=[page1 floatValue];
                                                                                        NSString *page2=[recorddict objectForKey:@"calc2"];
                                                                                        calc2=[page2 floatValue];
                                                                                        NSString *page3=[recorddict objectForKey:@"calc3"];
                                                                                        calc3=[page3 floatValue];
                                                                                        NSString *page4=[recorddict objectForKey:@"calc4"];
                                                                                        calc4=[page4 floatValue];
                                                                                        a=([pillow .text floatValue]+[lumbarsupport.text floatValue]+[tensunit.text floatValue]+[coldpack.text floatValue]+[wristsplint.text floatValue]+[exerciseball.text floatValue]+[exerciseband.text floatValue]+[unlisteditem.text floatValue]+[orthoticleft.text floatValue]+[orthoticright.text floatValue]+[heellift.text floatValue]+(calc1)+(calc2)+(calc3)+(calc4));
                                                                                        
                                                                                        
                                                                                        
                                                                                        charges.text=[[NSString alloc] initWithFormat:@"%.2f",a];
                                                                                        chargeslabel.text=charges.text;
                                                                                        b=([less.text floatValue]);
                                                                                        d=([charges.text floatValue]-[less.text floatValue]);
                                                                                        balance.text=[[NSString alloc] initWithFormat:@"%.2f",d];
                                                                                        amt.text=[[NSString alloc] initWithFormat:@"%.2f",d];
                                                                                        balancelabel.text=balance.text;
                                                                                        
                                                                                        [recorddict setValue:pillow.text forKey:@"pillow"];
                                                                                        [recorddict setValue:lumbarsupport.text forKey:@"lumbarsupport"];
                                                                                        [recorddict setValue:orthoticleft.text forKey:@"orthoticleft"];
                                                                                        [recorddict setValue:orthoticright.text forKey:@"orthoticright"];
                                                                                        [recorddict setValue:tensunit.text forKey:@"tensunit"];
                                                                                        [recorddict setValue:coldpack.text forKey:@"coldpack"];
                                                                                        [recorddict setValue:wristsplint.text forKey:@"wristsplint"];
                                                                                        [recorddict setValue:heellift.text forKey:@"heellift"];
                                                                                        [recorddict setValue:exerciseball.text forKey:@"exerciseball"];
                                                                                        [recorddict setValue:exerciseband.text forKey:@"exerciseband"];
                                                                                        [recorddict setValue:unlisteditem.text forKey:@"unlisteditem"];
                                                                                        [recorddict setValue:charges.text forKey:@"charges"];
                                                                                        
                                                                                        [recorddict setValue:less.text forKey:@"less"];
                                                                                        [recorddict setValue:balance.text forKey:@"balance"];
                                                                                        [recorddict setValue:date.text forKey:@"date"];
                                                                                        [recorddict setValue:patientsign.text forKey:@"patientsign"];
                                                                                        
                                                                                        [recorddict setValue:drsign.text forKey:@"drsign"];
                                                                                        [recorddict setValue:reshedule.text forKey:@"reshedule"];
                                                                                        [recorddict setValue:months.text forKey:@"months"];
                                                                                        [recorddict setValue:amt.text forKey:@"amt"];
                                                                                        NSLog(@"success!!!recorddict final %@",recorddict);
                                                                                        
                                                                                        c=1;
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                        c=0;
                                                                                        
                                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid weeks field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                        [alert show];
                                                                                    }
                                                                                }
                                                                                else
                                                                                {
                                                                                    c=0;
                                                                                    
                                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid reschedule field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                    [alert show];
                                                                                }
                                                                            }
                                                                            else
                                                                            {
                                                                                c=0;
                                                                                
                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid amt field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                [alert show];
                                                                            }
                                                                        }
                                                                        else
                                                                        {
                                                                            c=0;
                                                                            
                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid balance field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                            [alert show];
                                                                        }
                                                                    }
                                                                    else
                                                                    {
                                                                        c=0;
                                                                        
                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid less  field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                        [alert show];
                                                                    }
                                                                }
                                                                else
                                                                {
                                                                    c=0;
                                                                    
                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid charges field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                    [alert show];
                                                                }
                                                                
                                                            }
                                                            else
                                                            {
                                                                c=0;
                                                                
                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid routine unlisted item field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                [alert show];
                                                            }
                                                            
                                                        }
                                                        else
                                                        {
                                                            c=0;
                                                            
                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid exercise band field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                            [alert show];
                                                        }
                                                        
                                                    }
                                                    else
                                                    {
                                                        c=0;
                                                        
                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid exercise ball field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                        [alert show];
                                                    }
                                                    
                                                }
                                                else
                                                {
                                                    c=0;
                                                    
                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid heel lift field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                    [alert show];
                                                }
                                                
                                            }
                                            else
                                            {
                                                c=0;
                                                
                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid wrist splint field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                [alert show];
                                            }
                                            
                                        }
                                        else
                                        {
                                            c=0;
                                            
                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid cold pack field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                            [alert show];
                                        }
                                        
                                        
                                        
                                    }
                                    
                                    else
                                    {
                                        c=0;
                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid tens unit field."];
                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                        [alert show];
                                    }
                                }
                                else
                                {
                                    c=0;
                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid orthotic custom right field."];
                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                    [alert show];
                                }
                            }
                            
                            
                            else
                            {
                                c=0;
                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid orthotic custom left field."];
                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                [alert show];
                            }
                        }
                        else
                        {
                            c=0;
                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid  lumbar support field."];
                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                            [alert show];
                        }
                    }
                    
                    else
                    {
                        c=0;
                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid cervical pillow field."];
                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                        [alert show];
                    }
 
                }
                
                else
                {
                    c=0;
                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid  Date"];
                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                    [alert show];
                    
                }

            }
        
        else
        {
            c=0;
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid  Drsign"];
            [alert setDestructiveButtonWithTitle:@"x" block:nil];
            [alert show];
            
        }
    }

        else
        {
            c=0;
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid  Parentsign"];
            [alert setDestructiveButtonWithTitle:@"x" block:nil];
            [alert show];
            
        }
    }
    else
    {
        c=0;
        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter All Records"];
        [alert setDestructiveButtonWithTitle:@"x" block:nil];
        [alert show];
        
    }
    if(c==1)
    {
//        [self performSegueWithIdentifier:@"dcfee5" sender:self];
        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Info!" message:@"Success!"];
        
        
        [alert setDestructiveButtonWithTitle:@"x" block:nil];
        [alert show];
    }


}


- (IBAction)cancel:(id)sender
{
    for (UIView *subview in [self.view subviews])
        if([subview isKindOfClass:[UITextField class]])
            [(UITextField*)subview setText:@""];
    

}

- (IBAction)calculate:(id)sender {

//    NSLog(@"dcfee4%@",recorddict);
    NSString *page1=[recorddict objectForKey:@"calc1"];
     calc1=[page1 floatValue];
    NSString *page2=[recorddict objectForKey:@"calc2"];
    calc2=[page2 floatValue];
    NSString *page3=[recorddict objectForKey:@"calc3"];
    calc3=[page3 floatValue];
    NSString *page4=[recorddict objectForKey:@"calc4"];
    calc4=[page4 floatValue];
    
      a=([pillow .text floatValue]+[lumbarsupport.text floatValue]+[tensunit.text floatValue]+[coldpack.text floatValue]+[wristsplint.text floatValue]+[exerciseball.text floatValue]+[exerciseband.text floatValue]+[unlisteditem.text floatValue]+[orthoticleft.text floatValue]+[orthoticright.text floatValue]+[heellift.text floatValue]+(calc1)+(calc2)+(calc3)+(calc4));
    
   

charges.text=[[NSString alloc] initWithFormat:@"%.2f",a];
        chargeslabel.text=charges.text;
    b=([less.text floatValue]);
    d=([charges.text floatValue]-[less.text floatValue]);
    balance.text=[[NSString alloc] initWithFormat:@"%.2f",d];
    amt.text=[[NSString alloc] initWithFormat:@"%.2f",d];
        balancelabel.text=balance.text;
    
  
    
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (IBAction)checkboxSelected:(UIButton *)sender {

    sender.selected = !sender.selected;
    if(sender.selected){
        [sender setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
    }
    else{
        [sender setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    }
    if(cash.selected)
    {
        check.hidden=NO;
        cash.hidden=NO;
    }
    else
    {
        
        
    }
    
    
}
- (void)viewDidLoad
{
    
    [super viewDidLoad];
   

    

	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/*- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    
    //NSLog(@"identifier %@",identifier);
    if([identifier isEqual:@"dcfee5"])
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
    
    
    if ([segue.identifier isEqualToString:@"dcfee5"])
    {
        
        
        dcfee4ViewController *destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        NSLog(@"recorddict in dcfeedetail%@",recorddict);
        // destViewController.delegate=self;
        
    }
    
}*/

- (void)dealloc {
  
   
    [super dealloc];
}
@end
