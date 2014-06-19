//
//  authorizeandconsenttreatViewController.m
//  EHR
//
//  Created by DeemSysInc on 15/10/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import "authorizeandconsenttreatViewController.h"
#import "BlockAlertView.h"
#import "BlockBackground.h"
#import "BlockUI.h"
@interface authorizeandconsenttreatViewController ()

@end

@implementation authorizeandconsenttreatViewController
@synthesize recorddict;
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
- (void)textFieldDatePicker:(TextFieldDatePicker *)textFieldDatePicker didSelectDate:(NSDate *)date
{
    //	NSLog(@"%@", date);
    
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    
    //	NSLog(@"begin editing");
}
-(BOOL)agevalidate:(NSString *)zipnumber{
    NSString *zipFormat1 =  @"[0-9]{1,3}?";
    
    //  [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *zipTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", zipFormat1];
    return [zipTest1 evaluateWithObject:zipnumber];
    
}

-(IBAction)submit:(id)sender
{
    recorddict=[[NSMutableDictionary alloc]init];
    if(([sign.text length]!=0)&&
       ([date.text length]!=0)&&
       ([name.text length]!=0))
    {
        a=0;
        if ([self onlyalphabetsexpress:[sign text]]==1)
        {
            if([self dateexpress:[date text]]==1)
            {
                if([self onlyalphabetsexpress:[name text]]==1)
                {
                    a=1;
                    [recorddict setValue:sign.text forKey:@"patientsign"];
                    [recorddict setValue:date.text forKey:@"date"];
                    [recorddict setValue:name.text forKey:@"witnessname"];
                 /*   sqlite3_stmt    *statement;
                    
                    const char *dbpath = [databasePath UTF8String];
                    
                    if (sqlite3_open(dbpath, &ehrdb) == SQLITE_OK)
                    {
                        NSString *insertSQL = [NSString stringWithFormat: @"INSERT INTO AUTHORIZEDANDCONSENTTREAT ( patientsign,todaydate,witness) VALUES (\"%@\", \"%@\", \"%@\")",sign.text, date.text, name.text];
                        
                        const char *insert_stmt = [insertSQL UTF8String];
                        
                        sqlite3_prepare_v2(ehrdb, insert_stmt, -1, &statement, NULL);
                        if (sqlite3_step(statement) == SQLITE_DONE)
                        {
                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Form Submitted successfully."];
                            
                            //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                            [alert show];
                            date.text=@"";
                            name.text=@"";
                            sign.text=@"";
                            
                        } else
                        {
                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Form submission failed."];
                            
                            //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                            [alert show];
                        }
                        sqlite3_finalize(statement);
                        sqlite3_close(ehrdb);
                    }*/
                }
                else
                {
                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Witness."];
                                
                                //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                [alert show];
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
                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Signature."];
                        
                        //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                        [alert show];
                }
                }
                else
                {
                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter all required fields."];
        
                        //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                        [alert show];
    }
    if (a==1)
    {
        NSLog(@"recorddict in autorization consent treat %@",recorddict);
    }
    else
    {
        NULL;
    }
    

}
-(IBAction)reset:(id)sender
{
    sign.text=@"";
    date.text=@"";
    name.text=@"";
    
}
-(void)dismissKeyboard
{
    [sign resignFirstResponder];
    [date resignFirstResponder];
    [name resignFirstResponder];
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
 /*   NSString *docsDir;
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
            const char *sql_stmt = "CREATE TABLE IF NOT EXISTS AUTHORIZEDANDCONSENTTREAT (ID INTEGER PRIMARY KEY AUTOINCREMENT,patientname TEXT, todaydate TEXT , witness TEXT)";
            
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
    }*/
   // recorddict=[[NSMutableDictionary alloc]init];
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
