//
//  hardshipViewController.m
//  EHR
//
//  Created by DeemSysInc on 16/10/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import "hardshipViewController.h"
#import "BlockAlertView.h"
#import "BlockBackground.h"
#import "BlockUI.h"
@interface hardshipViewController ()

@end

@implementation hardshipViewController
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


-(IBAction)submit:(id)sender
{
     recorddict=[[NSMutableDictionary alloc]init];
    if(([name.text length]!=0)&&
       ([date.text length]!=0)&&
       ([sign.text length]!=0)&&
       ([witness.text length]!=0))
       
    {
        a=0;
        if ([self onlyalphabetsexpress:[name text]]==1)
        {
            if([self dateexpress:[date text]]==1)
            {
                if([self onlyalphabetsexpress:[sign text]]==1)
                {
                    if([self onlyalphabetsexpress:[witness text]]==1)
                    {

                a=1;
                [recorddict setValue:name.text forKey:@"name"];
                [recorddict setValue:date.text forKey:@"date"];
                        [recorddict setValue:sign.text forKey:@"sign"];
                        [recorddict setValue:witness.text forKey:@"witness"];
                     /*   sqlite3_stmt    *statement;
                        
                        const char *dbpath = [databasePath UTF8String];
                        
                        if (sqlite3_open(dbpath, &ehrdbase) == SQLITE_OK)
                        {
                            NSString *insertSQL = [NSString stringWithFormat: @"INSERT INTO HARDSHIP (name, date, sign, witness) VALUES (\"%@\", \"%@\", \"%@\", \"%@\")", name.text, date.text, sign.text, witness.text];
                            
                            const char *insert_stmt = [insertSQL UTF8String];
                            
                            sqlite3_prepare_v2(ehrdbase, insert_stmt, -1, &statement, NULL);
                            if (sqlite3_step(statement) == SQLITE_DONE)
                            {
                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Form Submitted Successfully."];
                                
                                //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                [alert show];
                                name.text = @"";
                                date.text = @"";
                                sign.text = @"";
                                witness.text=@"";
                                
                            }
                            else
                            {
                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Form Submission Failed."];
                                
                                //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                [alert show];
                            }
                            sqlite3_finalize(statement);
                            sqlite3_close(ehrdbase);
                        }
                      */


            }
            else
            {
                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Witness Name."];
                
                //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                [alert show];
            }
        }
        else
        {
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Sign."];
            
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
        NSLog(@"recorddict in Hardship %@",recorddict);
    }
    else
    {
        NULL;
    }
   /* sqlite3_stmt    *statement;
    
    const char *dbpath = [databasePath UTF8String];
    
    if (sqlite3_open(dbpath, &ehrdb) == SQLITE_OK)
    {
        NSString *insertSQL = [NSString stringWithFormat: @"INSERT INTO HARDSHIP (date, name, sign, witness) VALUES (\"%@\", \"%@\", \"%@\",\"%@\")", date.text, name.text, sign.text, witness.text];
        
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
            witness.text=@"";
            
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

-(IBAction)reset:(id)sender
{
    date.text=@"";
    name.text=@"";
    sign.text=@"";
    witness.text=@"";
}
-(void)dismissKeyboard
{
    [date resignFirstResponder];
    [name resignFirstResponder];
    [sign resignFirstResponder];
    [witness resignFirstResponder];
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
   /* NSString *docsDir;
    NSArray *dirPaths;
    
    // Get the documents directory
    dirPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    
    docsDir = [dirPaths objectAtIndex:0];
    
    // Build the path to the database file
    databasePath = [[NSString alloc] initWithString: [docsDir stringByAppendingPathComponent: @"ehrdbase.db"]];
    
    NSFileManager *filemgr = [NSFileManager defaultManager];
    
    if ([filemgr fileExistsAtPath: databasePath ] == NO)
    {
		const char *dbpath = [databasePath UTF8String];
        
        if (sqlite3_open(dbpath, &ehrdbase) == SQLITE_OK)
        {
            char *errMsg;
            const char *sql_stmt = "CREATE TABLE IF NOT EXISTS HARDSHIP (ID INTEGER PRIMARY KEY AUTOINCREMENT, NAME TEXT, DATE TEXT, SIGN TEXT, WITNESS TEXT)";
            
            if (sqlite3_exec(ehrdbase, sql_stmt, NULL, NULL, &errMsg) != SQLITE_OK)
            {
                //status.text = @"Failed to create table";
                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Failed to create table."];
                
                //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                [alert show];
            }
            
            sqlite3_close(ehrdbase);
            
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
*/
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
