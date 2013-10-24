//
//  staffautocheckViewController.m
//  EHR
//
//  Created by DeemSysInc on 16/10/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import "staffautocheckViewController.h"
#import "BlockAlertView.h"
#import "BlockBackground.h"
#import "BlockUI.h"
@interface staffautocheckViewController ()

@end

@implementation staffautocheckViewController
@synthesize recorddict;
@synthesize selectforms;
int a;

-(BOOL)onlyalphabetsexpress:(NSString *)country1
{
    NSString *countryFormat1 = @"(?:[A-Za-z]+[a-z]*)";
    
    // [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)dateexpress:(NSString *)country1
{
    NSString *countryFormat1 = @"[0-9]{2}+[/]+[0-9]{2}+[/]+[0-9]{4}";
    
    //  [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)number:(NSString *)zipnumber{
    NSString *zipFormat1 =  @"[0-9]{1,3}?";
    
    //  [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *zipTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", zipFormat1];
    return [zipTest1 evaluateWithObject:zipnumber];
    
}
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(IBAction)submit:(id)sender
{
    recorddict=[[NSMutableDictionary alloc]init];
    selectforms=[[NSMutableArray alloc]init];
    if(button1.selected)
    {
        patinfo.text=@"Confidential Patient Information";
        [selectforms addObject:@"Confidential Patient Information"];
        
    }
    else
        patinfo.text=NULL;
    if(button2.selected)
    {
        screening.text=@"Screening Disclosure/referral";
        [selectforms addObject:@"Screening Disclosure/referral"];
        
    }
    else
        screening.text=NULL;
    if(button3.selected)
    {
        aob.text=@"Assignment of Benefits/Lien";
        [selectforms addObject:@"Assignment of Benefits/Lien"];
        
        
    }
    else
        aob.text=NULL;
    if(button4.selected)
    {
        history.text=@" History/Exam Sheet";
        [selectforms addObject:@" History/Exam Sheet"];
        
    }
    history.text=NULL;
    if(button5.selected)
    {
        xray_sheet.text=@"SOAP Note/X-ray Sheet";
        [selectforms addObject:@"SOAP Note/X-ray Sheet"];
        
    }
    else
        xray_sheet.text=NULL;
        
    if(button6.selected)
    {
        consent.text=@"Consent to Treat Form/Minor";
        [selectforms addObject:@"Consent to Treat Form/Minor"];
    }
    else
        consent.text=NULL;
    if(button7.selected)
    {
        report.text=@"Accident Report";
        [selectforms addObject:@"Accident Report"];
        
    }
    else
        report.text=NULL;
    [recorddict setObject:selectforms forKey:@"selectforms"];
    if(([patientname.text length]!=0)&&
       ([insuramceattroney.text length]!=0)&&
       ([damageamount.text length]!=0)&&
       ([faultinsurance.text length]!=0)&&
       ([medpay.text length]!=0)&&
       ([botherattroney.text length]!=0)&&
       ([protectionreceived.text length]!=0)&&
       ([billed.text length]!=0)&&
       ([remdate.text length]!=0))
    {
        a=0;
        if ([self onlyalphabetsexpress:[patientname text]]==1)
        {
            if([self onlyalphabetsexpress:[insuramceattroney text]]==1)
            {
                if([self number:[damageamount text]]==1)
                {

                    if([self onlyalphabetsexpress:[faultinsurance text]]==1)
                    {

                        if([self onlyalphabetsexpress:[medpay text]]==1)
                        {

                            if([self onlyalphabetsexpress:[botherattroney text]]==1)
                            {
                                if([self onlyalphabetsexpress:[protectionreceived text]]==1)
                                {

                                    if([self dateexpress:[billed text]]==1)
                                    {

                                        if([self dateexpress:[remdate text]]==1)
                                        {

                                            a=1;
                                            [recorddict setValue:patientname.text forKey:@"patientname"];
                                            [recorddict setValue:insuramceattroney.text forKey:@"insuranceattorney"];
                                            [recorddict setValue:damageamount.text forKey:@"damageamount"];
                                            [recorddict setValue:faultinsurance.text forKey:@"faultinsurance"];
                                            [recorddict setValue:medpay.text forKey:@"medpay"];
                                            [recorddict setValue:botherattroney.text forKey:@"otherattorney"];
                                        [recorddict setValue:protectionreceived.text forKey:@"protectionreceived"];
                                            [recorddict setValue:billed.text forKey:@"billed"];
                                            [recorddict setValue:remdate.text forKey:@"remdate"];
                                            sqlite3_stmt    *statement;
                                            
                                            const char *dbpath = [databasePath UTF8String];
                                            
                                            if (sqlite3_open(dbpath, &ehrdb) == SQLITE_OK)
                                            {
                                                NSString *insertSQL = [NSString stringWithFormat: @"INSERT INTO STAFFAUTOCHECK (patinfo,screening,aob,history,xray_sheet,consent,report,pat_name,insure,damage_amount,fault_insure,med_pay,other_attorney,protect_received,bill,re_date) VALUES (\"%@\", \"%@\", \"%@\",\"%@\",\"%@\",\"%@\",\"%@\",\"%@\",\"%@\",\"%@\",\"%@\",\"%@\",\"%@\",\"%@\",\"%@\",\"%@\")",patinfo.text,screening.text,aob.text,history.text,xray_sheet.text,consent.text,report.text,patientname.text,insuramceattroney.text,damageamount.text,faultinsurance.text,medpay.text,botherattroney.text,protectionreceived.text,billed.text,remdate.text ];
                                                
                                                const char *insert_stmt = [insertSQL UTF8String];
                                                
                                                sqlite3_prepare_v2(ehrdb, insert_stmt, -1, &statement, NULL);
                                                if (sqlite3_step(statement) == SQLITE_DONE)
                                                {
                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Form Submitted successfully."];
                                                    
                                                    //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                    [alert show];
                                                  patientname.text=@"";
                                                    insuramceattroney.text=@"";
                                                    damageamount.text=@"";
                                                    faultinsurance.text=@"";
                                                    medpay.text=@"";
                                                    botherattroney.text=@"";
                                                    protectionreceived.text=@"";
                                                    billed.text=@"";
                                                    remdate.text=@"";
                                                    
                                
                                                    
                                                } else
                                                {
                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Form submission failed."];
                                                    
                                                    //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                    [alert show];
                                                }
                                                sqlite3_finalize(statement);
                                                sqlite3_close(ehrdb);
                                            }
            }
            else
            {
                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Date."];
                
                //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                [alert show];
            }
                                    }
        else
        {
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Billed Date."];
            
            //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
            [alert setDestructiveButtonWithTitle:@"x" block:nil];
            [alert show];
        }
    }
                                else
                                {
                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Protection Details."];
                                    
                                    //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                    [alert show];
                                }
                            }
                            else
                            {
                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Attorney."];
                                
                                //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                [alert show];
                            }
                        }
                        else
                        {
                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Med Pay."];
                            
                            //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                            [alert show];
                        }
                    }
                    else
                    {
                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Fault Insurance."];
                        
                        //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                        [alert show];
                    }
                }
                else
                {
                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Damge Value."];
                    
                    //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                    [alert show];
                }
            }
            else
            {
                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Name."];
                
                //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                [alert show];
            }
        }
        else
        {
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Name."];
            
            //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
            [alert setDestructiveButtonWithTitle:@"x" block:nil];
            [alert show];
        }
    }
    else
    {
        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter all Required fields."];
        
        //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
        [alert setDestructiveButtonWithTitle:@"x" block:nil];
        [alert show];
    }
    if (a==1)
    {
        NSLog(@"recorddict in Staff Auto Checklist %@",recorddict);
    }
    else
    {
        NULL;
    }


}
-(IBAction)reset:(id)sender
{
    patientname.text=@"";
    insuramceattroney.text=@"";
    damageamount.text=@"";
    faultinsurance.text=@"";
    billed.text=@"";
    remdate.text=@"";
    botherattroney.text=@"";
    medpay.text=@"";
    protectionreceived.text=@"";
}
-(void)dismissKeyboard
{
    [patientname resignFirstResponder];
    [insuramceattroney resignFirstResponder];
    [damageamount resignFirstResponder];
    [faultinsurance resignFirstResponder];
    [billed resignFirstResponder];
    [remdate resignFirstResponder];
    [botherattroney resignFirstResponder];
    [medpay resignFirstResponder];
    [protectionreceived resignFirstResponder];
    
}
-(IBAction)checkboxSelected:(UIButton*)sender
{
    sender.selected = !sender.selected;
    if(sender.selected)
    {
        [sender setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
    }
    else
    {
        [sender setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    }
}

- (void)viewDidLoad
{
     selectforms=[[NSMutableArray alloc]init];
   // recorddict=[[NSMutableDictionary alloc]init];

    NSString *docsDir;
    NSArray *dirPaths;
    
    // Get the documents directory
    dirPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    
    docsDir = [dirPaths objectAtIndex:0];
    
    // Build the path to the database file
    databasePath = [[NSString alloc] initWithString: [docsDir stringByAppendingPathComponent: @"ehr.db"]];
    
    NSFileManager *filemgr = [NSFileManager defaultManager];
    
    if ([filemgr fileExistsAtPath: databasePath ] == NO)
    {
		const char *dbpath = [databasePath UTF8String];
        
        if (sqlite3_open(dbpath, &ehrdb) == SQLITE_OK)
        {
            char *errMsg;
            const char *sql_stmt = "CREATE TABLE IF NOT EXISTS STAFFAUTOCHECK (ID INTEGER PRIMARY KEY AUTOINCREMENT, patinfo varchar DEFAULT NULL,screening varchar DEFAULT NULL,aob varchar DEFAULT NULL,history varchar DEFAULT NULL, xray_sheet varchar DEFAULT NULL,consent varchar DEFAULT NULL,report varchar DEFAULT NULL, pat_name varchar DEFAULT NULL, insure varchar DEFAULT NULL, damage_amount varchar DEFAULT NULL, fault_insure varchar DEFAULT NULL, med_pay varchar DEFAULT NULL,other_attorney varchar DEFAULT NULL, protect_received varchar DEFAULT NULL,bill varchar DEFAULT NULL, re_date varchar DEFAULT NULL,)";
            
            if (sqlite3_exec(ehrdb, sql_stmt, NULL, NULL, &errMsg) != SQLITE_OK)
            {
                //status.text = @"Failed to create table";
                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Failed to create table."];
                
                //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                [alert show];
            }
            
            sqlite3_close(ehrdb);
            
        }
        else
        {
            // status.text = @"Failed to open/create database";
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Failed to open/create databse."];
            
            //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
            [alert setDestructiveButtonWithTitle:@"x" block:nil];
            [alert show];
            
        }
    }

    [super viewDidLoad];
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

@end


