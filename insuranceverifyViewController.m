//
//  insuranceverifyViewController.m
//  EHR
//
//  Created by DeemsysInc on 10/16/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import "insuranceverifyViewController.h"
#import "BlockAlertView.h"
#import "BlockBackground.h"
#import "BlockUI.h"

@interface insuranceverifyViewController ()

@end

@implementation insuranceverifyViewController
@synthesize recorddict;
@synthesize patientname;
@synthesize spokewith;
@synthesize date;
@synthesize fax;
@synthesize amountdeduct;
@synthesize deductmet;
@synthesize visits;
@synthesize manipulationcovered;
@synthesize manipulationpercent;
@synthesize therapycovered;
@synthesize therapypercent;
@synthesize xrayscovered;
@synthesize xraypercent;
@synthesize subjectdeduct;
@synthesize benefitshonored;
@synthesize networkbenefits;
@synthesize deductible;
@synthesize percentcovered;
@synthesize therapies;
@synthesize therapysegmentlabel;
@synthesize xraydeduct;
@synthesize honored;
@synthesize address;
@synthesize manipulationcoveredswitchlabel;
@synthesize therapycoveredswitchlabel;
@synthesize xraycoveredswitchlabel;
@synthesize subjectdeductswitchlabel;
@synthesize benefitshonoredswitchlabel;
@synthesize networkbenefitsswitchlabel;
@synthesize xraydeductswitchlabel;
@synthesize honoredswitchlabel;

-(BOOL)validatealphanumeric:(NSString*)mobilenumber{
    NSString *mobileFormat1 =  @"[A-Z0-9a-z._%+-]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *mobileTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", mobileFormat1];
    return [mobileTest1 evaluateWithObject:mobilenumber];
    
}
-(BOOL)validateEmail:(NSString*)candidate{
    NSString *emailFormat1 = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    
    
    NSPredicate *emailTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailFormat1];
    return [emailTest1 evaluateWithObject:candidate];
    
}

