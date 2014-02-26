//
//  footViewController.m
//  foot
//
//  Created by DeemsysInc on 2/19/14.
//  Copyright (c) 2014 DeemsysInc. All rights reserved.
//

#import "footViewController.h"
#import "BlockAlertView.h"
#import "foot1ViewController.h"

@interface footViewController ()


@end

@implementation footViewController
@synthesize patientname;
@synthesize date;

@synthesize ao;
@synthesize pronation;
@synthesize supination;
@synthesize forefoot;
@synthesize varus;
@synthesize valgus;
@synthesize forefootvalgus;
@synthesize palpation;
@synthesize rangeofmotion;
@synthesize orthotesting;
@synthesize flexionleft;
@synthesize flexionright;
@synthesize dorsiflexionleft;
@synthesize dorsiflexionright;
@synthesize inversionright;
@synthesize inversionleft;
@synthesize eversionleft;
@synthesize eversionright;
@synthesize greatextensionleft;
@synthesize greatextensionright;
@synthesize greatflexionleft;
@synthesize greatflexionright;
@synthesize tinelleft;
@synthesize tinelright;
@synthesize achillesleft;
@synthesize achillesright;
@synthesize longleft;
@synthesize longright;
@synthesize thompsonleft;
@synthesize thompsonright;
@synthesize drawerleft;
@synthesize drawerright;
@synthesize lateralleft;
@synthesize lateralright;
@synthesize medialleft;
@synthesize medialright;
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
@synthesize muscletf;
@synthesize swellingtf;
@synthesize notes;

