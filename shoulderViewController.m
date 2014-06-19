//
//  shoulderViewController.m
//  shoulder
//
//  Created by deemsys on 2/24/14.
//  Copyright (c) 2014 DeemsysInc. All rights reserved.
//

#import "shoulderViewController.h"
#import "shoulder1ViewController.h"
#import "BlockAlertView.h"


@interface shoulderViewController ()

@end

@implementation shoulderViewController
@synthesize patientname;
@synthesize date;
@synthesize muscle;
@synthesize swelling;
@synthesize ao;
@synthesize pectoralisminor;
@synthesize teresminor;
@synthesize supraspinatus;
@synthesize teresmajor;
@synthesize infraspinatus;
@synthesize  rhomboids;
@synthesize  serratusant;
@synthesize trapezius;
@synthesize palpation;
@synthesize rangeofmotion;
@synthesize orthotesting;
@synthesize neurological;
@synthesize flexionleft;
@synthesize flexionright;
@synthesize extensionleft;
@synthesize extensionright;
@synthesize abductionleft;
@synthesize abductionright;
@synthesize adductionleft;
@synthesize adductionright;
@synthesize internalleft;
@synthesize internalright;
@synthesize externalleft;
@synthesize externalright;
@synthesize canleft;
@synthesize canright;
@synthesize signleft;
@synthesize signright;
@synthesize scratchleft;
@synthesize scratchright;
@synthesize pushleft;
@synthesize pushright;
@synthesize dawbarnleft;
@synthesize dawbarnright;
@synthesize yergasonleft;
@synthesize yergasonright;
@synthesize codmanleft;
@synthesize codmanright;
@synthesize apprehensionleft;
@synthesize apprehensionright;
@synthesize c5left;
@synthesize c5right;
@synthesize c6left;
@synthesize c6right;
@synthesize c7left;
@synthesize c7right;
@synthesize c8left;
@synthesize c8right;
@synthesize t1left;
@synthesize t1right;
@synthesize mc5left;
@synthesize mc5right;
@synthesize mc6left;
@synthesize mc6right;
@synthesize mc7left;
@synthesize mc7right;
@synthesize mc8left;
@synthesize mc8right;
@synthesize mt1left;
@synthesize mt1right;
@synthesize recorddict;
@synthesize gait;



