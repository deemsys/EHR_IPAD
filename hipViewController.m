//
//  hipViewController.m
//  hip
//
//  Created by DeemsysInc on 4/18/14.
//  Copyright (c) 2014 DeemsysInc. All rights reserved.
//

#import "hipViewController.h"
#import "BlockAlertView.h"
#import "hip1ViewController.h"


@interface hipViewController ()

@end

@implementation hipViewController
@synthesize patientname;

@synthesize date;
@synthesize left;
@synthesize right;
@synthesize pelvic;
@synthesize ao;
@synthesize palpation;
@synthesize rangeofmotion;
@synthesize orthotesting;
@synthesize flexionleft;
@synthesize flexionright;
@synthesize extensionleft;
@synthesize extensionright;
@synthesize  abductionleft;
@synthesize abductionright;
@synthesize adductionleft;
@synthesize adductionright;
@synthesize internalleft;
@synthesize internalright;
@synthesize externalleft;
@synthesize externalright;
@synthesize patrickleft;
@synthesize patrickright;
@synthesize nachlasleft;
@synthesize nachlasright;
@synthesize  elyleft;
@synthesize elyright;
@synthesize yeomanleft;
@synthesize yeomanright;
@synthesize oberleft;
@synthesize oberright;
@synthesize hibbsleft;
@synthesize hibbsright;
@synthesize thomasleft;
@synthesize thomasright;
@synthesize neurological;
@synthesize l1left;
@synthesize l1right;
@synthesize l2left;
@synthesize l2right;
@synthesize l3left;
@synthesize l3right;
@synthesize l4left;
@synthesize l4right;
@synthesize l5left;
@synthesize l5right;
@synthesize s1left;
@synthesize s1right;
@synthesize ml1left;
@synthesize ml1right;
@synthesize ml2left;
@synthesize ml2right;
@synthesize ml3left;
@synthesize ml3right;
@synthesize ml4left;
@synthesize ml4right;
@synthesize ml5left;
@synthesize ml5right;
@synthesize ms1left;
@synthesize ms1right;
@synthesize recorddict;
@synthesize gait;
@synthesize palleft;
@synthesize palright;