-(BOOL)validateNames:(NSString *)country1
{
    NSString *countryFormat1 = @"(?:[A-Za-z]+[A-Za-z]*)";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateNumbers:(NSString*)number
{
    NSString *mobileFormat1 =  @"[0-9_-]{1,3}?";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *mobileTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", mobileFormat1];
    return [mobileTest1 evaluateWithObject:number];
    
}
-(BOOL)validateNumberlimit:(NSString *)country1
{
    NSString *countryFormat1 = @"[0-5]{1}";
    
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
- (IBAction)next:(id)sender {
    
    recorddict=[[NSMutableDictionary alloc]init];
    //    [recorddict addEntriesFromDictionary: recorddict];
    forward.text=@"hello";
    temp1 =[patientname.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp2 =[flexionleft.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp3 =[flexionright.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp4 =[muscletf.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp5 =[dorsiflexionleft.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp6=[dorsiflexionright.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp7=[inversionleft.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp8=[inversionright.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp9=[eversionleft.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp10=[eversionright.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp11=[greatextensionleft.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp12=[greatextensionright.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp13=[greatflexionleft.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp14=[greatflexionright.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp15=[tinelleft.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp16=[tinelright.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp17=[achillesleft.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp18=[achillesright.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp19=[longleft.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp20=[longright.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp21=[thompsonleft.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp22=[thompsonright.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp23=[drawerleft.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp24=[drawerright.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp25=[lateralleft.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp26=[lateralright.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp27=[medialleft.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp28=[medialright.text stringByReplacingOccurrencesOfString:@" " withString:@""];
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
    temp51=[swellingtf.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    if(palpation.selected)
    {
        palpationlabel=@"palpation";
        
    }
    else
        palpationlabel=NULL;
    if(rangeofmotion.selected)
    {
        rangeofmotionlabel=@"rangeofmotion";
        
        
    }
    else
        palpationlabel=NULL;
    if(orthotesting.selected)
    {
        orthotestinglabel=@"orthotpedic testing";
    }
    else
        orthotestinglabel=NULL;
    if(neurological.selected)
    {
        neurologicallabel=@"neurological";
    }
    else
        neurologicallabel=NULL;
    
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
                        if((([temp4 length]>0)&&([self validateNames:temp4 ]==1))||([temp4 length]==0))
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
                                                                                                                                                                    
                                                                                                                                                                    if((([temp39 length]>0)&&([self validateNumberlimit:temp39 ]==1))||([temp39 length]==0))
                                                                                                                                                                    {
                                                                                                                                                                        
                                                                                                                                                                        if((([temp40 length]>0)&&([self validateNumberlimit:temp40 ]==1))||([temp40 length]==0))
                                                                                                                                                                        {
                                                                                                                                                                            
                                                                                                                                                                            if((([temp41 length]>0)&&([self validateNumberlimit:temp41]==1))||([temp41 length]==0))
                                                                                                                                                                            {
                                                                                                                                                                                if((([temp42 length]>0)&&([self validateNumberlimit:temp42]==1))||([temp42 length]==0))
                                                                                                                                                                                {
                                                                                                                                                                                    if((([temp43 length]>0)&&([self validateNumberlimit:temp43]==1))||([temp43 length]==0))
                                                                                                                                                                                    {
                                                                                                                                                                                        if((([temp44 length]>0)&&([self validateNumberlimit:temp44]==1))||([temp44 length]==0))
                                                                                                                                                                                        {
                                                                                                                                                                                            if((([temp45 length]>0)&&([self validateNumberlimit:temp45]==1))||([temp45 length]==0))
                                                                                                                                                                                            {
                                                                                                                                                                                                if((([temp46 length]>0)&&([self validateNumberlimit:temp46]==1))||([temp46 length]==0))
                                                                                                                                                                                                {
                                                                                                                                                                                                    if((([temp47 length]>0)&&([self validateNumberlimit:temp47]==1))||([temp47 length]==0))
                                                                                                                                                                                                    {
                                                                                                                                                                                                        if((([temp48 length]>0)&&([self validateNumberlimit:temp48]==1))||([temp48 length]==0))
                                                                                                                                                                                                        {
                                                                                                                                                                                                            if((([temp49 length]>0)&&([self validateNumberlimit:temp49]==1))||([temp49 length]==0))
                                                                                                                                                                                                            {
                                                                                                                                                                                                                if((([temp50 length]>0)&&([self validateNumberlimit:temp50]==1))||([temp50 length]==0))
                                                                                                                                                                                                                {
                                                                                                                                                                                                                     if((([temp51 length]>0)&&([self validateNames:temp51 ]==1))||([temp51 length]==0))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                    [recorddict setValue:patientname.text forKey:@"patientname"];
                                                                                                                                                                                                                    [recorddict setValue:date.text forKey:@"date"];
                                                                                                                                                                                                                    [recorddict setValue:flexionleft.text forKey:@"flexionleft"];
                                                                                                                                                                                                                    [recorddict setValue:flexionright.text forKey:@"flexionright"];
                                                                                                                                                                                                                    [recorddict setValue:dorsiflexionleft.text forKey:@"dorsiflexionleft"];
                                                                                                                                                                                                                    [recorddict setValue:dorsiflexionright.text forKey:@"dorsiflexionright"];
                                                                                                                                                                                                                    [recorddict setValue:inversionleft.text forKey:@"inversionleft"];
                                                                                                                                                                                                                    [recorddict setValue:inversionright.text forKey:@"inversionright"];
                                                                                                                                                                                                                    [recorddict setValue:eversionleft.text forKey:@"eversionleft"];
                                                                                                                                                                                                                    [recorddict setValue:eversionright.text forKey:@"eversionright"];
                                                                                                                                                                                                                    [recorddict setValue:greatextensionleft.text forKey:@"greatextensionleft"];
                                                                                                                                                                                                                    [recorddict setValue:greatextensionright.text forKey:@"greatextensionright"];
                                                                                                                                                                                                                    
                                                                                                                                                                                                                    [recorddict setValue:greatflexionleft.text forKey:@"greatflexionleft"];
                                                                                                                                                                                                                    [recorddict setValue:greatflexionright.text forKey:@"greatflexionright"];
                                                                                                                                                                                                                    [recorddict setValue:tinelleft.text forKey:@"tinelleft"];
                                                                                                                                                                                                                    [recorddict setValue:tinelright.text forKey:@"tinelright"];
                                                                                                                                                                                                                    
                                                                                                                                                                                                                    [recorddict setValue:achillesleft.text forKey:@"achillesleft"];
                                                                                                                                                                                                                    [recorddict setValue:achillesright.text forKey:@"achillesright"];
                                                                                                                                                                                                                    [recorddict setValue:longleft.text forKey:@"longleft"];
                                                                                                                                                                                                                    [recorddict setValue:longright.text forKey:@"longright"];
                                                                                                                                                                                                                    [recorddict setValue:thompsonleft.text forKey:@"thompsonleft"];
                                                                                                                                                                                                                    [recorddict setValue:thompsonright.text forKey:@"thompsonright"];
                                                                                                                                                                                                                    [recorddict setValue:drawerleft.text forKey:@"drawerleft"];
                                                                                                                                                                                                                    [recorddict setValue:drawerright.text forKey:@"drawerright"];
                                                                                                                                                                                                                    [recorddict setValue:lateralleft.text forKey:@"lateralleft"];
                                                                                                                                                                                                                    [recorddict setValue:lateralright.text forKey:@"lateralright"];
                                                                                                                                                                                                                    [recorddict setValue:medialleft.text forKey:@"medialleft"];
                                                                                                                                                                                                                    [recorddict setValue:medialright.text forKey:@"medialright"];
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
                                                                                                                                                                                                                    [recorddict setValue:ml3left.text forKey:@"ml2right"];
                                                                                                                                                                                                                    [recorddict setValue:ml3right.text forKey:@"ml3left"];
                                                                                                                                                                                                                    [recorddict setValue:ml3right.text forKey:@"ml3right"];
                                                                                                                                                                                                                    [recorddict setValue:ml4left.text forKey:@"ml4left"];
                                                                                                                                                                                                                    [recorddict setValue:ml4right.text forKey:@"ml4right"];
                                                                                                                                                                                                                    [recorddict setValue:ml5left.text forKey:@"ml5left"];
                                                                                                                                                                                                                    [recorddict setValue:ml5right.text forKey:@"ml5right"];
                                                                                                                                                                                                                    [recorddict setValue:ms1left.text forKey:@"ms1left"];
                                                                                                                                                                                                                    [recorddict setValue:ms1right.text forKey:@"ms1right"];
                                                                                                                                                                                                                    [recorddict setValue:gaitlabel forKey:@"gaitll"];
                                                                                                                                                                                                                    [recorddict setValue:muscletf.text forKey:@"muscletf"];
                                                                                                                                                                                                                    [recorddict setValue:swellingtf.text forKey:@"swelling"];
                                                                                                                                                                                                                    
                                                                                                                                                                                                                    [recorddict setValue:aolabel forKey:@"aoll"];
                                                                                                                                                                                                                    [recorddict setValue:palpationlabel forKey:@"palpationlabel"];
                                                                                                                                                                                                                    [recorddict setValue:rangeofmotionlabel forKey:@"rangeofmotionlabel"];
                                                                                                                                                                                                                    [recorddict setValue:orthotestinglabel forKey:@"orthotestinglabel"];
                                                                                                                                                                                                                    [recorddict setValue:neurologicallabel forKey:@"neurologicallabel"];
                                                                                                                                                                                                                    [recorddict setValue:pronationlabel forKey:@"pronationl"];
                                                                                                                                                                                                                    [recorddict setValue:supinationlabel forKey:@"supinationl"];
                                                                                                                                                                                                                    [recorddict setValue:forefootlabel forKey:@"forefootl"];
                                                                                                                                                                                                                    [recorddict setValue:varuslabel forKey:@"varusl"];
                                                                                                                                                                                                                    [recorddict setValue:valguslabel forKey:@"valgusl"];
                                                                                                                                                                                                                    [recorddict setValue:forefootvalguslabel forKey:@"forefootvalgusl"];
                                                            [recorddict setValue:notes
                                                             .text forKey:@"notesfield"];
                                                                                                                                                                                                                    a=1;                                                                                                NSLog(@"success!!!recorddict %@",recorddict);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                    else
                                                                                                                                                                                                                    {
                                                                                                                                                                                                                        a=0;
                                                                                                                                                                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid swelling field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
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
                                                                                                                            
                                                                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid medial right field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                            [alert show];
                                                                                                                        }
                                                                                                                        
                                                                                                                    }
                                                                                                                    else
                                                                                                                    {
                                                                                                                        a=0;
                                                                                                                        
                                                                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid medial left field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                        [alert show];
                                                                                                                    }
                                                                                                                }
                                                                                                                else
                                                                                                                {
                                                                                                                    a=0;
                                                                                                                    
                                                                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid lateral right field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                    [alert show];
                                                                                                                }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                                a=0;
                                                                                                                
                                                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid lateral left field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                [alert show];
                                                                                                            }
                                                                                                        }
                                                                                                        else
                                                                                                        {
                                                                                                            a=0;
                                                                                                            
                                                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid drawer right field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                            [alert show];
                                                                                                        }
                                                                                                    }
                                                                                                    else
                                                                                                    {
                                                                                                        a=0;
                                                                                                        
                                                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid drawer left."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                        [alert show];
                                                                                                    }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                    a=0;
                                                                                                    
                                                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid Thompson right field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                    [alert show];
                                                                                                }
                                                                                            }
                                                                                            else
                                                                                            {
                                                                                                a=0;
                                                                                                
                                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid thompson left field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                [alert show];
                                                                                            }
                                                                                        }
                                                                                        else
                                                                                        {
                                                                                            a=0;
                                                                                            
                                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid long right field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                            [alert show];
                                                                                        }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                        a=0;
                                                                                        
                                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid long left field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                        [alert show];
                                                                                    }
                                                                                }
                                                                                else
                                                                                {
                                                                                    a=0;
                                                                                    
                                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid achilles right c6-7 field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                    [alert show];
                                                                                }
                                                                            }
                                                                            else
                                                                            {
                                                                                a=0;
                                                                                
                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid achilles left field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                [alert show];
                                                                            }
                                                                        }
                                                                        else
                                                                        {
                                                                            a=0;
                                                                            
                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid tinel right field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                            [alert show];
                                                                        }
                                                                    }
                                                                    else
                                                                    {
                                                                        a=0;
                                                                        
                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid tinel left field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                        [alert show];
                                                                    }
                                                                }
                                                                else
                                                                {
                                                                    a=0;
                                                                    
                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid greatflexion right field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                    [alert show];
                                                                }
                                                            }
                                                            else
                                                            {
                                                                a=0;
                                                                
                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid greatflexion left field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                [alert show];
                                                            }
                                                        }
                                                        else
                                                        {
                                                            a=0;
                                                            
                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid great extension right field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                            [alert show];
                                                        }
                                                        
                                                    }
                                                    else
                                                    {
                                                        a=0;
                                                        
                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid great extension left field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                        [alert show];
                                                    }
                                                    
                                                }
                                                else
                                                {
                                                    a=0;
                                                    
                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid eversion right field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                    [alert show];
                                                }
                                                
                                            }
                                            else
                                            {
                                                a=0;
                                                
                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid eversion left  field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                [alert show];
                                            }
                                            
                                        }
                                        else
                                        {
                                            a=0;
                                            
                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid inversion right field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                            [alert show];
                                        }
                                        
                                    }
                                    else
                                    {
                                        a=0;
                                        
                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid inversion left field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                        [alert show];
                                    }
                                    
                                }
                                else
                                {
                                    a=0;
                                    
                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid dorsiflexionright field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                    [alert show];
                                }
                                
                            }
                            else
                            {
                                a=0;
                                
                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid dorsiflexionleft field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                [alert show];
                            }
                            
                        }
                        else
                        {
                            a=0;
                            
                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid muscle field."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
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
    if (a==1) {
        [self performSegueWithIdentifier:@"foot1" sender:self];
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
- (IBAction)pronation:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        pronationlabel=@"Left";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        pronationlabel=@"Right";
    }
    
}
- (IBAction)supination:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        supinationlabel=@"Left";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        supinationlabel=@"Right";
    }
}
- (IBAction)forefoot:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        forefootlabel=@"Left";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        forefootlabel=@"Right";
    }
}
- (IBAction)varus:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        varuslabel=@"Left";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        varuslabel=@"Right";
    }
}
- (IBAction)valgus:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        valguslabel=@"Left";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        valguslabel=@"Right";
    }
}
- (IBAction)forefootvalgus:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        forefootvalguslabel=@"Left";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        forefootvalguslabel=@"Right";
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
    
}

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    
    //NSLog(@"identifier %@",identifier);
    if([identifier isEqual:@"foot1"])
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
    
    
    if ([segue.identifier isEqualToString:@"foot1"])
    {
        
        
        foot1ViewController *destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        NSLog(@"recorddict in foot%@",recorddict);
        // destViewController.delegate=self;
        
    }
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    gaitlabel=@"Normal";
    aolabel=@"Excellent";
    pronationlabel=@"";
    supinationlabel=@"";
    forefootlabel=@"";
    
    varuslabel=@"";
    valguslabel=@"";
    forefootvalguslabel=@"";
    //     NSLog(@"recorddict in foot1%@",recorddict);
    
	// Do any additional setup after loading the view, typically from a nib.
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