- (IBAction)ao:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        aolabel=@"Excellent";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        aolabel=@"Good";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        aolabel=@"Fair";
    }
    if ([sender selectedSegmentIndex]==3)
    {
        aolabel=@"Severe";
    }
    
}
- (IBAction)pectoralisminor:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        pectoralisminorlabel=@"Left";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        pectoralisminorlabel=@"Right";
    }
}
- (IBAction)teresminor:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        teresminorlabel=@"Left";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        teresminorlabel=@"Right";
    }
    
}
- (IBAction)supraspinatus:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        supraspinatuslabel=@"Left";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        supraspinatuslabel=@"Right";
    }
    
}
- (IBAction)teresmajor:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        teresmajorlabel=@"Left";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        teresmajorlabel=@"Right";
    }
}
- (IBAction)infraspinatus:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        infraspinatuslabel=@"Left";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        infraspinatuslabel=@"Right";
    }

}
- (IBAction)rhomboids:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        rhomboidslabel=@"Left";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        rhomboidslabel=@"Right";
    }

}
- (IBAction)serratusant:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        serratusantlabel=@"Left";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        serratusantlabel=@"Right";
    }
    
}
- (IBAction)trapezius:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        trapeziuslabel=@"Left";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        trapeziuslabel=@"Right";
    }
    
}
-(BOOL)validateNumber:(NSString *)country1
{
    NSString *countryFormat1 = @"[0-5]{1}";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateNumbersfield:(NSString *)country1
{
    NSString *countryFormat1 = @"[0-9]{1,3}";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
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
- (IBAction)next:(id)sender {
    recorddict=[[NSMutableDictionary alloc]init];
    a=1;
    temp1 =[patientname.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp2 =[muscle.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp3 =[swelling.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp4 =[flexionleft.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp5 =[flexionright.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp6=[extensionleft.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp7=[extensionright.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp8=[abductionleft.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp9=[abductionright.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp10=[adductionleft.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp11=[adductionright.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp12=[internalleft.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp13=[internalright.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp14=[externalleft.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp15=[externalright.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp16=[canleft.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp17=[canright.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp18=[signleft.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp19=[signright.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp20=[scratchleft.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp21=[scratchright.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp22=[pushleft.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp23=[pushright.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp24=[dawbarnleft.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp25=[dawbarnright.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp26=[yergasonleft.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp27=[yergasonright.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp28=[codmanleft.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp29=[codmanright.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp30=[apprehensionleft.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp31=[apprehensionright.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp32=[c5left.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp33=[c5right.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp34=[c6left.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp35=[c6right.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp36=[c7left.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp37=[c7right.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp38=[c8left.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp39=[c8right.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp40=[t1left.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp41=[t1right.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp42=[mc5left.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp43=[mc5right.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp44=[mc6left.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp45=[mc6right.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp46=[mc7left.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp47=[mc7right.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp48=[mc8left.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp49=[mc8right.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp50=[mt1left.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp51=[mt1right.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    if(palpation.selected)
    {
        
        palpationlabel=@"All Soft Tissue Unremarkable";
        [recorddict setValue:palpationlabel forKey:@"palpation"];
    }
    else
    {
        palpationlabel=NULL;
        [recorddict  setValue:@"" forKey:@"palpation"];
    }
    if(rangeofmotion.selected)
    {
        
        rangeofmotionlabel=@"All Soft Tissue Unremarkable";
        [recorddict setValue:rangeofmotionlabel forKey:@"rangeofmotion"];
    }
    else
    {
        rangeofmotionlabel=NULL;
        [recorddict  setValue:@"" forKey:@"rangeofmotion"];
        
    }
    if(orthotesting.selected)
    {
        
        orthotestinglabel=@"All Soft Tissue Unremarkable";
        [recorddict  setValue:orthotestinglabel forKey:@"ortho"];
    }
    else
    {
        orthotestinglabel=NULL;
        [recorddict  setValue:@"" forKey:@"ortho"];
    }
    if(neurological.selected)
    {
        
        neurologicallabel=@"All Soft Tissue Unremarkable";
        [recorddict  setValue:neurologicallabel forKey:@"neurological"];
    }
    else
    {
        neurologicallabel=NULL;
        [recorddict  setValue:@"" forKey:@"neurological"];
        
    }
    if(([temp1 length]!=0)&&
       ([date.text length]!=0))
    {
        if([self validateNames:temp1]==1)
        {
            if([self validateDate:[date text]]==1)
            {
                if((([temp2 length]>0)&&([self validateNames:temp2]==1))||([temp2 length]==0))
                {
                    if((([temp3 length]>0)&&([self validateNames:temp3 ]==1))||([temp3 length]==0))
                    {
                        if((([temp4 length]>0)&&([self validateNumbersfield:temp4 ]==1))||([temp4 length]==0))
                        {
                            if((([temp5 length]>0)&&([self validateNumbersfield:temp5]==1))||([temp5 length]==0))
                            {
                                if((([temp6 length]>0)&&([self validateNumbersfield:temp6]==1))||([temp6 length]==0))
                                {
                                    if((([temp7 length]>0)&&([self validateNumbersfield:temp7]==1))||([temp7 length]==0))
                                    {
                                        if((([temp8 length]>0)&&([self validateNumbersfield:temp8]==1))||([temp8 length]==0))
                                        {
                                            if((([temp9 length]>0)&&([self validateNumbersfield:temp9]==1))||([temp9 length]==0))
                                            {
                                                if((([temp10 length]>0)&&([self validateNumbersfield:temp10 ]==1))||([temp10 length]==0))
                                                {
                                                    if((([temp11 length]>0)&&([self validateNumbersfield:temp11]==1))||([temp11 length]==0))
                                                    {
                                                        if((([temp12 length]>0)&&([self validateNumbersfield:temp12]==1))||([temp12 length]==0))
                                                        {
                                                            if((([temp13 length]>0)&&([self validateNumbersfield:temp13]==1))||([temp13 length]==0))
                                                            {
                                                                if((([temp14 length]>0)&&([self validateNumbersfield:temp14]==1))||([temp14 length]==0))
                                                                {
                                                                    if((([temp15 length]>0)&&([self validateNumbersfield:temp15]==1))||([temp15 length]==0))
                                                                    {
                                                                        if((([temp16 length]>0)&&([self validateNumbersfield:temp16]==1))||([temp16 length]==0))
                                                                        {
                                                                            if((([temp17 length]>0)&&([self validateNumbersfield:temp17]==1))||([temp17 length]==0))
                                                                            {
                                                                                if((([temp18 length]>0)&&([self validateNumbersfield:temp18]==1))||([temp18 length]==0))
                                                                                {
                                                                                    if((([temp19 length]>0)&&([self validateNumbersfield:temp19]==1))||([temp19 length]==0))
                                                                                    {
                                                                                        if((([temp20 length]>0)&&([self validateNumbersfield:temp20]==1))||([temp20 length]==0))
                                                                                        {
                                                                                            if((([temp21 length]>0)&&([self validateNumbersfield:temp21]==1))||([temp21 length]==0))
                                                                                            {
                                                                                                if((([temp22 length]>0)&&([self validateNumbersfield:temp22]==1))||([temp22 length]==0))
                                                                                                {
                                                                                                    if((([temp23 length]>0)&&([self validateNumbersfield:temp23 ]==1))||([temp23 length]==0))
                                                                                                    {
                                                                                                        if((([temp24 length]>0)&&([self validateNumbersfield:temp24]==1))||([temp24 length]==0))
                                                                                                        {
                                                                                                            if((([temp25 length]>0)&&([self validateNumbersfield:temp25 ]==1))||([temp25 length]==0))
                                                                                                            {
                                                                                                                if((([temp26 length]>0)&&([self validateNumbersfield:temp26 ]==1))||([temp26 length]==0))
                                                                                                                {
                                                                                                                    if((([temp27 length]>0)&&([self validateNumbersfield:temp27]==1))||([temp27 length]==0))
                                                                                                                    {
                                                                                                                        if((([temp28 length]>0)&&([self validateNumbersfield:temp28 ]==1))||([temp28 length]==0))
                                                                                                                        {
                                                                                                                            if((([temp29 length]>0)&&([self validateNumbersfield:temp29]==1))||([temp29 length]==0))
                                                                                                                            {
                                                                                                                                if((([temp30 length]>0)&&([self validateNumbersfield:temp30]==1))||([temp30 length]==0))
                                                                                                                                {
                                                                                                                                    if((([temp31 length]>0)&&([self validateNumbersfield:temp31]==1))||([temp31 length]==0))
                                                                                                                                    {
                                                                                                                                        if((([temp32 length]>0)&&([self validateNumbersfield:temp32 ]==1))||([temp32 length]==0))
                                                                                                                                        {
                                                                                                                                            if((([temp33 length]>0)&&([self validateNumbersfield:temp33]==1))||([temp33 length]==0))
                                                                                                                                            {
                                                                                                                                                if((([temp34 length]>0)&&([self validateNumbersfield:temp34 ]==1))||([temp34 length]==0))
                                                                                                                                                {
                                                                                                                                                    if((([temp35 length]>0)&&([self validateNumbersfield:temp35]==1))||([temp35 length]==0))
                                                                                                                                                    {
                                                                                                                                                        if((([temp36 length]>0)&&([self validateNumbersfield:temp36 ]==1))||([temp36 length]==0))
                                                                                                                                                            
                                                                                                                                                        {
                                                                                                                                                            if((([temp37 length]>0)&&([self validateNumbersfield:temp37]==1))||([temp37 length]==0))
                                                                                                                                                            {
                                                                                                                                                                if((([temp38 length]>0)&&([self validateNumbersfield:temp38 ]==1))||([temp38 length]==0))
                                                                                                                                                                {
                                                                                                                                                                    if((([temp39 length]>0)&&([self validateNumbersfield:temp39]==1))||([temp39 length]==0))
                                                                                                                                                                    {
                                                                                                                                                                        if((([temp40 length]>0)&&([self validateNumbersfield:temp40 ]==1))||([temp40 length]==0))
                                                                                                                                                                        {
                                                                                                                                                                            if((([temp41 length]>0)&&([self validateNumbersfield:temp41 ]==1))||([temp41 length]==0))
                                                                                                                                                                            {
                                                                                                                                                                                if((([temp42 length]>0)&&([self validateNumber:temp42]==1))||([temp42 length]==0))
                                                                                                                                                                                {
                                                                                                                                                                                    if((([temp43 length]>0)&&([self validateNumber:temp43 ]==1))||([temp43 length]==0))
                                                                                                                                                                                    {
                                                                                                                                                                                        if((([temp44 length]>0)&&([self validateNumber:temp44]==1))||([temp44 length]==0))
                                                                                                                                                                                        {
                                                                                                                                                                                            if((([temp45 length]>0)&&([self validateNumber:temp45]==1))||([temp45 length]==0))
                                                                                                                                                                                            {
                                                                                                                                                                                                if((([temp46 length]>0)&&([self validateNumber:temp46]==1))||([temp46 length]==0))
                                                                                                                                                                                                {
                                                                                                                                                                                                    if((([temp47 length]>0)&&([self validateNumber:temp47 ]==1))||([temp47 length]==0))
                                                                                                                                                                                                    {
                                                                                                                                                                                                        if((([temp48 length]>0)&&([self validateNumber:temp48]==1))||([temp48 length]==0))
                                                                                                                                                                                                        {
                                                                                                                                                                                                            if((([temp49 length]>0)&&([self validateNumber:temp49 ]==1))||([temp49 length]==0))
                                                                                                                                                                                                            {
                                                                                                                                                                                                                if((([temp50 length]>0)&&([self validateNumber:temp50]==1))||([temp50 length]==0))
                                                                                                                                                                                                                {
                                                                                                                                                                                                                    if((([temp51 length]>0)&&([self validateNumber:temp51]==1))||([temp51 length]==0))
                                                                                                                                                                                                                        
                                                                                                                                                                                                                    {[recorddict setValue:patientname.text forKey:@"patientname"];
                                                                                                                                                                                                                        [recorddict setValue:date.text forKey:@"date"];
                                                                                                                                                                                                                        [recorddict setValue:flexionleft.text forKey:@"flexionleft"];
                                                                                                                                                                                                                        [recorddict setValue:flexionright.text forKey:@"flexionright"];
                                                                                                                                                                                                                        [recorddict setValue: extensionleft.text forKey:@"extensionleft"];
                                                                                                                                                                                                                        [recorddict setValue:extensionright.text forKey:@"extensionright"];
                                                                                                                                                                                                                        [recorddict setValue:abductionleft.text forKey:@"abductionleft"];
                                                                                                                                                                                                                        [recorddict setValue:abductionright.text forKey:@"abdutionright"];
                                                                                                                                                                                                                        [recorddict setValue:adductionleft.text forKey:@"adductionleft"];
                                                                                                                                                                                                                        [recorddict setValue:adductionright.text forKey:@"adductionright"];
                                                                                                                                                                                                                        [recorddict setValue:internalleft.text forKey:@"internalleft"];
                                                                                                                                                                                                                        [recorddict setValue:internalright.text forKey:@"internalright"];
                                                                                                                                                                                                                        
                                                                                                                                                                                                                        [recorddict setValue:externalleft.text forKey:@"externalleft"];
                                                                                                                                                                                                                        [recorddict setValue:externalright.text forKey:@"externalright"];
                                                                                                                                                                                                                        [recorddict setValue:canleft.text forKey:@"canleft"];
                                                                                                                                                                                                                        [recorddict setValue:canright.text forKey:@"canright"];
                                                                                                                                                                                                                        
                                                                                                                                                                                                                        [recorddict setValue:signleft.text forKey:@"signleft"];
                                                                                                                                                                                                                        [recorddict setValue:signright.text forKey:@"signright"];
                                                                                                                                                                                                                        [recorddict setValue:scratchleft.text forKey:@"scratchleft"];
                                                                                                                                                                                                                        [recorddict setValue:scratchright.text forKey:@"scratchright"];
                                                                                                                                                                                                                        [recorddict setValue:pushleft.text forKey:@"pushleft"];
                                                                                                                                                                                                                        [recorddict setValue:pushright.text forKey:@"pushright"];
                                                                                                                                                                                                                        [recorddict setValue:dawbarnleft.text forKey:@"dawbarnleft"];
                                                                                                                                                                                                                        [recorddict setValue:dawbarnright.text forKey:@"dawbarnright"];
                                                                                                                                                                                                                        [recorddict setValue:yergasonleft.text forKey:@"yergasonleft"];
                                                                                                                                                                                                                        [recorddict setValue:yergasonright.text forKey:@"yergasonright"];
                                                                                                                                                                                                                        [recorddict setValue:codmanleft.text forKey:@"codmanleft"];
                                                                                                                                                                                                                        [recorddict setValue:codmanright.text forKey:@"codmanright"];
                                                                                                                                                                                                                        [recorddict setValue:apprehensionleft.text forKey:@"apprehensionleft"];
                                                                                                                                                                                                                        [recorddict setValue:apprehensionright.text forKey:@"apprehensionright"];
                                                                                                                                                                                                                        [recorddict setValue:c5left.text forKey:@"c5left"];
                                                                                                                                                                                                                        [recorddict setValue:c5right.text forKey:@"c5right"];
                                                                                                                                                                                                                        [recorddict setValue:c6left.text forKey:@"c6left"];
                                                                                                                                                                                                                        [recorddict setValue:c6right.text forKey:@"c6right"];
                                                                                                                                                                                                                        [recorddict setValue:c7left.text forKey:@"c7left"];
                                                                                                                                                                                                                        [recorddict setValue:c7right.text forKey:@"c7right"];
                                                                                                                                                                                                                        [recorddict setValue:c8left.text forKey:@"c8left"];
                                                                                                                                                                                                                        [recorddict setValue:c8right.text forKey:@"c8right"];
                                                                                                                                                                                                                        [recorddict setValue:t1left.text forKey:@"t1left"];
                                                                                                                                                                                                                        [recorddict setValue:t1right.text forKey:@"t1right"];
                                                                                                                                                                                                                        [recorddict setValue:mc5left.text forKey:@"mc5left"];
                                                                                                                                                                                                                        [recorddict setValue:mc5right.text forKey:@"mc5right"];
                                                                                                                                                                                                                        [recorddict setValue:mc6left.text forKey:@"mc6left"];
                                                                                                                                                                                                                        [recorddict setValue:mc6right.text forKey:@"mc6right"];
                                                                                                                                                                                                                        [recorddict setValue:mc7left.text forKey:@"mc7left"];
                                                                                                                                                                                                                        [recorddict setValue:mc7right.text forKey:@"mc7right"];
                                                                                                                                                                                                                        [recorddict setValue:mc8left.text forKey:@"mc8left"];
                                                                                                                                                                                                                        [recorddict setValue:mc8right.text forKey:@"mc8right"];
                                                                                                                                                                                                                        [recorddict setValue:mt1left.text forKey:@"mt1left"];
                                                                                                                                                                                                                        [recorddict setValue:mt1right.text forKey:@"mt1right"];
                                                         
                                                                                                                                                                                                                        [recorddict setValue:muscle.text forKey:@"muscle"];
                                                                                                                                                                                                                        [recorddict setValue:swelling.text forKey:@"swelling"];
                                                                                                                                                                                                                        [recorddict setValue:aolabel  forKey:@"ao"];
                                                                                                                                                                                                                        
                                                                                                                                                                                                                        [recorddict setValue:pectoralisminorlabel forKey:@"pectoralisminor"];
                                                                                                                                                                                                                        [recorddict setValue:teresminorlabel forKey:@"tereminorlabel"];
                                                                                                                                                                                                                        [recorddict setValue:supraspinatuslabel forKey:@"suprapinatuslabel"];
                                                                                                                                                                                                                        [recorddict setValue:teresmajorlabel forKey:@"teremajor"];
                                                                                                                                                                                                                        [recorddict setValue:infraspinatuslabel forKey:@"infraspinatus"];
                                                                                                                                                                                                                        [recorddict setValue:rhomboidslabel forKey:@"rhomboids"];
                                                                                                                                                                                                                        [recorddict setValue:serratusantlabel forKey:@"serratudant"];
                                                                                                                                                                                                                        [recorddict setValue:trapeziuslabel forKey:@"trapezius"];
//                                                                                                                                                                                                                        NSLog(@"success!!!recorddict %@",recorddict);
                                                                                                                                                                                                                        if(a==1)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                            [self performSegueWithIdentifier:@"shoulder1" sender:self];
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        
                                                                                                                                                                                                                    }
                                                                                                                                                                                                                    
                                                                                                                                                                                                                    else
                                                                                                                                                                                                                    {
                                                                                                                                                                                                                        a=0;
                                                                                                                                                                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter VALID MT1 RIGHT"];
                                                                                                                                                                                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                                                                                                        [alert show];
                                                                                                                                                                                                                        
                                                                                                                                                                                                                    }
                                                                                                                                                                                                                }
                                                                                                                                                                                                                
                                                                                                                                                                                                                
                                                                                                                                                                                                                else
                                                                                                                                                                                                                {
                                                                                                                                                                                                                    a=0;
                                                                                                                                                                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter VALID MT1 LEFT"];
                                                                                                                                                                                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                                                                                                    [alert show];
                                                                                                                                                                                                                    
                                                                                                                                                                                                                }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                                a=0;
                                                                                                                                                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter VALID MC8 RIGHT"];
                                                                                                                                                                                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                                                                                                [alert show];
                                                                                                                                                                                                                
                                                                                                                                                                                                            }
                                                                                                                                                                                                        }
                                                                                                                                                                                                        
                                                                                                                                                                                                        else
                                                                                                                                                                                                        {
                                                                                                                                                                                                            a=0;
                                                                                                                                                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter VALID MC8 LEFT"];
                                                                                                                                                                                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                                                                                            [alert show];
                                                                                                                                                                                                            
                                                                                                                                                                                                        }
                                                                                                                                                                                                    }
                                                                                                                                                                                                    
                                                                                                                                                                                                    else
                                                                                                                                                                                                    {
                                                                                                                                                                                                        a=0;
                                                                                                                                                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter VALID MC7 RIGHT"];
                                                                                                                                                                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                                                                                        [alert show];
                                                                                                                                                                                                        
                                                                                                                                                                                                    }
                                                                                                                                                                                                }
                                                                                                                                                                                                
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                    a=0;
                                                                                                                                                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter VALID MC7 LEFT"];
                                                                                                                                                                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                                                                                    [alert show];
                                                                                                                                                                                                    
                                                                                                                                                                                                }
                                                                                                                                                                                            }
                                                                                                                                                                                            
                                                                                                                                                                                            else
                                                                                                                                                                                            {
                                                                                                                                                                                                a=0;
                                                                                                                                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter VALID MC6 RIGHT"];
                                                                                                                                                                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                                                                                [alert show];
                                                                                                                                                                                                
                                                                                                                                                                                            }
                                                                                                                                                                                        }
                                                                                                                                                                                        
                                                                                                                                                                                        else
                                                                                                                                                                                        {
                                                                                                                                                                                            a=0;
                                                                                                                                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter VALID MC6 LEFT"];
                                                                                                                                                                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                                                                            [alert show];
                                                                                                                                                                                            
                                                                                                                                                                                        }
                                                                                                                                                                                    }
                                                                                                                                                                                    
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                        a=0;
                                                                                                                                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter VALID MC5 RIGHT"];
                                                                                                                                                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                                                                        [alert show];
                                                                                                                                                                                        
                                                                                                                                                                                    }
                                                                                                                                                                                }
                                                                                                                                                                                
                                                                                                                                                                                else
                                                                                                                                                                                {
                                                                                                                                                                                    a=0;
                                                                                                                                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter VALID MC5 LEFT"];
                                                                                                                                                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                                                                    [alert show];
                                                                                                                                                                                    
                                                                                                                                                                                }
                                                                                                                                                                            }
                                                                                                                                                                            
                                                                                                                                                                            
                                                                                                                                                                            
                                                                                                                                                                            
                                                                                                                                                                            else
                                                                                                                                                                            {
                                                                                                                                                                                a=0;
                                                                                                                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter VALID T1 RIGHT"];
                                                                                                                                                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                                                                [alert show];
                                                                                                                                                                                
                                                                                                                                                                            }
                                                                                                                                                                        }
                                                                                                                                                                        
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                            a=0;
                                                                                                                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter VALID T1 LEFT"];
                                                                                                                                                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                                                            [alert show];
                                                                                                                                                                            
                                                                                                                                                                        }
                                                                                                                                                                    }
                                                                                                                                                                    
                                                                                                                                                                    else
                                                                                                                                                                    {
                                                                                                                                                                        a=0;
                                                                                                                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter VALID C8 RIGHT"];
                                                                                                                                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                                                        [alert show];
                                                                                                                                                                        
                                                                                                                                                                    }
                                                                                                                                                                }
                                                                                                                                                                
                                                                                                                                                                else
                                                                                                                                                                {
                                                                                                                                                                    a=0;
                                                                                                                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter VALID C8 LEFT"];
                                                                                                                                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                                                    [alert show];
                                                                                                                                                                    
                                                                                                                                                                }
                                                                                                                                                            }
                                                                                                                                                            
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                                a=0;
                                                                                                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter VALID C7 RIGHT"];
                                                                                                                                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                                                [alert show];
                                                                                                                                                                
                                                                                                                                                            }
                                                                                                                                                        }
                                                                                                                                                        
                                                                                                                                                        else
                                                                                                                                                        {
                                                                                                                                                            a=0;
                                                                                                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter VALID C7 LEFT"];
                                                                                                                                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                                            [alert show];
                                                                                                                                                            
                                                                                                                                                        }
                                                                                                                                                    }
                                                                                                                                                    else
                                                                                                                                                    {
                                                                                                                                                        a=0;
                                                                                                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter VALID C6 RIGHT"];
                                                                                                                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                                        [alert show];
                                                                                                                                                        
                                                                                                                                                    }
                                                                                                                                                }
                                                                                                                                                
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                    a=0;
                                                                                                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter VALID C6 LEFT"];
                                                                                                                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                                    [alert show];
                                                                                                                                                    
                                                                                                                                                }
                                                                                                                                            }
                                                                                                                                            
                                                                                                                                            else
                                                                                                                                            {
                                                                                                                                                a=0;
                                                                                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter VALID C5 RIGHT"];
                                                                                                                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                                [alert show];
                                                                                                                                                
                                                                                                                                            }
                                                                                                                                        }
                                                                                                                                        
                                                                                                                                        else
                                                                                                                                        {
                                                                                                                                            a=0;
                                                                                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter VALID C5 LEFT"];
                                                                                                                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                            [alert show];
                                                                                                                                            
                                                                                                                                        }
                                                                                                                                    }
                                                                                                                                    
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                        a=0;
                                                                                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter VALID APPREHENSION RIGHT"];
                                                                                                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                        [alert show];
                                                                                                                                        
                                                                                                                                    }
                                                                                                                                }
                                                                                                                                
                                                                                                                                else
                                                                                                                                {
                                                                                                                                    a=0;
                                                                                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter VALID APPREHENSION LEFT"];
                                                                                                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                    [alert show];
                                                                                                                                    
                                                                                                                                }
                                                                                                                            }
                                                                                                                            
                                                                                                                            else
                                                                                                                            {
                                                                                                                                a=0;
                                                                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter VALID CODMAN RIGHT"];
                                                                                                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                [alert show];
                                                                                                                                
                                                                                                                            }
                                                                                                                        }
                                                                                                                        
                                                                                                                        else
                                                                                                                        {
                                                                                                                            a=0;
                                                                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter VALID CODMAN LEFT"];
                                                                                                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                            [alert show];
                                                                                                                            
                                                                                                                        }
                                                                                                                    }
                                                                                                                    
                                                                                                                    else
                                                                                                                    {
                                                                                                                        a=0;
                                                                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter VALID YERGASON RIGHT"];
                                                                                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                        [alert show];
                                                                                                                        
                                                                                                                    }
                                                                                                                }
                                                                                                                
                                                                                                                else
                                                                                                                {
                                                                                                                    a=0;
                                                                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter VALID YERGASON LEFT"];
                                                                                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                    [alert show];
                                                                                                                    
                                                                                                                }
                                                                                                            }
                                                                                                            
                                                                                                            else
                                                                                                            {
                                                                                                                a=0;
                                                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter VALID DAWBARN RIGHT"];
                                                                                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                [alert show];
                                                                                                                
                                                                                                            }
                                                                                                        }
                                                                                                        
                                                                                                        else
                                                                                                        {
                                                                                                            a=0;
                                                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter VALID DAWBARN LEFT"];
                                                                                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                            [alert show];
                                                                                                            
                                                                                                        }
                                                                                                    }
                                                                                                    
                                                                                                    else
                                                                                                    {
                                                                                                        a=0;
                                                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter VALID PUSH RIGHT"];
                                                                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                        [alert show];
                                                                                                        
                                                                                                    }
                                                                                                }
                                                                                                
                                                                                                else
                                                                                                {
                                                                                                    a=0;
                                                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter VALID PUSH LEFT"];
                                                                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                    [alert show];
                                                                                                    
                                                                                                }
                                                                                            }
                                                                                            
                                                                                            else
                                                                                            {
                                                                                                a=0;
                                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter VALID SCRATCH RIGHT"];
                                                                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                [alert show];
                                                                                                
                                                                                            }
                                                                                        }
                                                                                        
                                                                                        else
                                                                                        {
                                                                                            a=0;
                                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter VALID SCRATCH LEFT"];
                                                                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                            [alert show];
                                                                                            
                                                                                        }
                                                                                    }
                                                                                    
                                                                                    else
                                                                                    {
                                                                                        a=0;
                                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter VALID SIGN RIGHT"];
                                                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                        [alert show];
                                                                                        
                                                                                    }
                                                                                }
                                                                                
                                                                                else
                                                                                {
                                                                                    a=0;
                                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter VALID SIGN LEFT"];
                                                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                    [alert show];
                                                                                    
                                                                                }
                                                                            }
                                                                            
                                                                            
                                                                            else
                                                                            {
                                                                                a=0;
                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter VALID CAN RIGHT"];
                                                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                [alert show];
                                                                                
                                                                            }
                                                                        }
                                                                        
                                                                        else
                                                                        {
                                                                            a=0;
                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter VALID CAN LEFT"];
                                                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                            [alert show];
                                                                            
                                                                        }
                                                                    }
                                                                    else
                                                                    {
                                                                        a=0;
                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter VALID EXTERNAL RIGHT"];
                                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                        [alert show];
                                                                        
                                                                    }
                                                                }
                                                                
                                                                else
                                                                {
                                                                    a=0;
                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter VALID EXTERNAL LEFT"];
                                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                    [alert show];
                                                                    
                                                                }
                                                            }
                                                            
                                                            
                                                            else
                                                            {
                                                                a=0;
                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter VALID INTERNAL RIGHT"];
                                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                [alert show];
                                                                
                                                            }
                                                        }
                                                        
                                                        else
                                                        {
                                                            a=0;
                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter VALID INTERNAL LEFT"];
                                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                            [alert show];
                                                            
                                                        }
                                                    }
                                                    
                                                    else
                                                    {
                                                        a=0;
                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter VALID ADDUCTION RIGHT"];
                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                        [alert show];
                                                        
                                                    }
                                                }
                                                
                                                else
                                                {
                                                    a=0;
                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter VALID ADDUCTION LEFT"];
                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                    [alert show];
                                                    
                                                }
                                            }
                                            
                                            else
                                            {
                                                a=0;
                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter VALID ABDUCTION RIGHT"];
                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                [alert show];
                                                
                                            }
                                        }
                                        
                                        else
                                        {
                                            a=0;
                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter VALID ABDUCTION LEFT"];
                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                            [alert show];
                                            
                                        }
                                    }
                                    
                                    else
                                    {
                                        a=0;
                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter VALID EXTENSION RIGHT"];
                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                        [alert show];
                                        
                                    }
                                }
                                
                                else
                                {
                                    a=0;
                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter VALID EXTENSION LEFT"];
                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                    [alert show];
                                    
                                }
                            }
                            
                            else
                            {
                                a=0;
                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter VALID FLEXION RIGHT"];
                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                [alert show];
                                
                            }
                        }
                        
                        else
                        {
                            a=0;
                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter VALID FLEXION LEFT"];
                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                            [alert show];
                            
                        }
                    }
                    else
                    {
                        a=0;
                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter VALID SWELLING/DISCOLORATION"];
                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                        [alert show];
                        
                    }
                }
                
                else
                {
                    a=0;
                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter VALID MUSCLE SYMMETRY"];
                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                    [alert show];
                    
                }
            }
            
            else
            {
                a=0;
                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter VALID DATE"];
                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                [alert show];
                
            }
        }
            else
            {
                a=0;
                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter  VALID PATIENT NAME"];
                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                [alert show];
                
            }
        }
        
   


    else
    {
        a=0;
        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter REQUIRED FIELDS"];
        [alert setDestructiveButtonWithTitle:@"x" block:nil];
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
    
    if([identifier isEqual:@"shoulder1"])
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
    
    if ([segue.identifier isEqualToString:@"shoulder1"])
    {
        
        shoulder1ViewController*destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        NSLog(@"recorddict in shoulder first %@",recorddict);
    }
    
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    aolabel=@"Excellent";
    pectoralisminorlabel=@"";
    teresmajorlabel=@"";
    teresminorlabel=@"";
    supraspinatuslabel=@"";
    infraspinatuslabel=@"";
    rhomboidslabel=@"";
    serratusantlabel=@"";
    trapeziuslabel=@"";
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