-(BOOL)validateNames:(NSString *)country1
{
    NSString *countryFormat1 =@"(?:[A-Za-z]+[A-Za-z]*)";
    // [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateDate:(NSString *)country1
{
    NSString *countryFormat1 = @"[0-9]{1,2}+[-]+[0-9]{1,2}+[-]+[0-9]{4}";
    
    // [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}




-(IBAction)submit:(id)sender
{
    recorddict=[[NSMutableDictionary alloc]init];
    if([manipulationcoveredswitchlabel.text isEqual:@"Yes"])
    {
        a=[self validatealphanumeric:[manipulationpercent text]];
    }
   
    if([therapycoveredswitchlabel.text isEqual:@"Yes"])
    {
        b =[self validatealphanumeric:[therapypercent text]];
    }
   
    if([xraycoveredswitchlabel.text isEqual:@"Yes"])
    {
        d =[self validatealphanumeric:[xraypercent text]];
    }
   
        if(([patientname.text length]!=0)&&
       ([spokewith.text length]!=0)&&
        ([date.text length]!=0)&&
        ([fax.text length]!=0)&&
        ([amountdeduct.text length]!=0)&&
        ([deductmet.text length]!=0)&&
        ([visits.text length]!=0)&&
        ([deductible.text length]!=0)&&
        ([percentcovered.text length]!=0)&&
        ([address.text length]!=0))
        
    {
        if([self validateNames:[patientname text]]==1)
        {
            if([self validateNames:[spokewith text]]==1)
            {
                if([self validateDate:[date text]]==1)
                {
                   if([self validatealphanumeric:[fax text]]==1)
                   {
                       if ([self validatealphanumeric:[amountdeduct text]]==1)
                       {
                         if([self validatealphanumeric:[deductmet text]]==1)
                         {
                             if([self validatealphanumeric:[visits text]]==1){
                                if([self validatealphanumeric:[deductible text]]==1)
                                {
                                 if([self validatealphanumeric:[percentcovered text]]==1)
                                 {
                                     if([self validateEmail:[address text]]==1)
                                     {
                                         [recorddict setValue:patientname.text forKey:@"patientname"];
                                         [recorddict setValue:spokewith.text forKey:@"spokewith"];
                                         [recorddict setValue:date.text forKey:@"date"];
                                         [recorddict setValue:fax.text forKey:@"fax"];
                                         [recorddict setValue:amountdeduct.text forKey:@"amountdeduct"];
                                         [recorddict setValue:deductmet.text forKey:@"deductment"];
                                         [recorddict setValue:visits.text forKey:@"visits"];
                                         [recorddict setValue:deductible.text forKey:@"deductible"];
                                         [recorddict setValue:percentcovered.text forKey:@"percentcovered"];
                                         [recorddict setValue:address.text forKey:@"addresstext"];
                                         [recorddict setValue:manipulationcoveredswitchlabel.text forKey:@"manipulationcovered"];
                                         [recorddict setValue:therapycoveredswitchlabel.text forKey:@"theraphycovered"];
                                         [recorddict setValue:xraycoveredswitchlabel.text forKey:@"xraycovered"];
                                         [recorddict setValue:subjectdeductswitchlabel.text forKey:@"subjectdeduct"];
                                         [recorddict setValue:benefitshonoredswitchlabel.text forKey:@"benefitshonored"];
                                         [recorddict setValue:networkbenefitsswitchlabel.text forKey:@"networkbenefits"];
                                         [recorddict setValue:xraycoveredswitchlabel.text forKey:@"xraycoveredswitchlabel"];
                                         [recorddict setValue:honoredswitchlabel.text forKey:@"honouredswitchlabel"];
                                         [recorddict setValue:therapysegmentlabel.text forKey:@"therapiescovered"];
                                         
if (([manipulationcoveredswitchlabel.text isEqual:@"Yes"]) &&a==1)
{
    [recorddict setValue:manipulationpercent.text forKey:@"manipultionpercent"];
    if(([therapycoveredswitchlabel.text isEqual:@"Yes"])&&b==1)
    {
       [recorddict setValue:therapypercent.text forKey:@"theraphy percent"];
        if([xraycoveredswitchlabel.text isEqual:@"Yes"]&&d==1)
        {
            c=1;
            [recorddict setValue:xraypercent.text forKey:@"xray percent"];
        }
        else if([xraycoveredswitchlabel.text isEqual:@"No"])
        {
            c=1;
        }
        else{
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid xrays covered percentage."];
            
            [alert setDestructiveButtonWithTitle:@"x" block:nil];
            [alert show];
            
        }
        }

    
    else if([therapycoveredswitchlabel.text isEqual:@"No"])
    {
        if([xraycoveredswitchlabel.text isEqual:@"Yes"]&&d==1)
        {
            c=1;
            [recorddict setValue:xraypercent.text forKey:@"xray percent"];
        }
        else if([xraycoveredswitchlabel.text isEqual:@"No"])
        {
            c=1;
        }
        else{
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid xrays covered percentage."];
            
            [alert setDestructiveButtonWithTitle:@"x" block:nil];
            [alert show];
            
        }
    }
    else
    {
        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid theraphy covered percentage."];
        
        [alert setDestructiveButtonWithTitle:@"x" block:nil];
        [alert show];
        
    }
    
                                         }
                                         else if ([manipulationcoveredswitchlabel.text isEqual:@"No"])
                                         {
                                             if(([therapycoveredswitchlabel.text isEqual:@"Yes"])&&b==1)
                                             {
                                                 [recorddict setValue:therapypercent.text forKey:@"theraphy percent"];
                                                 if([xraycoveredswitchlabel.text isEqual:@"Yes"]&&d==1)
                                                 {
                                                     c=1;
                                                     [recorddict setValue:xraypercent.text forKey:@"xray percent"];
                                                 }
                                                 else if([xraycoveredswitchlabel.text isEqual:@"No"])
                                                 {
                                                     c=1;
                                                 }
                                                 else{
                                                     BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid xrays covered percentage."];
                                                     
                                                     [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                     [alert show];
                                                     
                                                 }
                                             }
                                             
                                             
                                             else if([therapycoveredswitchlabel.text isEqual:@"No"])
                                             {
                                                 if([xraycoveredswitchlabel.text isEqual:@"Yes"]&&d==1)
                                                 {
                                                     c=1;
                                                     [recorddict setValue:xraypercent.text forKey:@"xray percent"];
                                                 }
                                                 else if([xraycoveredswitchlabel.text isEqual:@"No"])
                                                 {
                                                     c=1;
                                                 }
                                                 else{
                                                     BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid xrays covered percentage."];
                                                     
                                                     [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                     [alert show];
                                                     
                                                 }
                                             }
                                             else
                                             {
                                                 BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid theraphy covered percentage."];
                                                 
                                                 [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                 [alert show];
                                                 
                                             }
                                             
                                             
                                         }
                                         else
                                         {
                                             BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid manipulation covered percentage."];
                                             
                                             [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                             [alert show];
                                         }
                                     }
                                     
                                     else
                                     {
                                         BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid emailid."];
                                         
                                         [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                         [alert show];
                                     }
                                 }
                                 else{
                                     BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid percentage covered."];
                                     
                                     [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                     [alert show];
                                 }
                                }
                                 else
                                 {
                                     BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid deductible data."];
                                     
                                     [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                     [alert show];
                                 }
                             }
                             else{
                                 BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid maximum visit's/year."];
                                 
                                 [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                 [alert show];
                             }
                         }
                         else{
                             BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid amount of deductible met."];
                             
                             [alert setDestructiveButtonWithTitle:@"x" block:nil];
                             [alert show];
                         }
                       }
                       else{
                           BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid amount of deductible."];
                           
                           [alert setDestructiveButtonWithTitle:@"x" block:nil];
                           [alert show];
                       }
                   }
                    else
                    {
                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid fax number."];
                        
                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                        [alert show];
                    }
                }
                else
                {
                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid Date."];
                    
                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                    [alert show];
  
                }
            }
            else{
                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid Spokewith person name."];
                
                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                [alert show];

            }
        }
        else
        {
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid Patientname."];
            
            [alert setDestructiveButtonWithTitle:@"x" block:nil];
            [alert show];
        }
    }
    else
    {
        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter all the required fields."];
        
      [alert setDestructiveButtonWithTitle:@"x" block:nil];
      [alert show];
    }
   if(c==1)
   {
       c=0;
      /* sqlite3_stmt    *statement;
       
       const char *dbpath = [databasePath UTF8String];
       
       if (sqlite3_open(dbpath, &ehrdb7) == SQLITE_OK)
       {
           NSString *insertSQL = [NSString stringWithFormat: @"INSERT INTO INSURANCEVERIFY(VERIFY_NAME,SPOKE_WITH,DATE,FAX,AMOUNT_DEDUCT,AMOUNT_DEDUCT_MET,MAX_VISIT,IS_CHIROPRACTIC,AT_WHAT,THERAPHY_COVER,ATWHAT,XRAY_COVER,ATWHAT,SUBJECT_DEDUCT,BENEFITS_HONORED,NETWORK_BENEFITS,DEDUCTIBLE,COVERED,CM,PT,OV,XRAY_DEDUCT,DOCTORS_ASSIGN,MAIL_CLAIMS) VALUES (\"%@\", \"%@\", \"%@\",\"%@\",\"%@\",\"%@\",\"%@\",\"%@\",\"%@\",\"%@\",\"%@\",\"%@\",\"%@\",\"%@\",\"%@\",\"%@\",\"%@\",\"%@\",\"%@\",\"%@\",\"%@\",\"%@\",\"%@\",\"%@\")",patientname.text,spokewith.text,date.text,fax.text,amountdeduct.text,deductmet.text,visits.text,manipulationcoveredswitchlabel.text,manipulationpercent.text,therapycoveredswitchlabel.text,therapypercent.text,xraycoveredswitchlabel.text,xraypercent.text,subjectdeductswitchlabel.text,benefitshonoredswitchlabel.text,networkbenefitsswitchlabel.text,deductible.text,percentcovered.text,CM.text,pt.text,ov.text,xraydeductswitchlabel.text,honoredswitchlabel.text,address.text ];
           
           const char *insert_stmt = [insertSQL UTF8String];
           
           sqlite3_prepare_v2(ehrdb7, insert_stmt, -1, &statement, NULL);
           if (sqlite3_step(statement) == SQLITE_DONE)
           {
               BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Form Submitted successfully."];
               patientname.text=@"";
               spokewith.text=@"";
               date.text=@"";
               fax.text=@"";
               amountdeduct.text=@"";
               deductmet.text=@"";
               visits.text=@"";
               manipulationpercent.text=@"";
               therapypercent.text=@"";
               xraypercent.text=@"";
               deductible.text=@"";
               percentcovered.text=@"";
               address.text=@"";
               //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
               [alert setDestructiveButtonWithTitle:@"x" block:nil];
               [alert show];
               
               
           } else
           {
               BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Form submission failed."];
               
               //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
               [alert setDestructiveButtonWithTitle:@"x" block:nil];
               [alert show];
           }
           sqlite3_finalize(statement);
           sqlite3_close(ehrdb7);
       }
*/
       NSLog(@"success!!!recorddict %@",recorddict);
   }
}
-(IBAction)reset:(id)sender
{
    patientname.text=@"";
    spokewith.text=@"";
    date.text=@"";
    fax.text=@"";
    amountdeduct.text=@"";
    deductmet.text=@"";
    visits.text=@"";
    manipulationpercent.text=@"";
    therapypercent.text=@"";
    xraypercent.text=@"";
    deductible.text=@"";
    percentcovered.text=@"";
    address.text=@"";
    
}
-(IBAction)manipulationcoveredswitchchange:(id)sender
{
    if (manipulationcovered.isOn)
    {
        manipulationpercent.hidden=NO;
        what1.hidden=NO;
        manipulationcoveredswitchlabel.text=@"Yes";
    }
    else
    {
        manipulationpercent.hidden=YES;
        what1.hidden=YES;
        manipulationpercent.text=@"";
        manipulationcoveredswitchlabel.text=@"No";
    }
}
-(IBAction)therapycoveredswitchchange:(id)sender
{
    if (therapycovered.isOn)
    {
        therapypercent.hidden=NO;
        what2.hidden=NO;
        therapycoveredswitchlabel.text=@"Yes";
    }
    else
    {
       therapypercent.hidden=YES;
        what2.hidden=YES;
        therapypercent.text=@"";
        therapycoveredswitchlabel.text=@"No";
    }
}
-(IBAction)xraycoveredswitchchange:(id)sender
{
    if (xrayscovered.isOn)
    {
        xraypercent.hidden=NO;
        what3.hidden=NO;
       xraycoveredswitchlabel.text=@"Yes";
    }
    else
    {
        xraypercent.hidden=YES;
        what3.hidden=YES;
        xraypercent.text=@"";
        xraycoveredswitchlabel.text=@"No";
    }
}
-(IBAction)subjectdeductibleswitchswitchchange:(id)sender
{
    if (subjectdeduct.isOn)
    {
        subjectdeductswitchlabel.text=@"Yes";
    }
    else
    {
        subjectdeductswitchlabel.text=@"No";
    }
}
-(IBAction)benefitshonoredswitchange:(id)sender
{
    if (benefitshonored.isOn)
    {
        benefitshonoredswitchlabel.text=@"Yes";
    }
    else
    {
        benefitshonoredswitchlabel.text=@"No";
    }
}
-(IBAction)networkbenefitsswitchchange:(id)sender
{
    if (networkbenefits.isOn)
    {
        networkbenefitsswitchlabel.text=@"Yes";
    }
    else
    {
        networkbenefitsswitchlabel.text=@"No";
    }
    
}
-(IBAction)therapiessegmentchange:(id)sender
{
    if (therapies.selectedSegmentIndex==0)
    {
        CM.text=@"CM";
        therapysegmentlabel.text=@"CM";
    }
    if (therapies.selectedSegmentIndex==1)
    {
        pt.text=@"PT";
        therapysegmentlabel.text=@"PT";
    }
    if (therapies.selectedSegmentIndex==2)
    {
        ov.text=@"OV";
        therapysegmentlabel.text=@"OV";
    }
}
-(IBAction)xraydeductswitchchange:(id)sender
{
    if (xraydeduct.isOn)
    {
        xraydeductswitchlabel.text=@"Yes";
    }
    else
    {
        xraydeductswitchlabel.text=@"No";
    }
}
-(IBAction)honoredswitchchange:(id)sender
{
    if (honored.isOn)
    {
        honoredswitchlabel.text=@"Yes";
    }
    else
    {
       honoredswitchlabel.text=@"No";
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

- (void)viewDidLoad
{
    recorddict=[[NSMutableDictionary alloc]init];
/*    NSString *docsDir;
    NSArray *dirPaths;
    
    // Get the documents directory
    dirPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    
    docsDir = [dirPaths objectAtIndex:0];
    
    // Build the path to the database file
    databasePath = [[NSString alloc] initWithString: [docsDir stringByAppendingPathComponent: @"ehrdb7.db"]];
    
    NSFileManager *filemgr = [NSFileManager defaultManager];
    
    if ([filemgr fileExistsAtPath: databasePath ] == NO)
    {
		const char *dbpath = [databasePath UTF8String];
        
        if (sqlite3_open(dbpath, &ehrdb7) == SQLITE_OK)
        {
            char *errMsg;
            const char *sql_stmt = "CREATE TABLE IF NOT EXISTS INSURANCEVERIFY (ID INTEGER PRIMARY KEY AUTOINCREMENT, VERIFY_NAME TEXT , SPOKE_WITH TEXT, DATE TEXT, FAX TEXT,AMOUNT_DEDUCT TEXT,AMOUNT_DEDUCT_MET TEXT,MAX_VISIT TEXT,IS_CHIROPRACTIC TEXT,AT_WHAT TEXT,THERAPHY_COVER TEXT,ATWHAT TEXT,XRAY_COVER TEXT,ATWHAT TEXT,SUBJECT_DEDUCT TEXT,BENEFITS_HONORED TEXT,NETWOTK_BENEFITS TEXT,DEDUCTIBLE TEXT,COVERED TEXT,CM TEXT,PT TEXT,OV TEXT,XRAY_DEDUCT TEXT,DOCTORS_ASSIGN TEXT,MAIL_CLAIMS TEXT)";
            
            if (sqlite3_exec(ehrdb7, sql_stmt, NULL, NULL, &errMsg) != SQLITE_OK)
            {
                //status.text = @"Failed to create table";
                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Failed to create table."];
                
                //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                [alert show];
            }
            
            sqlite3_close(ehrdb7);
            
        }
        else
        {
            // status.text = @"Failed to open/create database";
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Failed to open/create databse."];
            
            //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
            [alert setDestructiveButtonWithTitle:@"x" block:nil];
            [alert show];
            
        }
    }*/

    [super viewDidLoad];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
	// Do any additional setup after loading the view.
}
-(void)dismissKeyboard
{
    [patientname resignFirstResponder];
    [spokewith resignFirstResponder];
    [date resignFirstResponder];
    [fax resignFirstResponder];
    [amountdeduct resignFirstResponder];
    [deductible resignFirstResponder];
    [deductmet resignFirstResponder];
    [visits resignFirstResponder];
    [manipulationpercent resignFirstResponder];
    [therapypercent resignFirstResponder];
    [xraypercent resignFirstResponder];
    [percentcovered resignFirstResponder];
    [address resignFirstResponder];
  
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
