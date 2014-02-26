//
//  duties2ViewController.m
//  duties2
//
//  Created by Admin on 04/02/14.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//

#import "duties2ViewController.h"
#import "BlockAlertView.h"

@interface duties2ViewController ()


@end

@implementation duties2ViewController

@synthesize patientname;
@synthesize date;
@synthesize jobdescription;
@synthesize other;
@synthesize other1;
@synthesize other2;
@synthesize other3;
@synthesize other4;
@synthesize other5;
@synthesize other6;
@synthesize other7;
@synthesize recorddict;


-(BOOL)validateNames:(NSString *)country1
{
    NSString *countryFormat1 =@"(?:[A-Za-z]+[A-Za-z]*)";
    // [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateDate:(NSString *)dates
{
    NSString *DateFormat1 = @"[0-9]{1,2}+[-]+[0-9]{1,2}+[-]+[0-9]{4}";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *datesTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", DateFormat1];
    return [datesTest1 evaluateWithObject:dates];
    
}
-(IBAction)checkboxSelected:(UIButton*)sender {
    sender.selected = !sender.selected;
    if(sender.selected){
        [sender setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
    }
    else{
        [sender setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    }
    
}
- (IBAction)cancel:(id)sender {
       for (UIView *subview in [self.view subviews])
        if([subview isKindOfClass:[UITextField class]])
            [(UITextField*)subview setText:@""];
   

}



- (IBAction)save:(id)sender

{
    c=1;
    
    recorddict=[[NSMutableDictionary alloc]init];
    //[recorddict addEntriesFromDictionary:recorddict];
    selectedcheckbox=[[NSMutableArray alloc]init];
    
  
    
    if(button1.selected)
    {
        work_lifting.text=@"work_lifting";
        [selectedcheckbox addObject:@"work_lifting"];
        
    }
    else
    {
        work_lifting.text=NULL;
    }
    if(button2.selected)
    {
        wo_bending.text=@"work_bending";
        [selectedcheckbox addObject:@"work_bending"];
        
    }
    else
    {
        wo_bending.text=NULL;
    }
    if(button3.selected)
    {
        wo_sitting.text=@"work_sitting";
        [selectedcheckbox addObject:@"work_sitting"];
        
    }
    else
    {
        wo_sitting.text=NULL;
    }
    if(button4.selected)
    {
        wo_walking.text=@"work_walking";
        [selectedcheckbox addObject:@"work_walking"];
        
    }
    else
    {
        wo_walking.text=NULL;
    }
    if(button5.selected)
    {
        wo_computerduties.text=@"work_computer duties";
        [selectedcheckbox addObject:@"work_computer duties"];
        
    }
    else
    {
        wo_computerduties.text=NULL;
    }
    if(button6.selected)
    {
        wo_li_inc.text=@"work_lifting_increased pain";
        [selectedcheckbox addObject:@"work_lifting_increased pain"];
        
    }
    else
    {
        wo_li_inc.text=NULL;
    }
    if(button7.selected)
    {
        wo_be_inc.text=@"work_bending_increased pain";
        [selectedcheckbox addObject:@"work_bending_increased pain"];
        
    }
    else
    {
        wo_be_inc.text=NULL;
    }
    if(button8.selected)
    {
        wo_si_inc.text=@"work_sitting_increased pain";
        [selectedcheckbox addObject:@"work_sitting_increased pain"];
        
    }
    else
    {
        wo_si_inc.text=NULL;
    }
       if(button9.selected)
    {
        wo_wa_inc.text=@"work_walking_increased pain";
        [selectedcheckbox addObject:@"work_walking_increased pain"];
        
    }
    else
    {
        wo_wa_inc.text=NULL;
    }
    if(button10.selected)
    {
        wo_co_inc.text=@"work_computer duties_increased pain";
        [selectedcheckbox addObject:@"work_computer duties_increased pain"];
        
    }
    else
    {
        wo_co_inc.text=NULL;
    }
    if(button11.selected)
    {
        wo_oth_inc.text=@"work_other_increased pain";
        [selectedcheckbox addObject:@"work_other_increased pain"];
        
    }
    else
    {
        wo_oth_inc.text=NULL;
    }

    
    if(button12.selected)
    {
        wo_oth1_inc.text=@"work_other1_increased pain";
        [selectedcheckbox addObject:@"work_other1_increased pain"];
        
    }
    else
    {
        wo_oth1_inc.text=NULL;
    }
    if(button13.selected)
    {
        wo_li_res.text=@"work_lifting_restricted movement";
        [selectedcheckbox addObject:@"work_lifting_restricted movement"];
        
    }
    else
    {
        wo_li_res.text=NULL;
    }
    if(button14.selected)
    {
        wo_be_res.text=@"work_bending_restricted movement";
        [selectedcheckbox addObject:@"work_bending_restricted movement"];
        
    }
    else
    {
        wo_be_res.text=NULL;
    }
    if(button15.selected)
    {
        wo_si_res.text=@"work_sitting_restricted movement";
        [selectedcheckbox addObject:@"work_sitting_restricted movement"];
        
    }
    else
    {
        wo_si_res.text=NULL;
    }
    if(button16.selected)
    {
        wo_wa_res.text=@"work_walking_restricted movement";
        [selectedcheckbox addObject:@"work_walking_restricted movement"];
        
    }
    else
    {
        wo_wa_res.text=NULL;
    }
    if(button17.selected)
    {
        wo_co_res.text=@"work_computer duties_restricted movement";
        [selectedcheckbox addObject:@"work_computer duties_restricted movement"];
        
    }
    else
    {
        wo_co_res.text=NULL;
    }
    if(button18.selected)
    {
        wo_oth_res.text=@"work_other_restricted movement";
        [selectedcheckbox addObject:@"work_other_restricted movement"];
        
    }
    else
    {
        wo_oth_res.text=NULL;
    }
    if(button19.selected)
    {
        wo_oth1_res.text=@"work_other1_restricted movement";
        [selectedcheckbox addObject:@"work_other1_restricted movement"];
        
    }
    else
    {
        wo_oth1_res.text=NULL;
    }
    if(button20.selected)
    {
        wo_li_weak.text=@"work_lifting_weakness";
        [selectedcheckbox addObject:@"work_lifting_weakness"];
        
    }
    else
    {
        wo_li_weak.text=NULL;
    }
    if(button21.selected)
    {
        wo_be_weak.text=@"work_bending_weakness";
        [selectedcheckbox addObject:@"work_bending_weakness"];
        
    }
    else
    {
        wo_be_weak.text=NULL;
    }
    if(button22.selected)
    {
        wo_si_weak.text=@"work_sitting_weakness";
        [selectedcheckbox addObject:@"work_sitting_weakness"];
        
    }
    else
    {
        wo_si_weak.text=NULL;
    }
    if(button23.selected)
    {
        wo_wa_weak.text=@"work_walking_weakness";
        [selectedcheckbox addObject:@"work_walking_weakness"];
        
    }
    else
    {
        wo_wa_weak.text=NULL;
    }
    if(button24.selected)
    {
        wo_co_fat.text=@"work_computer duties_fatigue";
        [selectedcheckbox addObject:@"work_computer duties_fatigue"];
        
    }
    else
    {
        wo_co_fat.text=NULL;
    }
    if(button25.selected)
    {
        wo_oth_weak.text=@"work_other_weakness";
        [selectedcheckbox addObject:@"work_other_weakness"];
        
    }
    else
    {
        wo_oth_weak.text=NULL;
    }
    if(button26.selected)
    {
        wo_oth1_weak.text=@"work_other1_weakness";
        [selectedcheckbox addObject:@"work_other1_weakness"];
        
    }
    else
    {
        wo_oth1_weak.text=NULL;
    }
    if(button27.selected)
    {
        wo_li_since.text=@"work_lifting_since MVA";
        [selectedcheckbox addObject:@"work_lifting_since MVA"];
        
    }
    else
    {
        wo_li_since.text=NULL;
    }
    if(button28.selected)
    {
        wo_be_since.text=@"work_bending_since MVA";
        [selectedcheckbox addObject:@"work_bending_since MVA"];
        
    }
    else
    {
        wo_be_since.text=NULL;
    }
    if(button29.selected)
    {
        wo_si_since.text=@"work_sitting_since MVA";
        [selectedcheckbox addObject:@"work_sitting_since MVA"];
        
    }
    else
    {
        wo_si_since.text=NULL;
    }
    
    
    if(button30.selected)
    {
        wo_wa_since.text=@"work_walking_since MVA";
        [selectedcheckbox addObject:@"work_walking_since MVA"];
        
    }
    else
    {
        wo_wa_since.text=NULL;
    }
    if(button31.selected)
    {
        wo_co_since.text=@"work_computer duties_since MVA";
        [selectedcheckbox addObject:@"work_computer duties_since MVA"];
        
    }
    else
    {
        wo_co_since.text=NULL;
    }
    if(button32.selected)
    {
        wo_oth_since.text=@"work_other_since MVA";
        [selectedcheckbox addObject:@"work_other_since MVA"];
        
    }
    else
    {
        wo_oth_since.text=NULL;
    }
    if(button33.selected)
    {
        wo_oth1_since.text=@"work_other1_since MVA";
        [selectedcheckbox addObject:@"work_other1_since MVA"];
        
    }
    else
    {
        wo_oth1_since.text=NULL;
    }
    if(button34.selected)
    {
        wo_li_on.text=@"work_lifting_ongoing";
        [selectedcheckbox addObject:@"work_lifting_ongoing"];
        
    }
    else
    {
        wo_li_on.text=NULL;
    }
    if(button35.selected)
    {
        wo_be_on.text=@"work_bending_ongoing";
        [selectedcheckbox addObject:@"work_bending_ongoing"];
        
    }
    else
    {
        wo_be_on.text=NULL;
    }
    if(button36.selected)
    {
        wo_si_on.text=@"work_sitting_ongoing";
        [selectedcheckbox addObject:@"work_sitting_ongoing"];
        
    }
    else
    {
        wo_si_on.text=NULL;
    }
    if(button37.selected)
    {
        wo_wa_on.text=@"work_walking_ongoing";
        [selectedcheckbox addObject:@"work_walking_ongoing"];
        
    }
    else
    {
        wo_wa_on.text=NULL;
    }
    if(button38.selected)
    {
        wo_co_on.text=@"work_computer dutes_ongoing";
        [selectedcheckbox addObject:@"work_computer dutes_ongoing"];
        
    }
    else
    {
        wo_co_on.text=NULL;
    }
    if(button39.selected)
    {
        wo_oth_on.text=@"work_other_ongoing";
        [selectedcheckbox addObject:@"work_other_ongoing"];
        
    }
    else
    {
        wo_oth_on.text=NULL;
    }
    if(button40.selected)
    {
        wo_oth1_on.text=@"work_other1_ongoing";
        [selectedcheckbox addObject:@"work_other1_ongoing"];
        
    }
    else
    {
        wo_oth1_on.text=NULL;
    }
    if(button41.selected)
    {
        stud_lifting.text=@"studies_lifting";
        [selectedcheckbox addObject:@"studies_lifting"];
        
    }
    else
    {
        stud_lifting.text=NULL;
    }
    if(button42.selected)
    {
        stud_bending.text=@"studies_bending";
        [selectedcheckbox addObject:@"studies_bending"];
        
    }
    else
    {
        stud_bending.text=NULL;
    }
    if(button43.selected)
    {
        stud_sitting.text=@"studies_sitting";
        [selectedcheckbox addObject:@"studies_sitting"];
        
    }
    else
    {
        stud_sitting.text=NULL;
    }
    if(button44.selected)
    {
        stud_walking.text=@"studies_walking";
        [selectedcheckbox addObject:@"studies_walking"];
        
    }
    else
    {
        stud_walking.text=NULL;
    }
    if(button45.selected)
    {
        stud_computer.text=@"studies_computer duties";
        [selectedcheckbox addObject:@"studies_computer duties"];
        
    }
    else
    {
        stud_computer.text=NULL;
    }
    if(button46.selected)
    {
        stud_studying.text=@"studies_studying";
        [selectedcheckbox addObject:@"studies_studying"];
        
    }
    else
    {
        stud_studying.text=NULL;
    }
    if(button47.selected)
    {
        stud_concen.text=@"studies_concentrating";
        [selectedcheckbox addObject:@"studies_concentrating"];
        
    }
    else
    {
        stud_concen.text=NULL;
    }
    
    if(button48.selected)
    {
        stud_li_inc.text=@"studies_lifting_increased pain";
        [selectedcheckbox addObject:@"studies_lifting_increased pain"];
        
    }
    else
    {
        stud_li_inc.text=NULL;
    }
    if(button49.selected)
    {
        stud_be_inc.text=@"studies_bending_increased pain";
        [selectedcheckbox addObject:@"studies_bending_increased pain"];
        
    }
    else
    {
       stud_be_inc.text=NULL;
    }
    if(button50.selected)
    {
        stud_si_inc.text=@"studies_sitting_increased pain";
        [selectedcheckbox addObject:@"studies_sitting_increased pain"];
        
    }
    else
    {
        stud_si_inc.text=NULL;
    }
   if(button51.selected)
    {
        stud_wa_inc.text=@"studies_walking_increased pain";
        [selectedcheckbox addObject:@"studies_walking_increased pain"];
        
    }
    else
    {
        stud_wa_inc.text=NULL;
    }
    if(button52.selected)
    {
        stud_co_inc.text=@"studies_computer duties_increased pain";
        [selectedcheckbox addObject:@"studies_computer duties_increased pain"];
        
    }
    else
    {
        stud_co_inc.text=NULL;
    }if(button53.selected)
    {
        stud_st_inc.text=@"studies_studying_increased pain";
        [selectedcheckbox addObject:@"studies_studying_increased pain"];
        
    }
    else
    {
        stud_st_inc.text=NULL;
    }
    if(button54.selected)
    {
        stud_con_inc.text=@"studies_concentrating_increased pain";
        [selectedcheckbox addObject:@"studies_concentrating_increased pain"];
        
    }
    else
    {
        stud_con_inc.text=NULL;
    }if(button55.selected)
    {
        stud_oth_inc.text=@"studies_other_increased pain";
        [selectedcheckbox addObject:@"studies_other_increased pain"];
        
    }
    else
    {
        stud_oth_inc.text=NULL;
    }if(button56.selected)
    {
        stud_oth1_inc.text=@"studies_other1_increased pain";
        [selectedcheckbox addObject:@"studies_other1_increased pain"];
        
    }
    else
    {
        stud_oth1_inc.text=NULL;
    }if(button57.selected)
    {
        stud_li_res.text=@"studies_lifting_restricted movement";
        [selectedcheckbox addObject:@"studies_lifting_restricted movement"];
        
    }
    else
    {
        stud_li_res.text=NULL;
    }if(button58.selected)
    {
        stud_be_res.text=@"studies_bending_restricted movement";
        [selectedcheckbox addObject:@"studies_bending_restricted movement"];
        
    }
    else
    {
        stud_be_res.text=NULL;
    }
    if(button59.selected)
    {
        stud_si_res.text=@"studies_sitting_restricted movement";
        [selectedcheckbox addObject:@"studies_sitting_restricted movement"];
        
    }
    else
    {
        stud_si_res.text=NULL;
    }
    if(button60.selected)
    {
        stud_wa_res.text=@"studies_walking_restricted movement";
        [selectedcheckbox addObject:@"studies_walking_restricted movement"];
        
    }
    else
    {
        stud_wa_res.text=NULL;
    }
    if(button61.selected)
    {
        stud_co_res.text=@"studies_computer duties_restricted movement";
        [selectedcheckbox addObject:@"studies_computer duties_restricted movement"];
        
    }
    else
    {
        stud_co_res.text=NULL;
    }
    if(button62.selected)
    {
        stud_st_res.text=@"studies_studying_restricted movement";
        [selectedcheckbox addObject:@"studies_studying_restricted movement"];
        
    }
    else
    {
        stud_st_res.text=NULL;
    }
    if(button63.selected)
    {
        stud_con_res.text=@"studies_concentrating_restricted movement";
        [selectedcheckbox addObject:@"studies_concentrating_restricted movement"];
        
    }
    else
    {
        stud_con_res.text=NULL;
    }
    if(button64.selected)
    {
        stud_oth_res.text=@"studies_other_restricted movement";
        [selectedcheckbox addObject:@"studies_other_restricted movement"];
        
    }
    else
    {
        stud_oth_res.text=NULL;
    }
    if(button65.selected)
    {
        stud_oth1_res.text=@"studies_other1_restricted movement";
        [selectedcheckbox addObject:@"studies_other1_restricted movement"];
        
    }
    else
    {
        stud_oth1_res.text=NULL;
    }
    
    if(button66.selected)
    {
        stud_li_weak.text=@"studies_lifting_weakness";
        [selectedcheckbox addObject:@"studies_lifting_weakness"];
        
    }
    else
    {
        stud_li_weak.text=NULL;
    }
    if(button67.selected)
    {
        stud_be_weak.text=@"studies_bending_weakness";
        [selectedcheckbox addObject:@"studies_bending_weakness"];
        
    }
    else
    {
        stud_be_weak.text=NULL;
    }
    if(button68.selected)
    {
        stud_si_weak.text=@"studies_sitting_weakness";
        [selectedcheckbox addObject:@"studies_sitting_weakness"];
        
    }
    else
    {
        stud_si_weak.text=NULL;
    }
    if(button69.selected)
    {
        stud_wa_weak.text=@"studies_walking_weakness";
        [selectedcheckbox addObject:@"studies_walking_weakness"];
        }
    else
    {
        stud_wa_weak.text=NULL;
    }
    if(button70.selected)
    {
        stud_co_fat.text=@"studies_computer duties_fatigue";
        [selectedcheckbox addObject:@"studies_computer duties_fatigue"];
        
    }
    else
    {
        stud_co_fat.text=NULL;
    }
    if(button71.selected)
    {
        stud_st_fat.text=@"studies_studying_fatigue";
        [selectedcheckbox addObject:@"studies_studying_fatigue"];
        
    }
    else
    {
        stud_st_fat.text=NULL;
    }
    if(button72.selected)
    {
        stud_con_fat.text=@"studies_concentrating_fatigue";
        [selectedcheckbox addObject:@"studies_concentrating_fatigue"];
        
    }
    else
    {
        stud_con_fat.text=NULL;
    }
    if(button73.selected)
    {
        stud_oth_weak.text=@"studies_other_weakness";
        [selectedcheckbox addObject:@"studies_other_weakness"];
        
    }
    else
    {
        stud_oth_weak.text=NULL;
    }
    if(button74.selected)
    {
        stud_oth1_weak.text=@"studies_other1_weakness";
        [selectedcheckbox addObject:@"studies_other1_weakness"];
        
    }
    else
    {
        stud_oth1_weak.text=NULL;
    }
    
    if(button75.selected)
    {
        stud_li_since.text=@"studies_lifting_since MVA";
        [selectedcheckbox addObject:@"studies_lifting_since MVA"];
    }
    else
    {
        stud_li_since.text=NULL;
    }
    if(button76.selected)
    {
        stud_be_since.text=@"studies_bending_since MVA";
        [selectedcheckbox addObject:@"studies_bending_since MVA"];
    }
    else
    {
        stud_be_since.text=NULL;
    }
    if(button77.selected)
    {
        stud_si_since.text=@"studies_sitting_since MVA";
        [selectedcheckbox addObject:@"studies_sitting_since MVA"];
    }
    else
    {
        stud_si_since.text=NULL;
    }
    if(button78.selected)
    {
        stud_wa_since.text=@"studies_walking_since MVA";
        [selectedcheckbox addObject:@"studies_walking_since MVA"];
    }
    else
    {
        stud_wa_since.text=NULL;
    }
    if(button79.selected)
    {
        stud_co_since.text=@"studies_computer duties_since MVA";
        [selectedcheckbox addObject:@"studies_computer duties_since MVA"];
    }
    else
    {
        stud_co_since.text=NULL;
    }
    if(button80.selected)
    {
        stud_st_since.text=@"studies_sitting_since MVA";
        [selectedcheckbox addObject:@"studies_sitting_since MVA"];
    }
    else
    {
        stud_st_since.text=NULL;
    }
    if(button81.selected)
    {
        stud_con_since.text=@"studies_concentrating_since MVA";
        [selectedcheckbox addObject:@"studies_concentrating_since MVA"];
    }
    else
    {
        stud_con_since.text=NULL;
    }
    if(button82.selected)
    {
        stud_oth_since.text=@"studies_other_since MVA";
        [selectedcheckbox addObject:@"studies_other_since MVA"];
    }
    else
    {
        stud_oth_since.text=NULL;
    }
    if(button83.selected)
    {
        stud_oth1_since.text=@"studies_other1_since MVA";
        [selectedcheckbox addObject:@"studies_other1_since MVA"];
    }
    else
    {
        stud_oth1_since.text=NULL;
    }
    if(button84.selected)
    {
        stud_li_on.text=@"studies_lifting_ongoing";
        [selectedcheckbox addObject:@"studies_lifting_ongoing"];
    }
    else
    {
        stud_li_on.text=NULL;
    }
    if(button85.selected)
    {
        stud_be_on.text=@"studies_bending_ongoing";
        [selectedcheckbox addObject:@"studies_bending_ongoing"];
    }
    else
    {
        stud_be_on.text=NULL;
    }
    if(button86.selected)
    {
        stud_si_on.text=@"studies_sitting_ongoing";
        [selectedcheckbox addObject:@"studies_sitting_ongoing"];
    }
    else
    {
        stud_si_on.text=NULL;
    }
    if(button87.selected)
    {
        stud_wa_on.text=@"studies_walking_ongoing";
        [selectedcheckbox addObject:@"studies_walking_ongoing"];
    }
    else
    {
        stud_wa_on.text=NULL;
    }
    if(button88.selected)
    {
        stud_co_on.text=@"studies_computer duties_ongoing";
        [selectedcheckbox addObject:@"studies_computer duties_ongoing"];
    }
    else
    {
        stud_co_on.text=NULL;
    }
    if(button89.selected)
    {
        stud_st_on.text=@"studies_studying_ongoing";
        [selectedcheckbox addObject:@"studies_studying_ongoing"];
    }
    else
    {
        stud_st_on.text=NULL;
    }
    if(button90.selected)
    {
        stud_con_on.text=@"studies_concentrating_ongoing";
        [selectedcheckbox addObject:@"studies_concentrating_ongoing"];
    }
    else
    {
        stud_con_on.text=NULL;
    }
    if(button91.selected)
    {
        stud_oth_on.text=@"studies_other_ongoing";
        [selectedcheckbox addObject:@"studies_other_ongoing"];
    }
    else
    {
        stud_oth_on.text=NULL;
    }
    if(button92.selected)
    {
        stud_oth1_on.text=@"studies_other1_ongoing";
        [selectedcheckbox addObject:@"studies_other1_ongoing"];
    }
    else
    {
        stud_oth1_on.text=NULL;
    }
    if(button93.selected)
    {
        dom_vaccuming.text=@"Domestic _vacuuming";
        [selectedcheckbox addObject:@"Domestic _vacuuming"];
    }
    else
    {
        dom_vaccuming.text=NULL;
    }
    if(button94.selected)
    {
        dom_taking.text=@"Domestic_taking kare of kids";
        [selectedcheckbox addObject:@"Domestic_taking kare of kids"];
    }
    else
    {
        dom_taking.text=NULL;
    }
    if(button95.selected)
    {
        dom_cleaning.text=@"Domestic cleaning";
        [selectedcheckbox addObject:@"Domestic cleaning"];
    }
    else
    {
        dom_cleaning.text=NULL;
    }
    if(button96.selected)
    {
        dom_preparing.text=@"Domestic_preparing meals ";
        [selectedcheckbox addObject:@"Domestic_preparing meals"];
    }
    else
    {
        dom_preparing.text=NULL;
    }
    if(button97.selected)
    {
        dom_va_inc.text=@"Domestic_vacuuming_increased pain";
        [selectedcheckbox addObject:@"Domestic_vacuuming_increased pain"];
    }
    else
    {
        dom_va_inc.text=NULL;
    }
    if(button98.selected)
    {
        dom_ta_inc.text=@"Domestic_taking care of kids_increased pain/anxiety";
        [selectedcheckbox addObject:@"Domestic_taking care of kids_increased pain/anxiety"];
    }
    else
    {
        dom_ta_inc.text=NULL;
    }
    if(button99.selected)
    {
        dom_cl_inc.text=@"Domestic cleaning_increased pain";
        [selectedcheckbox addObject:@"Domestic cleaning_increased pain"];
    }
    else
    {
        dom_cl_inc.text=NULL;
    }
    if(button100.selected)
    {
        dom_pr_ins.text=@"Domestic preparing meals_increased pain";
        [selectedcheckbox addObject:@"Domestic preparing mealls_increased pain"];
    }
    else
    {
        dom_pr_ins.text=NULL;
    }
    if(button101.selected)
    {
        dom_oth_inc.text=@"Domestic_other_increased pain/anxiety";
        [selectedcheckbox addObject:@"Domestic_other_increased pain/anxiety"];
    }
    else
    {
        dom_oth_inc.text=NULL;
    }
    if(button102.selected)
    {
        dom_oth1_inc.text=@"Domestic _other1_increased pain/anxiety";
        [selectedcheckbox addObject:@"Domestic_other1_increased pain/anxiety"];
    }
    else
    {
        dom_oth1_inc.text=NULL;
    }
    if(button103.selected)
    {
        dom_va_res.text=@"Domestic_vacuuming_resricted movement";
        [selectedcheckbox addObject:@"Domestic_vacuuming_resricted movement"];
    }
    else
    {
        dom_va_res.text=NULL;
    }
    if(button104.selected)
    {
        dom_ta_res.text=@"Domestic_taking care of kids_resricted movement";
        [selectedcheckbox addObject:@"Domestic_taking care of kids_resricted movement"];
    }
    else
    {
        dom_ta_res.text=NULL;
    }
    if(button105.selected)
    {
        dom_cl_res.text=@"Domestic_cleaning_resricted movement";
        [selectedcheckbox addObject:@"Domestic_cleaning_resricted movement"];
    }
    else
    {
        dom_cl_res.text=NULL;
    }
    if(button106.selected)
    {
        dom_pr_res.text=@"Domestic_preparing meals_resricted movement";
        [selectedcheckbox addObject:@"Domestic_preparing meals_resricted movement"];
    }
    else
    {
        dom_pr_res.text=NULL;
    }
    if(button107.selected)
    {
        dom_oth_res.text=@"Domestic_other_resricted movement";
        [selectedcheckbox addObject:@"Domestic_other_resricted movement"];
    }
    else
    {
        dom_oth_res.text=NULL;
    }
    if(button108.selected)
    {
        dom_oth1_res.text=@"Domestic_other1_resricted movement";
        [selectedcheckbox addObject:@"Domestic_other1_resricted movement"];
    }
    else
    {
        dom_oth1_res.text=NULL;
    }
    if(button109.selected)
    {
        dom_va_fat.text=@"Domestic_vacuuming_fatigue";
        [selectedcheckbox addObject:@"Domestic_vacuuming_fatigue"];
    }
    else
    {
        dom_va_fat.text=NULL;
    }
    if(button110.selected)
    {
        dom_ta_fat.text=@"Domestic_taking care of kids_fatigue";
        [selectedcheckbox addObject:@"Domestic_taking care of kids_fatigue"];
    }
    else
    {
        dom_ta_fat.text=NULL;
    }
    if(button111.selected)
    {
        dom_cl_fat.text=@"Domestic_cleaning_fatigue";
        [selectedcheckbox addObject:@"Domestic_cleaning_fatigue"];
    }
    else
    {
        dom_cl_fat.text=NULL;
    }
    if(button112.selected)
    {
        dom_pr_fat.text=@"Domestic_preparing meals_fatigue";
        [selectedcheckbox addObject:@"Domestic_preparing meals_fatigue"];
    }
    else
    {
        dom_pr_fat.text=NULL;
    }
    if(button113.selected)
    {
        dom_oth_fat.text=@"Domestic_other_fatigue";
        [selectedcheckbox addObject:@"Domestic_other_fatigue"];
    }
    else
    {
        dom_oth_fat.text=NULL;
    }
    if(button114.selected)
    {
        dom_oth1_fat.text=@"Domestic_other1_fatigue";
        [selectedcheckbox addObject:@"Domestic_other1_fatigue"];
    }
    else
    {
        dom_oth1_fat.text=NULL;
    }
    if(button115.selected)
    {
        dom_va_since.text=@"Domestic_vacuuming_since MVA";
        [selectedcheckbox addObject:@"Domestic_vacuuming_since MVA"];
    }
    else
    {
        dom_va_since.text=NULL;
    }
    if(button116.selected)
    {
        dom_ta_since.text=@"Domestic_taking care of kids_since MVA";
        [selectedcheckbox addObject:@"Domestic_taking care of kids_since MVA"];
    }
    else
    {
        dom_ta_since.text=NULL;
    }
    if(button117.selected)
    {
        dom_cl_since.text=@"Domestic_cleaning_since MVA";
        [selectedcheckbox addObject:@"Domestic_cleaning_since MVA"];
    }
    else
    {
        dom_cl_since.text=NULL;
    }
    if(button118.selected)
    {
        dom_pr_since.text=@"Domestic_preparing meals_since MVA";
        [selectedcheckbox addObject:@"Domestic_preparing meals_since MVA"];
    }
    else
    {
        dom_pr_since.text=NULL;
    }
    if(button119.selected)
    {
        dom_oth_since.text=@"Domestic_other_since MVA";
        [selectedcheckbox addObject:@"Domestic_other_since MVA"];
    }
    else
    {
        dom_oth_since.text=NULL;
    }
    if(button120.selected)
    {
        dom_oth1_since.text=@"Domestic_other1_since MVA";
        [selectedcheckbox addObject:@"Domestic_other1_since MVA"];
    }
    else
    {
        dom_oth1_since.text=NULL;
    }
    if(button121.selected)
    {
        dom_va_on.text=@"Domestic_vacuuming_ongoing";
        [selectedcheckbox addObject:@"Domestic_vacuuming_ongoing"];
    }
    else
    {
        dom_va_on.text=NULL;
    }
    if(button122.selected)
    {
        dom_ta_on.text=@"Domestic_taking care of kids_ongoing";
        [selectedcheckbox addObject:@"Domestic_taking care of kids_ongoing"];
    }
    else
    {
        dom_ta_on.text=NULL;
    }
    if(button123.selected)
    {
        dom_cl_on.text=@"Domestic_cleaning_ongoing";
        [selectedcheckbox addObject:@"Domestic_cleaning_ongoing"];
    }
    else
    {
        dom_cl_on.text=NULL;
    }
    if(button124.selected)
    {
        dom_pr_on.text=@"Domestic_preparing meals_ongoing";
        [selectedcheckbox addObject:@"Domestic_preparing meals_ongoing"];
    }
    else
    {
        dom_pr_on.text=NULL;
    }
    if(button125.selected)
    {
        dom_oth_on.text=@"Domestic_other_ongoing";
        [selectedcheckbox addObject:@"Domestic_other_ongoing"];
    }
    else
    {
        dom_oth_on.text=NULL;
    }
    if(button126.selected)
    {
        dom_oth1_on.text=@"Domestic_other1_ongoing";
        [selectedcheckbox addObject:@"Domestic_other1_ongoing"];
    }
    else
    {
        dom_oth1_on.text=NULL;
    }
    if(button127.selected)
    {
        household_yard.text=@"household duties_yard work";
        [selectedcheckbox addObject:@"household duties_yard work"];
    }
    else
    {
        household_yard.text=NULL;
    }
    if(button128.selected)
    {
        ho_transport.text=@"household transportation";
        [selectedcheckbox addObject:@"household transportation"];
    }
    else
    {
        ho_transport.text=NULL;
    }
    if(button129.selected)
    {
        ho_shopping.text=@"household shopping";
        [selectedcheckbox addObject:@"household shopping"];
    }
    else
    {
        ho_shopping.text=NULL;
    }
    if(button130.selected)
    {
        ho_taking.text=@"household taking out trash";
        [selectedcheckbox addObject:@"household taking out trash"];
    }
    else
    {
        ho_taking.text=NULL;
    }
    if(button131.selected)
    {
        ho_ya_inc.text=@"household_yard work_increased pain";
        [selectedcheckbox addObject:@"household_yard work_increased pain"];
    }
    else
    {
        ho_ya_inc.text=NULL;
    }
    if(button132.selected)
    {
        ho_tr_inc.text=@"household_transportation_increased pain/anxiety";
        [selectedcheckbox addObject:@"household_transportation_increased pain/anxiety"];
    }
    else
    {
        ho_tr_inc.text=NULL;
    }
    if(button133.selected)
    {
        ho_sh_inc.text=@"household_shopping_increased pain/anxiety";
        [selectedcheckbox addObject:@"household_shopping_increased pain/anxiety"];
    }
    else
    {
        ho_sh_inc.text=NULL;
    }
    if(button134.selected)
    {
        ho_ta_inc.text=@"household_taking out trash_increased pain";
        [selectedcheckbox addObject:@"household_taking out trash_increased pain"];
    }
    else
    {
        ho_ta_inc.text=NULL;
    }
    if(button135.selected)
    {
        ho_oth_inc.text=@"household_other_increased pain/anxiety";
        [selectedcheckbox addObject:@"household_other_increased pain/anxiety"];
    }
    else
    {
        ho_oth_inc.text=NULL;
    }
    if(button136.selected)
    {
        ho_oth1_inc.text=@"household_other1_increased pain";
        [selectedcheckbox addObject:@"household_other1_increased pain"];
    }
    else
    {
        ho_oth1_inc.text=NULL;
    }
    if(button137.selected)
    {
        ho_ya_res.text=@"household_yard work_restricted movement";
        [selectedcheckbox addObject:@"household_yard work_restricted movement"];
    }
    else
    {
        ho_ya_res.text=NULL;
    }
    if(button138.selected)
    {
        ho_tr_res.text=@"household_transportation_restricted movement";
        [selectedcheckbox addObject:@"household_transportation_restricted movement"];
    }
    else
    {
        ho_tr_res.text=NULL;
    }
    if(button139.selected)
    {
        ho_sh_res.text=@"household_shopping_restricted movement";
        [selectedcheckbox addObject:@"household_shopping_restricted movement"];
    }
    else
    {
        ho_sh_res.text=NULL;
    }
    if(button140.selected)
    {
        ho_ta_res.text=@"household_taking out trash_restricted movement";
        [selectedcheckbox addObject:@"household_taking out trash_restricted movement"];
    }
    else
    {
        ho_ta_res.text=NULL;
    }
    if(button141.selected)
    {
        ho_oth_res.text=@"household_other_restricted movement";
        [selectedcheckbox addObject:@"household_other_restricted movement"];
    }
    else
    {
        ho_oth_res.text=NULL;
    }
    if(button142.selected)
    {
        ho_oth1_res.text=@"household_other1_restricted movement";
        [selectedcheckbox addObject:@"household_other1_restricted movement"];
    }
    else
    {
        ho_oth1_res.text=NULL;
    }
    if(button143.selected)
    {
        ho_ya_fat.text=@"household_yard work_fatigue";
        [selectedcheckbox addObject:@"household_yard work_fatigue"];
    }
    else
    {
        ho_ya_fat.text=NULL;
    }
    if(button144.selected)
    {
        ho_tr_fat.text=@"household_transpotrtation_fatigue";
        [selectedcheckbox addObject:@"household_transportation_fatigue"];
    }
    else
    {
        ho_tr_fat.text=NULL;
    }
    if(button145.selected)
    {
        ho_sh_fat.text=@"household_shopping_fatigue";
        [selectedcheckbox addObject:@"household__shopping_fatigue"];
    }
    else
    {
        ho_sh_fat.text=NULL;
    }
    if(button146.selected)
    {
        ho_ta_weak.text=@"household_taking out trash_weakness";
        [selectedcheckbox addObject:@"household_taking out trash_weakness"];
    }
    else
    {
        ho_ta_weak.text=NULL;
    }
    if(button147.selected)
    {
        ho_oth_fat.text=@"household_other_fatigue";
        [selectedcheckbox addObject:@"household_other_fatigue"];
    }
    else
    {
        ho_oth_fat.text=NULL;
    }
    if(button148.selected)
    {
        ho_oth1_fat.text=@"household_other1_fatigue";
        [selectedcheckbox addObject:@"household_other1_fatigue"];
    }
    else
    {
        ho_oth1_fat.text=NULL;
    }
    if(button149.selected)
    {
        ho_ya_since.text=@"household_yard work_since MVA";
        [selectedcheckbox addObject:@"household_yard work_since MVA"];
    }
    else
    {
        ho_ya_since.text=NULL;
    }
    if(button150.selected)
    {
        ho_tr_since.text=@"household_transportation_since MVA";
        [selectedcheckbox addObject:@"household_transportation_since MVA"];
    }
    else
    {
        ho_tr_since.text=NULL;
    }
    if(button151.selected)
    {
        ho_sh_since.text=@"household_shopping_since MVA";
        [selectedcheckbox addObject:@"household_shopping_since MVA"];
    }
    else
    {
        ho_sh_since.text=NULL;
    }
    if(button152.selected)
    {
        ho_ta_since.text=@"household_taking out trash_since MVA";
        [selectedcheckbox addObject:@"household_taking out trash_since MVA"];
    }
    else
    {
        ho_ta_since.text=NULL;
    }
    if(button153.selected)
    {
        ho_oth_since.text=@"household_other_since MVA";
        [selectedcheckbox addObject:@"household_other_since MVA"];
    }
    else
    {
        ho_oth_since.text=NULL;
    }
    if(button154.selected)
    {
        ho_oth1_since.text=@"household_other1_since MVA";
        [selectedcheckbox addObject:@"household_other1_since MVA"];
    }
    else
    {
        ho_oth1_since.text=NULL;
    }
    if(button155.selected)
    {
        ho_ya_on.text=@"household_yard work_ongoing";
        [selectedcheckbox addObject:@"household_yard work_ongoing"];
    }
    else
    {
        ho_ya_on.text=NULL;
    }
    if(button156.selected)
    {
        ho_tr_on.text=@"household_transportation_ongoing";
        [selectedcheckbox addObject:@"household_transportation_ongoing"];
    }
    else
    {
        ho_tr_on.text=NULL;
    }
    if(button157.selected)
    {
        ho_sh_on.text=@"household_shopping_ongoing";
        [selectedcheckbox addObject:@"household_shopping_ongoing"];
    }
    else
    {
        ho_sh_on.text=NULL;
    }
    if(button158.selected)
    {
        ho_ta_on.text=@"household_taking out trash_ongoing";
        [selectedcheckbox addObject:@"household_taking out trash_ongoing"];
    }
    else
    {
        ho_ta_on.text=NULL;
    }
    if(button159.selected)
    {
        ho_oth_on.text=@"household_other_ongoing";
        [selectedcheckbox addObject:@"household_other_ongoing"];
    }
    else
    {
        ho_oth_on.text=NULL;
    }
    if(button160.selected)
    {
        ho_oth1_on.text=@"household_other1_ongoing";
        [selectedcheckbox addObject:@"household_other1_ongoing"];
    }
    else
    {
        ho_oth1_on.text=NULL;
    }
    
    

 [recorddict setObject:selectedcheckbox forKey:@"selectedcheckbox"];
   
    if(([patientname.text length]!=0)&&
         ([jobdescription.text length]!=0)&&
         ([date.text length]!=0)&&
         ([other.text length]!=0)&&
         ([other1.text length]!=0)&&
         ([other2.text length]!=0)&&
         ([other3.text length]!=0)&&
         ([other4.text length]!=0)&&
         ([other5.text length]!=0)&&
         ([other6.text length]!=0)&&
         ([other7.text length]!=0))
         {
            c=0;
             if([self validateNames:[patientname text]]==1)
             {
                 if([self validateNames:[jobdescription text]]==1)
                 {
                     if([self validateDate:[date text]]==1)
                     {
                         if([self validateNames:[other text]]==1)
                         {
                             if([self validateNames:[other1 text]]==1)
                             {
                                 if([self validateNames:[other2 text]]==1)
                                 {
                                     if([self validateNames:[other3 text]]==1)
                                     {
                                         if([self validateNames:[other4 text]]==1)
                                         {
                                             if([self validateNames:[other5 text]]==1)
                                             {
                                                 if([self validateNames:[other6 text]]==1)
                                                 {
                                                     if([self validateNames:[other7 text]]==1)
                                                     {
                                                         c=1;
                   
                                                        [recorddict setValue:patientname.text forKey:@"patientname"];
                                                        [recorddict setValue:jobdescription.text forKey:@"jobdescription"];
                                                        [recorddict setValue:date.text forKey:@"date"];
                                                         [recorddict setValue:other.text forKey:@"other"];
                                                         [recorddict setValue:other1.text forKey:@"other1"];
                                                         [recorddict setValue:other2.text forKey:@"other2"];
                                                         [recorddict setValue:other3.text forKey:@"other3"];
                                                         [recorddict setValue:other4.text forKey:@"other4"];
                                                         [recorddict setValue:other5.text forKey:@"other5"];
                                                         [recorddict setValue:other6.text forKey:@"other6"];
                                                         [recorddict setValue:other7.text forKey:@"other7"];
                                                           NSLog(@"success!!!recorddict %@",recorddict);
                                                   }
                                                     
                                                               else
                                                                     {
                                                                         c=0;
                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid other7."];
                                                                      [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                      [alert show];
                                                                     }
                                                                 }
                                                 
                                                            else
                                                          {
                                                              c=0;
                                                               BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid other6."];
                                                               [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                               [alert show];
                                                          }
                                                      }

                                             
                                             else
                                             {
                                                 c=0;
                                                 BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid other5."];
                                                 [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                 [alert show];
                                             }
                                         }
                                         
                                         else
                                         {
                                             c=0;
                                             BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid other4."];
                                             [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                             [alert show];
                                         }
                                     }

                                     
                                     else
                                     {
                                         c=0;
                                         BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid other3."];
                                         [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                         [alert show];
                                     }
                                 }
                                 
                                 else
                                 {
                                     c=0;
                                     BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid other2."];
                                     [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                     [alert show];
                                 }
                             }
                             
                             else
                             {
                                 c=0;
                                 BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid other1."];
                                 [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                 [alert show];
                             }
                         }
                         
                         else
                         {
                             c=0;
                             BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid other."];
                             [alert setDestructiveButtonWithTitle:@"x" block:nil];
                             [alert show];
                         }
                     }

                        else
                                {
                                    c=0;
                                  BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid date."];
                                   [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                  [alert show];
                                }
                           }
                         else
                    {
                        c=0;
                           BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid job description ."];
                           [alert setDestructiveButtonWithTitle:@"x" block:nil];
                         [alert show];
                    }
                }
                 else
                 {
                     c=0;
                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid patient name ."];
                     [alert setDestructiveButtonWithTitle:@"x" block:nil];
                     [alert show];
                     
                 }
         }
    
    else
             {
                 c=0;
                 BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter all fields."];
                 
                 //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                 [alert setDestructiveButtonWithTitle:@"x" block:nil];
                 [alert show];

            }
    if (c==1) {
        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Info!" message:@"Success!"];
        
        
        [alert setDestructiveButtonWithTitle:@"x" block:nil];
        [alert show];
    }

}



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [button1 release];
    [button2 release];
    [button3 release];
    [button4 release];
    [button5 release];
    [button6 release];
    [button7 release];
    [button8 release];
    [button9 release];
    [button10 release];
    [button11 release];
    [button12 release];
    [button13 release];
    [button14 release];
    [button15 release];
    [button16 release];
    [button17 release];
    [button18 release];
    [button19 release];
    [button20 release];
    [button21 release];
    [button22 release];
    [button23 release];
    [button24 release];
    [button25 release];
    [button26 release];
    [button27 release];
    [button28 release];
    [button29 release];
    [button30 release];
    [button31 release];
    [button32 release];
    [button33 release];
    [button34 release];
    [button35 release];
    [button36 release];
    [button37 release];
    [button38 release];
    [button39 release];
    [button40 release];
    [button41 release];
    [button42 release];
    [button43 release];
    [button44 release];
    [button45 release];
    [button46 release];
    [button47 release];
    [button48 release];
    [button49 release];
    [button50 release];
    [button51 release];
    [button52 release];
    [button53 release];
    [button54 release];
    [button55 release];
    [button56 release];
    [button57 release];
    [button58 release];
    [button59 release];
    [button60 release];
    [button61 release];
    [button62 release];
    [button63 release];
    [button64 release];
    [button65 release];
    [button66 release];
    [button67 release];
    [button68 release];
    [button69 release];
    [button70 release];
    [button71 release];
    [button72 release];
    [button73 release];
    [button74 release];
    [button75 release];
    [button76 release];
    [button77 release];
    [button78 release];
    [button79 release];
    [button80 release];
    [button81 release];
    [button82 release];
    [button83 release];
    [button84 release];
    [button85 release];
    [button86 release];
    [button87 release];
    [button88 release];
    [button89 release];
    [button90 release];
    [button91 release];
    [button92 release];
    [button93 release];
    [button94 release];
    [button95 release];
    [button96 release];
    [button97 release];
    [button98 release];
    [button99 release];
    [button100 release];
    [button101 release];
    [button102 release];
    [button103 release];
    [button104 release];
    [button105 release];
    [button106 release];
    [button107 release];
    [button108 release];
    [button109 release];
    [button110 release];
    [button111 release];
    [button112 release];
    [button113 release];
    [button114 release];
    [button115 release];
    [button116 release];
    [button117 release];
    [button118 release];
    [button119 release];
    [button120 release];
    [button121 release];
    [button122 release];
    [button123 release];
    [button124 release];
    [button125 release];
    [button126 release];
    [button127 release];
    [button128 release];
    [button129 release];
    [button130 release];
    [button131 release];
    [button132 release];
    [button133 release];
    [button134 release];
    [button135 release];
    [button136 release];
    [button137 release];
    [button138 release];
    [button139 release];
    [button140 release];
    [button141 release];
    [button142 release];
    [button143 release];
    [button144 release];
    [button145 release];
    [button146 release];
    [button147 release];
    [button148 release];
    [button149 release];
    [button150 release];
    [button151 release];
    [button152 release];
    [button153 release];
    [button154 release];
    [button155 release];
    [button156 release];
    [button157 release];
    [button158 release];
    [button159 release];
    [button160 release];
    [wo_li_inc release];
    [wo_li_res release];
    [wo_li_weak release];
    [super dealloc];
}
@end