-(BOOL)validateNames:(NSString *)country1
{
    NSString *countryFormat1 = @"(?:[A-Za-z]+[A-Za-z]*)";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateNumbers:(NSString*)number
{
    NSString *mobileFormat1 =  @"[0-9-_]{1,3}?";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *mobileTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", mobileFormat1];
    return [mobileTest1 evaluateWithObject:number];
    
}
-(BOOL)validateNumberslimit:(NSString*)number
{
    NSString *mobileFormat1 =  @"[0-5]{1}?";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *mobileTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", mobileFormat1];
    return [mobileTest1 evaluateWithObject:number];
    
}
-(BOOL)validateDate:(NSString *)country1
{
    NSString *countryFormat1 = @"[0-9]{2}+[/]+[0-9]{2}+[/]+[0-9]{4}";
    
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
- (IBAction)next:(id)sender {
     recorddict=[[NSMutableDictionary alloc]init];
   [recorddict addEntriesFromDictionary: recorddict];
    temp1 =[patientname.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp2 =[flexionleft.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp3 =[flexionright.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp4 =[externalleft.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp5 =[externalright.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp6=[extensionleft.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp7=[extensionright.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp8=[abductionleft.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp9=[abductionright.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp10=[adductionleft.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp11=[adductionright.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp12=[internalleft.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp13=[internalright.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp14=[patrickleft.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp15=[patrickright.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp16=[nachlasleft.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp17=[nachlasright.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp18=[elyleft.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp19=[elyright.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp20=[yeomanleft.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp21=[yeomanright.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp22=[oberleft.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp23=[oberright.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp24=[hibbsleft.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp25=[hibbsright.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp26=[thomasleft.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp27=[thomasright.text stringByReplacingOccurrencesOfString:@" " withString:@""];
//    temp28=[medialright.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp29=[l1left.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp30=[l1right.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp31=[l2left.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp32=[l2right.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp33=[l3left.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp34=[l3right.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp35=[l4left.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp36=[l4right.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp37=[s1left.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp38=[s1right.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp39=[ml1left.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp40=[ml1right.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp41=[ml2left.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp42=[ml2right.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp43=[ml3left.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp44=[ml3right.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp45=[ml4left.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp46=[ml4right.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp47=[ml5left.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp48=[ml5right.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp49=[ms1left.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp50=[ms1right.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp51=[l5left.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp52=[l5right.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    if(palpation.selected)
    {
        palpationlabel=@"palpation";
   
        }
    else
        palpationlabel=@"";
    if(rangeofmotion.selected)
    {
        rangeofmotionlabel=@"rangeofmotion";
    
        
    }
    else
        rangeofmotionlabel=@"";
    if(orthotesting.selected)
    {
        orthotestinglabel=@"orthotpedic testing";
      }
    else
        orthotestinglabel=@"";
    if(neurological.selected)
    {
        neurologicallabel=@"neurological";
    }
    else
        neurologicallabel=@"";
    if (palleft.selected) {
        [recorddict setValue:@"Palpation Left" forKey:@"palleft"];
        
    }
    else
    {
       [recorddict setValue:@" " forKey:@"palleft"];
    }
    if (palright.selected) {
        [recorddict setValue:@"Palpation Right" forKey:@"palright"];
        
    }
    else
    {
        [recorddict setValue:@" " forKey:@"palright"];
    }
    
    [recorddict setValue:@"" forKey:@"palpationleftother"];
    [recorddict setValue:@"" forKey:@"palpationrightother"];
    if(([temp1 length]!=0)&&([date.text length]!=0))
    {
        a=0;
        
        if ([self validateNames:[patientname text]]==1)
        {
            if ([self validateDate:date.text]==1)
            {
                if((([temp2 length]>0)&&([self validateNumbers:temp2]==1))||([temp2 length]==0))
                {
                    if((([temp3 length]>0)&&([self validateNumbers:temp3 ]==1))||([temp3 length]==0))
                    {
                        if((([temp4 length]>0)&&([self validateNumbers:temp4 ]==1))||([temp4 length]==0))
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
                                                        if((([temp12 length]>0)&&([self validateNumbers:temp12]==1))||([temp12 length]==0))
                                                        {
                                                            if((([temp13 length]>0)&&([self validateNumbers:temp13]==1))||([temp13 length]==0))
                                                            {
                                                                if((([temp14 length]>0)&&([self validateNumbers:temp14]==1))||([temp14 length]==0))
                                                                {
                                                                    if((([temp15 length]>0)&&([self validateNumbers:temp15]==1))||([temp15 length]==0))
                                                                    {
                                                                        if((([temp16 length]>0)&&([self validateNumbers:temp16]==1))||([temp16 length]==0))
                                                                        {
                                                                            if((([temp17 length]>0)&&([self validateNumbers:temp17]==1))||([temp17 length]==0))
                                                                            {
                                                                                if((([temp18 length]>0)&&([self validateNumbers:temp18]==1))||([temp18 length]==0))
                                                                                {
                                                                                    if((([temp19 length]>0)&&([self validateNumbers:temp19]==1))||([temp19 length]==0))
                                                                                    {
                                                                                        if((([temp20 length]>0)&&([self validateNumbers:temp20]==1))||([temp20 length]==0))
                                                                                        {
                                                                                            if((([temp21 length]>0)&&([self validateNumbers:temp21]==1))||([temp21 length]==0))
                                                                                            {
                                                                                                if((([temp22 length]>0)&&([self validateNumbers:temp22]==1))||([temp22 length]==0))
                                                                                                {
                                                                                                    if((([temp23 length]>0)&&([self validateNumbers:temp23 ]==1))||([temp23 length]==0))
                                                                                                    {
                                                                                                        if((([temp24 length]>0)&&([self validateNumbers:temp24]==1))||([temp24 length]==0))
                                                                                                        {
                                                                                                            if((([temp25 length]>0)&&([self validateNumbers:temp25 ]==1))||([temp25 length]==0))
                                                                                                            {
                                                                                                                if((([temp26 length]>0)&&([self validateNumbers:temp26 ]==1))||([temp26 length]==0))
                                                                                                                {
                                                                                                                    if((([temp27 length]>0)&&([self validateNumbers:temp27]==1))||([temp27 length]==0))
                                                                                                                    {
                                                                                                                        if((([temp28 length]>0)&&([self validateNumbers:temp28 ]==1))||([temp28 length]==0))
                                                                                                                        {
                                                                                                                            if((([temp29 length]>0)&&([self validateNumbers:temp29]==1))||([temp29 length]==0))
                                                                                                                            {
                                                                                                                                if((([temp30 length]>0)&&([self validateNumbers:temp30]==1))||([temp30 length]==0))
                                                                                                                                {
                                                                                                                                    if((([temp31 length]>0)&&([self validateNumbers:temp31]==1))||([temp31 length]==0))
                                                                                                                                    {
                                                                                                                                        if((([temp32 length]>0)&&([self validateNumbers:temp32 ]==1))||([temp32 length]==0))
                                                                                                                                        {
                                                                                                                                            if((([temp33 length]>0)&&([self validateNumbers:temp33]==1))||([temp33 length]==0))
                                                                                                                                            {
                                                                                                                                                if((([temp34 length]>0)&&([self validateNumbers:temp34 ]==1))||([temp34 length]==0))
                                                                                                                                                {
                                                                                                                                                    if((([temp35 length]>0)&&([self validateNumbers:temp35]==1))||([temp35 length]==0))
                                                                                                                                                    {
                                                                                                                                                        if((([temp36 length]>0)&&([self validateNumbers:temp36 ]==1))||([temp36 length]==0))
                                                                                                                                                        {
                                                                                                                                                            
                                                                                                                                                            if((([temp37 length]>0)&&([self validateNumbers:temp37 ]==1))||([temp37 length]==0))
                                                                                                                                                            {
                                                                                                                                                                
                                                                                                                                                                if((([temp38 length]>0)&&([self validateNumbers:temp38 ]==1))||([temp38 length]==0))
                                                                                                                                                                {
                                                                                                                                                                    
                                                                                                                                                                    if((([temp39 length]>0)&&([self validateNumberslimit:temp39 ]==1))||([temp39 length]==0))
                                                                                                                                                                    {
                                                                                                                                                                        
                                                                                                                                                                        if((([temp40 length]>0)&&([self validateNumberslimit:temp40 ]==1))||([temp40 length]==0))
                                                                                                                                                                        {
                                                                                                                                                                            
                                                                                                                                                                            if((([temp41 length]>0)&&([self validateNumberslimit:temp41]==1))||([temp41 length]==0))
                                                                                                                                                                            {
                                                                                                                                                                                if((([temp42 length]>0)&&([self validateNumberslimit:temp42]==1))||([temp42 length]==0))
                                                                                                                                                                                {
                                                                                                                                                                                    if((([temp43 length]>0)&&([self validateNumberslimit:temp43]==1))||([temp43 length]==0))
                                                                                                                                                                                    {
                                                                                                                                                                                        if((([temp44 length]>0)&&([self validateNumberslimit:temp44]==1))||([temp44 length]==0))
                                                                                                                                                                                        {
                                                                                                                                                                                            if((([temp45 length]>0)&&([self validateNumberslimit:temp45]==1))||([temp45 length]==0))
                                                                                                                                                                                            {
                                                                                                                                                                                                if((([temp46 length]>0)&&([self validateNumberslimit:temp46]==1))||([temp46 length]==0))
                                                                                                                                                                                                {
                                                                                                                                                                                                    if((([temp47 length]>0)&&([self validateNumberslimit:temp47]==1))||([temp47 length]==0))
                                                                                                                                                                                                    {
                                                                                                                                                                                                        if((([temp48 length]>0)&&([self validateNumberslimit:temp48]==1))||([temp48 length]==0))
                                                                                                                                                                                                        {
                                                                                                                                                                                                            if((([temp49 length]>0)&&([self validateNumberslimit:temp49]==1))||([temp49 length]==0))
                                                                                                                                                                                                            {
                                                                                                                                                                                                                if((([temp50 length]>0)&&([self validateNumberslimit:temp50]==1))||([temp50 length]==0))
                                                                                                                                                                                                                {
                                                                                                                                                                                                                    if((([temp51 length]>0)&&([self validateNumbers:temp51]==1))||([temp51 length]==0))
                                                                                                                                                                                                                    {
                                                                                                                                                                                                                        
                                                                                                                                                                                                                        if((([temp52 length]>0)&&([self validateNumbers:temp52]==1))||([temp52 length]==0))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                            [recorddict setValue:patientname.text forKey:@"patientname"];
                                                                                                                                                                                                                            [recorddict setValue:date.text forKey:@"date"];
                                                                                                                                                                                                                            [recorddict setValue:flexionleft.text forKey:@"flexionleft"];
                                                                                                                                                                                                                            [recorddict setValue:flexionright.text forKey:@"flexionright"];
                                                                                                                                                                                                                            [recorddict setValue:extensionleft.text forKey:@"extensionleft"];
                                                                                                                                                                                                                            [recorddict setValue:extensionright.text forKey:@"extensionright"];
                                                                                                                                                                                                                            [recorddict setValue:abductionleft.text forKey:@"abductionleft"];
                                                                                                                                                                                                                            [recorddict setValue:abductionright.text forKey:@"abdutionright"];
                                                                                                                                                                                                                            [recorddict setValue:adductionleft.text forKey:@"adductionleft"];
                                                                                                                                                                                                                            [recorddict setValue:adductionright.text forKey:@"adductionright"];
                                                                                                                                                                                                                            [recorddict setValue:internalleft.text forKey:@"internalleft"];
                                                                                                                                                                                                                            [recorddict setValue:internalright.text forKey:@"internalright"];
                                                                                                                                                                                                                            
                                                                                                                                                                                                                            [recorddict setValue:externalleft.text forKey:@"externalleft"];
                                                                                                                                                                                                                            [recorddict setValue:externalright.text forKey:@"externalright"];
                                                                                                                                                                                                                            [recorddict setValue:patrickleft.text forKey:@"patrickleft"];
                                                                                                                                                                                                                            [recorddict setValue:patrickright.text forKey:@"patrickright"];
                                                                                                                                                                                                                            
                                                                                                                                                                                                                            [recorddict setValue:nachlasleft.text forKey:@"nachlasleft"];
                                                                                                                                                                                                                            [recorddict setValue:nachlasright.text forKey:@"nachlasright"];
                                                                                                                                                                                                                            [recorddict setValue:elyleft.text forKey:@"elyleft"];
                                                                                                                                                                                                                            [recorddict setValue:elyright.text forKey:@"elyright"];
                                                                                                                                                                                                                            [recorddict setValue:yeomanleft.text forKey:@"yeomanleft"];
                                                                                                                                                                                                                            [recorddict setValue:yeomanright.text forKey:@"yeomanright"];
                                                                                                                                                                                                                            [recorddict setValue:oberleft.text forKey:@"oberleft"];
                                                                                                                                                                                                                            [recorddict setValue:oberright.text forKey:@"oberright"];
                                                                                                                                                                                                                            [recorddict setValue:hibbsleft.text forKey:@"hibbsleft"];
                                                                                                                                                                                                                            [recorddict setValue:hibbsright.text forKey:@"hibbsright"];
                                                                                                                                                                                                                            [recorddict setValue:thomasleft.text forKey:@"thomasleft"];
                                                                                                                                                                                                                            [recorddict setValue:thomasright.text forKey:@"thomasright"];
                                                                                                                                                                                                                            [recorddict setValue:l1left.text forKey:@"l1left"];
                                                                                                                                                                                                                            [recorddict setValue:l1right.text forKey:@"l1right"];
                                                                                                                                                                                                                            [recorddict setValue:l2left.text forKey:@"l2left"];
                                                                                                                                                                                                                            [recorddict setValue:l2right.text forKey:@"l2right"];
                                                                                                                                                                                                                            [recorddict setValue:l3left.text forKey:@"l3left"];
                                                                                                                                                                                                                            [recorddict setValue:l3right.text forKey:@"l3right"];
                                                                                                                                                                                                                            [recorddict setValue:l4left.text forKey:@"l4left"];
                                                                                                                                                                                                                            [recorddict setValue:l4right.text forKey:@"l4right"];
                                                                                                                                                                                                                            [recorddict setValue:l5left.text forKey:@"l5left"];
                                                                                                                                                                                                                            [recorddict setValue:l5right.text forKey:@"l5right"];
                                                                                                                                                                                                                            [recorddict setValue:s1left.text forKey:@"s1left"];
                                                                                                                                                                                                                            [recorddict setValue:s1right.text forKey:@"s1right"];
                                                                                                                                                                                                                            [recorddict setValue:ml1left.text forKey:@"ml1left"];
                                                                                                                                                                                                                            [recorddict setValue:ml1right.text forKey:@"ml1right"];
                                                                                                                                                                                                                            [recorddict setValue:ml2left.text forKey:@"ml2left"];
                                                                                                                                                                                                                            [recorddict setValue:ml2right.text forKey:@"ml2right"];
                                                                                                                                                                                                                            [recorddict setValue:ml3right.text forKey:@"ml3left"];
                                                                                                                                                                                                                            [recorddict setValue:ml3right.text forKey:@"ml3right"];
                                                                                                                                                                                                                            [recorddict setValue:ml4left.text forKey:@"ml4left"];
                                                                                                                                                                                                                            [recorddict setValue:ml4right.text forKey:@"ml4right"];
                                                                                                                                                                                                                            [recorddict setValue:ml5left.text forKey:@"ml5left"];
                                                                                                                                                                                                                            [recorddict setValue:ml5right.text forKey:@"ml5right"];
                                                                                                                                                                                                                            [recorddict setValue:ms1left.text forKey:@"ms1left"];
                                                                                                                                                                                                                            [recorddict setValue:ms1right.text forKey:@"ms1right"];
                                                                                                                                                                                                                            [recorddict setValue:gaitlabel forKey:@"gaitl"];
                                                                                                                                                                                                                            [recorddict setValue:pelviclabel forKey:@"pelvicl"];
                                                                                                                                                                                                                            [recorddict setValue:leftlabel forKey:@"left"];
                                                                                                                                                                                                                            [recorddict setValue:rightlabel forKey:@"right"];
                                                                                                                                                                                                                            [recorddict setValue:aolabel forKey:@"aol"];
                                                                                                                                                                                                                            [recorddict setValue:palpationlabel forKey:@"palpationlabel"];
                                                                                                                                                                                                                            [recorddict setValue:rangeofmotionlabel forKey:@"rangeofmotionlabel"];
                                                                                                                                                                                                                            [recorddict setValue:orthotestinglabel forKey:@"orthotestinglabel"];
                                                                                                                                                                                                                            [recorddict setValue:neurologicallabel forKey:@"neurologicallabel"];
                                                                                                                                                                                                                            [recorddict setValue:leftother.text forKey:@"palpationleftother"];
                                                                                                                                                                                                                            [recorddict setValue:rightother.text forKey:@"palpationrightother"];
                                                                                                                                                                                                                            
                                                                                                                                                                                                                            
                                                                                                                                                                                                                            NSLog(@"success!!!recorddict %@",recorddict);
                                                                                                                                                                                                                            
                                                                                                                                                                                                                            
                                                                                                                                                                                                                            
                                                                                                                                                                                                                            a=1;
                                                                                                                                                                                                                            
                                                                                                                                                                                                                            
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                            a=0;
                                                                                                                                                                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid l5 right field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                                                                                                            [alert show];
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                    }
                                                                                                                                                                                                                    else
                                                                                                                                                                                                                    {
                                                                                                                                                                                                                        a=0;
                                                                                                                                                                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid l5 left field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                                                                                                        [alert show];
                                                                                                                                                                                                                    }
                                                                                                                                                                                                                    
                                                                                                                                                                                                                }
                                                                                                                                                                                                                else
                                                                                                                                                                                                                {
                                                                                                                                                                                                                    a=0;
                                                                                                                                                                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid ms1 right field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                                                                                                    [alert show];
                                                                                                                                                                                                                }
                                                                                                                                                                                                                
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                                a=0;
                                                                                                                                                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid ms1 left field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                                                                                                [alert show];
                                                                                                                                                                                                            }
                                                                                                                                                                                                            
                                                                                                                                                                                                        }
                                                                                                                                                                                                        else
                                                                                                                                                                                                        {
                                                                                                                                                                                                            a=0;
                                                                                                                                                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid ml5 right field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                                                                                            [alert show];
                                                                                                                                                                                                        }
                                                                                                                                                                                                        
                                                                                                                                                                                                    }
                                                                                                                                                                                                    
                                                                                                                                                                                                    else
                                                                                                                                                                                                    {
                                                                                                                                                                                                        a=0;
                                                                                                                                                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid ml5 left field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                                                                                        [alert show];
                                                                                                                                                                                                    }
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                    a=0;
                                                                                                                                                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid ml4 right field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                                                                                    [alert show];
                                                                                                                                                                                                }
                                                                                                                                                                                                
                                                                                                                                                                                            }
                                                                                                                                                                                            else
                                                                                                                                                                                            {
                                                                                                                                                                                                a=0;
                                                                                                                                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid ml4 left field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                                                                                [alert show];
                                                                                                                                                                                            }
                                                                                                                                                                                            
                                                                                                                                                                                        }
                                                                                                                                                                                        else
                                                                                                                                                                                        {
                                                                                                                                                                                            a=0;
                                                                                                                                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid ml3 right field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                                                                            [alert show];
                                                                                                                                                                                        }
                                                                                                                                                                                        
                                                                                                                                                                                        
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                        a=0;
                                                                                                                                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid ml3 left field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                                                                        [alert show];
                                                                                                                                                                                    }
                                                                                                                                                                                    
                                                                                                                                                                                }
                                                                                                                                                                                else
                                                                                                                                                                                {
                                                                                                                                                                                    a=0;
                                                                                                                                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid ml2 right field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                                                                    [alert show];
                                                                                                                                                                                }
                                                                                                                                                                                
                                                                                                                                                                            }
                                                                                                                                                                            else
                                                                                                                                                                            {
                                                                                                                                                                                a=0;
                                                                                                                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid ml2 left field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                                                                [alert show];
                                                                                                                                                                            }
                                                                                                                                                                            
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                            a=0;
                                                                                                                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid ml1 right field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                                                            [alert show];
                                                                                                                                                                        }
                                                                                                                                                                        
                                                                                                                                                                        
                                                                                                                                                                    }
                                                                                                                                                                    else
                                                                                                                                                                    {
                                                                                                                                                                        a=0;
                                                                                                                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid ml1 left field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                                                        [alert show];
                                                                                                                                                                    }
                                                                                                                                                                    
                                                                                                                                                                    
                                                                                                                                                                }
                                                                                                                                                                else
                                                                                                                                                                {
                                                                                                                                                                    a=0;
                                                                                                                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid s1 right field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                                                    [alert show];
                                                                                                                                                                }
                                                                                                                                                                
                                                                                                                                                                
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                                a=0;
                                                                                                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid s1 left field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                                                [alert show];
                                                                                                                                                            }
                                                                                                                                                            
                                                                                                                                                            
                                                                                                                                                        }
                                                                                                                                                        else
                                                                                                                                                        {
                                                                                                                                                            a=0;
                                                                                                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid L4 right field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                                            [alert show];
                                                                                                                                                        }
                                                                                                                                                        
                                                                                                                                                    }
                                                                                                                                                    else
                                                                                                                                                    {
                                                                                                                                                        a=0;
                                                                                                                                                        
                                                                                                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid L4 left field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                                        [alert show];
                                                                                                                                                    }
                                                                                                                                                    
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                    a=0;
                                                                                                                                                    
                                                                                                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid L3 right field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                                    [alert show];
                                                                                                                                                }
                                                                                                                                                
                                                                                                                                            }
                                                                                                                                            else
                                                                                                                                            {
                                                                                                                                                a=0;
                                                                                                                                                
                                                                                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid L3 left field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                                [alert show];
                                                                                                                                            }
                                                                                                                                            
                                                                                                                                        }
                                                                                                                                        else
                                                                                                                                        {
                                                                                                                                            a=0;
                                                                                                                                            
                                                                                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid L2 right field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                            [alert show];
                                                                                                                                        }
                                                                                                                                        
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                        a=0;
                                                                                                                                        
                                                                                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid L2 left field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                        [alert show];
                                                                                                                                    }
                                                                                                                                    
                                                                                                                                }
                                                                                                                                else
                                                                                                                                {
                                                                                                                                    a=0;
                                                                                                                                    
                                                                                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid L1 right field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                    [alert show];
                                                                                                                                }
                                                                                                                                
                                                                                                                            }
                                                                                                                            else
                                                                                                                            {
                                                                                                                                a=0;
                                                                                                                                
                                                                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid L1 left field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                [alert show];
                                                                                                                            }
                                                                                                                            
                                                                                                                            
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                            a=0;
                                                                                                                            
                                                                                                                        }
                                                                                                                        
                                                                                                                    }
                                                                                                                    else
                                                                                                                    {
                                                                                                                        a=0;
                                                                                                                        
                                                                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid Thomas right field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                        [alert show];
                                                                                                                    }
                                                                                                                }
                                                                                                                else
                                                                                                                {
                                                                                                                    a=0;
                                                                                                                    
                                                                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid thomas left field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                    [alert show];
                                                                                                                }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                                a=0;
                                                                                                                
                                                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid hibbs right field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                [alert show];
                                                                                                            }
                                                                                                        }
                                                                                                        else
                                                                                                        {
                                                                                                            a=0;
                                                                                                            
                                                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid hibbs left field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                            [alert show];
                                                                                                        }
                                                                                                    }
                                                                                                    else
                                                                                                    {
                                                                                                        a=0;
                                                                                                        
                                                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid ober right field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                        [alert show];
                                                                                                    }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                    a=0;
                                                                                                    
                                                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid ober left field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                    [alert show];
                                                                                                }
                                                                                            }
                                                                                            else
                                                                                            {
                                                                                                a=0;
                                                                                                
                                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid yeoman right field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                [alert show];
                                                                                            }
                                                                                        }
                                                                                        else
                                                                                        {
                                                                                            a=0;
                                                                                            
                                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid yeoman left field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                            [alert show];
                                                                                        }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                        a=0;
                                                                                        
                                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid ely right field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                        [alert show];
                                                                                    }
                                                                                }
                                                                                else
                                                                                {
                                                                                    a=0;
                                                                                    
                                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid ely left field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                    [alert show];
                                                                                }
                                                                            }
                                                                            else
                                                                            {
                                                                                a=0;
                                                                                
                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid nachlas right field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                [alert show];
                                                                            }
                                                                        }
                                                                        else
                                                                        {
                                                                            a=0;
                                                                            
                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid nachlas left field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                            [alert show];
                                                                        }
                                                                    }
                                                                    else
                                                                    {
                                                                        a=0;
                                                                        
                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid Patrick right field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                        [alert show];
                                                                    }
                                                                }
                                                                else
                                                                {
                                                                    a=0;
                                                                    
                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid Patrick left field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                    [alert show];
                                                                }
                                                            }
                                                            else
                                                            {
                                                                a=0;
                                                                
                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter internal right field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                [alert show];
                                                            }
                                                        }
                                                        else
                                                        {
                                                            a=0;
                                                            
                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid internal left field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                            [alert show];
                                                        }
                                                        
                                                    }
                                                    else
                                                    {
                                                        a=0;
                                                        
                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid adduction right field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                        [alert show];
                                                    }
                                                    
                                                }
                                                else
                                                {
                                                    a=0;
                                                    
                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid adduction left field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                    [alert show];
                                                }
                                                
                                            }
                                            else
                                            {
                                                a=0;
                                                
                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid abduction right  field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                [alert show];
                                            }
                                            
                                        }
                                        else
                                        {
                                            a=0;
                                            
                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid abduction left field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                            [alert show];
                                        }
                                        
                                    }
                                    else
                                    {
                                        a=0;
                                        
                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid extension right field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                        [alert show];
                                    }
                                    
                                }
                                else
                                {
                                    a=0;
                                    
                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid extension left field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                    [alert show];
                                }
                                
                            }
                            else
                            {
                                a=0;
                                
                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid external right field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                [alert show];
                            }
                            
                        }
                        else
                        {
                            a=0;
                            
                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid external left field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                            [alert show];
                        }
                        
                    }
                    else
                    {
                        a=0;
                        
                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid flexion right field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                        [alert show];
                    }
                    
                }
                else
                {
                    a=0;
                    
                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid flexion left field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                    [alert show];
                }
                
            }
            
            else
            {
                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid date."];
                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                [alert show];
            }
            
        }
        else
        {
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Patient Name."];
            [alert setDestructiveButtonWithTitle:@"x" block:nil];
            [alert show];
            
        }
        
    }
    else
    {
        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter all the records."];
        [alert setDestructiveButtonWithTitle:@"x" block:nil];
        [alert show];
        
    }
    
        if(a ==1)
        {
            [self performSegueWithIdentifier:@"hip1" sender:self];
        }
        
    }

- (IBAction)pelvic:(id)sender
{
    if ([sender selectedSegmentIndex]==0)
    {
        pelviclabel=@"None                                                                                                                                                                                                                                                                                                                                                      ";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        pelviclabel=@"Crest Right";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        pelviclabel=@"Crest Left";
    }

}

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
    
- (IBAction)gait:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        gaitlabel=@"Normal";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        gaitlabel=@"Antalogic";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        gaitlabel=@"Shuffling";
    }
    if ([sender selectedSegmentIndex]==3)
    {
        gaitlabel=@"Limp";
    }
    if ([sender selectedSegmentIndex]==4)
    {
        gaitlabel=@"Stagger";
    }
    if ([sender selectedSegmentIndex]==5)
    {
        gaitlabel=@"Cane assisted";
    }
    if ([sender selectedSegmentIndex]==6)
    {
        gaitlabel=@"Wheelchair";
    }
    
 

    
}
- (IBAction)left:(id)sender {
    leftother.hidden=YES;
    if ([sender selectedSegmentIndex]==0)
    {
        leftlabel=@"1/8";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        leftlabel=@"1/4";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        leftlabel=@"3/8";
    }
    if ([sender selectedSegmentIndex]==3)
    {
        leftlabel=@"1/2";
    }
    if ([sender selectedSegmentIndex]==4)
    {
        leftlabel=@"5/8";
    }
    if ([sender selectedSegmentIndex]==5)
    {
        leftlabel=@"3/4";
    }
    if ([sender selectedSegmentIndex]==6)
    {
        leftlabel=@"7/8";
    }
    if ([sender selectedSegmentIndex]==7)
    {
        leftlabel=@"1";
    }
    if ([sender selectedSegmentIndex]==8)
    {
        leftlabel=@"Other";
         leftother.hidden=NO;
    }
    else
    {
        leftother.hidden=YES;
    }
    
    

    
}
- (IBAction)right:(id)sender {
    rightother.hidden=YES;
    if ([sender selectedSegmentIndex]==0)
    {
        rightlabel=@"1/8";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        rightlabel=@"1/4";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        rightlabel=@"3/8";
    }
    if ([sender selectedSegmentIndex]==3)
    {
        rightlabel=@"1/2";
    }
    if ([sender selectedSegmentIndex]==4)
    {
        rightlabel=@"5/8";
    }
    if ([sender selectedSegmentIndex]==5)
    {
        rightlabel=@"3/4";
    }
    if ([sender selectedSegmentIndex]==6)
    {
        rightlabel=@"7/8";
    }
    if ([sender selectedSegmentIndex]==7)
    {
        rightlabel=@"1";
    }
    if ([sender selectedSegmentIndex]==8)
    {
        rightlabel=@"Other";
        rightother.hidden=NO;
        
    }
    else
    {
        rightother.hidden=YES;
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
    if (palleft.selected) {
        left.hidden=NO;
    }
    else
    {
        left.hidden=YES;
    }
    if (palright.selected) {
        right.hidden=NO;
    }
    else
    {
        right.hidden=YES;
    }
    
    
    
    
}
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    
    //NSLog(@"identifier %@",identifier);
    if([identifier isEqual:@"hip1"])
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
    
    
    if ([segue.identifier isEqualToString:@"hip1"])
    {
        
        
        hip1ViewController *destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        NSLog(@"recorddict in hip%@",recorddict);
        // destViewController.delegate=self;
        
    }
}




    


- (void)viewDidLoad
{
    [super viewDidLoad];
    recorddict=[[NSMutableDictionary alloc]init];
    pelviclabel=@"None";
    aolabel=@"Excellent";
    gaitlabel=@"Normal";
    leftlabel=@"1/8";
    rightlabel=@"1/8";
    
}
   - (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    
    [super dealloc];
    [left release];
    [right release];
    [leftother release];
    [rightother release];
   
    [palleft release];
    [palright release];

}
@end
