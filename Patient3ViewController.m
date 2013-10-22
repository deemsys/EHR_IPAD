//
//  Patient3ViewController.m
//  EHR
//
//  Created by DeemsysInc on 10/8/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import "Patient3ViewController.h"

@interface Patient3ViewController ()

@end

@implementation Patient3ViewController
@synthesize recorddict;
@synthesize reslabel1;
@synthesize reslabel2;
@synthesize switch1;
@synthesize switch2;
@synthesize otherdis;
@synthesize otheropt;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(BOOL)validateNames:(NSString *)country1
{
    NSString *countryFormat1 =@"(?:[A-Za-z]+[A-Za-z0-9]*)";
   // [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateSign:(NSString *)country1
{
    NSString *countryFormat1 = @"(?:[A-Za-z]+[a-zA-Z]*)";
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

- (void)viewDidLoad
{
    otherdis.hidden=YES;
    NSString *docsDir;
    NSArray *dirPaths;
    
    // Get the documents directory
    dirPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    
    docsDir = [dirPaths objectAtIndex:0];
    
    // Build the path to the database file
    databasePath = [[NSString alloc] initWithString: [docsDir stringByAppendingPathComponent: @"PATIENTINFO.db"]];
    
    NSFileManager *filemgr = [NSFileManager defaultManager];
    
    if ([filemgr fileExistsAtPath: databasePath ] == NO)
    {
		const char *dbpath = [databasePath UTF8String];
        
        if (sqlite3_open(dbpath, &PatientDB) == SQLITE_OK)
        {
            char *errMsg;const char *sql_stmt;
           /* const char *sql_stmt = "CREATE TABLE IF NOT EXISTS PATIENTINFO (ID INTEGER PRIMARY KEY AUTOINCREMENT,Name VARCHAR NOT NULL            ,          StreetAddress VARCHAR NOT NULL,        City VARCHAR NOT NULL,     State VARCHAR NOT NULL,            ZipCode VARCHAR NOT NULL,            Homephone VARCHAR NOT NULL,            Pager VARCHAR NOT NULL,            MobileNumber VARCHAR NOT NULL,     DateOfBirth VARCHAR NOT NULL,            SocialSecurityNumber VARCHAR NOT NULL,        Gender VARCHAR NOT NULL,            MaritalStatus VARCHAR   NOT NULL,            Student VARCHAR   NOT NULL,            EmployerName VARCHAR   NOT NULL,            Occupation  VARCHAR   NOT NULL,            EmployerAddress  VARCHAR   NOT NULL,            Workphone  VARCHAR   NOT NULL,            EmployerCity  VARCHAR   NOT NULL,            Estate  VARCHAR   NOT NULL,            Ezip  VARCHAR   NOT NULL,            SpousesName  VARCHAR   NOT NULL,            SpousesEmp  VARCHAR   NOT NULL,            Spousesph  VARCHAR   NOT NULL,            Name_phone  VARCHAR   NOT NULL,            Chiropratic_care  VARCHAR   NOT NULL,            Symptoms  VARCHAR   NOT NULL,            Painscale  VARCHAR   NOT NULL,            Symptom1  VARCHAR   NOT NULL,            Painscale1  VARCHAR   NOT NULL,            Symptom2  VARCHAR   NOT NULL,            Painscale2  VARCHAR   NOT NULL,            Symptom_Accident  VARCHAR   NOT NULL,            Type_Of_Accident  VARCHAR   NOT NULL,            Date_Of_Accident  VARCHAR   NOT NULL,            Accident_Reported  VARCHAR   NOT NULL,            When  VARCHAR   NOT NULL,            Where  VARCHAR   NOT NULL,            Attorney_accident  VARCHAR   NOT NULL,            NameOfAttorney  VARCHAR   NOT NULL,            phone_Number  VARCHAR   NOT NULL,            Fault_accident  VARCHAR   NOT NULL,            Insurance  VARCHAR   NOT NULL,            Insurance_phone  VARCHAR   NOT NULL,            Name_ph  VARCHAR   NOT NULL,            policy  VARCHAR   NOT NULL,            Name_health  VARCHAR   NOT NULL,            Health_phone  VARCHAR   NOT NULL,            prev_accident  VARCHAR   NOT NULL,            Prev_When  VARCHAR   NOT NULL,            anemia  VARCHAR   DEFAULT NULL,            Muscular  VARCHAR   DEFAULT NULL,            Rheumatic  VARCHAR   DEFAULT NULL,            Allergies  VARCHAR   DEFAULT NULL,            Polio1  VARCHAR   DEFAULT NULL,            Multiple  VARCHAR   DEFAULT NULL,            HIV  VARCHAR   DEFAULT NULL,            Sinus  VARCHAR   DEFAULT NULL,            Asthma  VARCHAR   DEFAULT NULL,            German  VARCHAR   DEFAULT NULL,            Nervousness  VARCHAR   DEFAULT NULL,            Numbness  VARCHAR   DEFAULT NULL,            Convulsions  VARCHAR   DEFAULT NULL,            Epilepsy  VARCHAR   DEFAULT NULL,          Concussion  VARCHAR   DEFAULT NULL,            Dizziness  VARCHAR   DEFAULT NULL,            Neuritis  VARCHAR   DEFAULT NULL,            Rheumatism  VARCHAR   DEFAULT NULL,            Diabetes  VARCHAR   DEFAULT NULL,            Arthritis  VARCHAR   DEFAULT NULL,            Venereal  VARCHAR   DEFAULT NULL,            Backaches  VARCHAR   DEFAULT NULL,            Liver  VARCHAR   DEFAULT NULL,            Kidney  VARCHAR   DEFAULT NULL,            Thyroid  VARCHAR   DEFAULT NULL,            Alcoholism  VARCHAR   DEFAULT NULL,            Hepatitis  VARCHAR   DEFAULT NULL,            Mental  VARCHAR   DEFAULT NULL,            High  VARCHAR   DEFAULT NULL,            Digestive  VARCHAR   DEFAULT NULL,            Heart  VARCHAR   DEFAULT NULL,            other  VARCHAR   DEFAULT NULL,            illness  VARCHAR   DEFAULT NULL,            Dates  VARCHAR   DEFAULT NULL,            medications  VARCHAR   DEFAULT NULL,            Drink  VARCHAR   DEFAULT NULL,            Smoke  VARCHAR   DEFAULT NULL,            Drugs  VARCHAR   DEFAULT NULL,            Diet  VARCHAR   DEFAULT NULL,            Exercise  VARCHAR   DEFAULT NULL,            hazardous  VARCHAR   DEFAULT NULL,            hazardousyes  VARCHAR   DEFAULT NULL,            female  VARCHAR   DEFAULT NULL,            dr  VARCHAR   DEFAULT NULL,            patient  VARCHAR   DEFAULT NULL,            sign  VARCHAR   DEFAULT NULL ) ";
            */
            
            if (sqlite3_exec(PatientDB, sql_stmt, NULL, NULL, &errMsg) != SQLITE_OK)
            {
                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Failed to create table."];
                
                //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                [alert show];            }
            
            sqlite3_close(PatientDB);
            
        } else {
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Failed to open or create DB."];
            
            //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
            [alert setDestructiveButtonWithTitle:@"x" block:nil];
            [alert show];
        }
    }
    

    [super viewDidLoad];
    //recorddict=[[NSMutableDictionary alloc]init];
    selecteddisease=[[NSMutableArray alloc]init];
    temp=[[NSMutableDictionary alloc]init];
    temp=recorddict;
    circle=[[NSMutableArray alloc]init];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
    
    
	// Do any additional setup after loading the view.
}
-(void)dismissKeyboard
{
    [date resignFirstResponder];
    [dr resignFirstResponder];
    [otherdis resignFirstResponder];
    [otheropt resignFirstResponder];
    [surg resignFirstResponder];
    [medhad resignFirstResponder];
    [hazlist resignFirstResponder];
    [patsign resignFirstResponder];
     }

- (IBAction) toggleEnabledTextForSwitch1onSomeLabel: (id) sender
{
	if (switch1.on){
        reslabel1.text = @"Yes";
        hazlist.hidden=NO;
        plslisthide.hidden=NO;
    }
	else{
        
    reslabel1.text = @"No";
        hazlist.hidden=YES;
        plslisthide.hidden=YES;
        hazlist.text=@" ";
    }
}
- (IBAction) toggleEnabledTextForSwitch2onSomeLabel: (id) sender
{
	if (switch2.on) reslabel2.text = @"Yes";
	else
    {
        reslabel2.text = @"No";
        
    }
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)checkboxSelected:(UIButton*)sender {
        sender.selected = !sender.selected;
    if(sender.selected){
     [sender setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
    }
    else{
         [sender setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    }
    if(button35.selected)
    {
        otherdis.hidden=NO;
    }
    else{
        otherdis.hidden=YES;
        otherdis.text=@" ";
    }

}
-(IBAction)submit:(id)sender{
    recorddict=[[NSMutableDictionary alloc]init];
    [recorddict addEntriesFromDictionary:temp];
    selecteddisease=[[NSMutableArray alloc]init];
    
    circle=[[NSMutableArray alloc]init];

    if(button1.selected)
    {
        [selecteddisease addObject:@"Anemia"];
        
    }
    if(button2.selected)
    {
        [selecteddisease addObject:@"Muscular Dystrophy"];
        
    }
    if(button3.selected)
    {
       [selecteddisease addObject:@"Rheumatic Fever"];

        
    }
    if(button4.selected)
    {
        
        [selecteddisease addObject:@" Allergies"];
        
    }
    if(button5.selected)
    {
         [selecteddisease addObject:@"Polio"];
        
    }
    if(button6.selected)
    {
          [selecteddisease addObject:@"Multiple Sclerosis"];
    }
    if(button7.selected)
    {
         [selecteddisease addObject:@"Scarlet Fever"];
        
    }
    if(button8.selected)
    {
         [selecteddisease addObject:@"HIV"];
    }
    if(button9.selected)
    {
          [selecteddisease addObject:@"Asthma"];
    }
    if(button10.selected)
    {
        [selecteddisease addObject:@"German Measles"];
    }
    if(button11.selected)
    {
         [selecteddisease addObject:@" Nervousness"];
        
    }
    if(button12.selected)
    {
         [selecteddisease addObject:@"Numbness"];
    }
    if(button13.selected)
    {
        [selecteddisease addObject:@"Epilepsy"];
    }
    if(button14.selected)
    {
       [selecteddisease addObject:@"Concussion"];
    }
    if(button15.selected)
    {
        [selecteddisease addObject:@"Dizziness"];
        
    }
    if(button16.selected)
    {
        [selecteddisease addObject:@"Neuritis"];
        
    }
    if(button17.selected)
    {
       [selecteddisease addObject:@"Diabetes "];
        
    }
    if(button18.selected)
    {
        [selecteddisease addObject:@"Arthritis"];
    }
    if(button19.selected)
    {
       
        [selecteddisease addObject:@"Venereal Disease"];
        
    }
    if(button20.selected)
    {
       
        [selecteddisease addObject:@"Backaches"];
        
    }
    if(button21.selected)
    {
               [selecteddisease addObject:@"Liver Disease"];
        
    }
    if(button22.selected)
    {
                [selecteddisease addObject:@"Kidney Disease"];
        
    }
    if(button23.selected)
    {
        [selecteddisease addObject:@"Thyroid Disease"];
        
    }
    if(button24.selected)
    {
         [selecteddisease addObject:@"Alcoholism"];
        
    }
    if(button25.selected)
    {
         [selecteddisease addObject:@"Mental Illness"];
        
    }
    if(button26.selected)
    {
        [selecteddisease addObject:@"High Blood Pressure"];
    }
    if(button27.selected)
    {
        [selecteddisease addObject:@"Digestive Disorders"];
        
    }
    if(button28.selected)
    {
        [selecteddisease addObject:@"Heart trouble"];
    }
    if(button29.selected)
    {
         [selecteddisease addObject:@" Cancer "];
    }
    if(button30.selected)
    {
         [selecteddisease addObject:@"Sinus Trouble"];
        
    }
    if(button31.selected)
    {
         [selecteddisease addObject:@"Convulsions"];
        
    }
    if(button32.selected)
    {
         [selecteddisease addObject:@"Rheumatism"];
        
    }
    if(button33.selected)
    {
         [selecteddisease addObject:@"Tuberculosis"];
    }
    if(button34.selected)
    {
        [selecteddisease addObject:@"Hepatitis"];
        
    }
    if(button35.selected)
    {
        [selecteddisease addObject:otherdis.text];
        
    }
    if(buttonx1.selected)
    {
       // NSLog(@"selected %hhd",buttonx1.selected);
        [circle addObject:@"Drink Regularly"];
        
    }
    if(buttonx2.selected)
    {
        [circle addObject:@"Eat a Poor Diet"];
        
    }
    if(buttonx3.selected)
    {
        [circle addObject:@"Exercise Regularly"];
        
    }
    if(buttonx4.selected)
    {
        [circle addObject:@"Smoke"];
        
    }
    if(buttonx5.selected)
    {
        [circle addObject:@"Take Recreational Dugs"];
        
    }
    
    [recorddict setObject:selecteddisease forKey:@"selecteddis"];
    [recorddict setObject:circle forKey:@"doyoucircle"];
    if((button35.selected)&&([otherdis.text length]!=0))
    {
        
        a=1;
      //  NSLog(@"entered %d",a);
       
    }
    else if(!(button35.selected))
    {
        NSLog(@"else if");
        a=1;
    }
    else
    {NSLog(@"else ");
        a=0;
    }
    if(([reslabel1.text isEqual:@"Yes"] )&& (hazlist.hidden==NO))
    {
        b =[self validateNames:[hazlist text]];
    }
    else if(([reslabel1.text isEqual:@"No"] )&&(hazlist.hidden==YES))
    {
        b =1;
    }
    else{
        b=0;
    }
   
    if(([selecteddisease count]!=0)&&([circle count]!=0)&&([surg.text length]!=0)&&([medhad.text length]!=0)&&([date.text length]!=0)&&([patsign.text length]!=0)&&([dr.text length]!=0))
    {
        c=0;
    if([self validateNames:[surg text]]==1)
    {
     if([self validateDate:[date text]]==1)
     {
         if([self validateNames:[medhad text]]==1){
           if([self validateSign:[patsign text] ]==1)
           {
              if([self validateSign:[dr text]]==1)
              {
                   [recorddict setValue:surg.text forKey:@"majorillness"];
                   [recorddict setValue:date.text forKey:@"majorillnessdate"];
                   [recorddict setValue:medhad.text forKey:@"medicines"];
                   [recorddict setValue:patsign.text forKey:@"patientsign"];
                   [recorddict setValue:dr.text forKey:@"doctorsign"];
                  [recorddict setValue:reslabel1.text forKey:@"hazardoussubstances"];
                  [recorddict setValue:reslabel2.text forKey:@"femalepregnant"];
                  if(a==1)
                  {
                      [recorddict setValue:otherdis.text forKey:@"Otherdisease"];
                      if(b==1)
                      {
                           c=1;
                         [recorddict setValue:hazlist.text forKey:@"hazardouslist"];
                      }
                      else
                      {
                          BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid Hazardous Substances."];
                          
                          //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                          [alert setDestructiveButtonWithTitle:@"x" block:nil];
                          [alert show];
                      }
                  }
                  else{
                      BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid otherdisease name."];
                      
                      //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                      [alert setDestructiveButtonWithTitle:@"x" block:nil];
                      [alert show];
                  }
              }
              else{
                  BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid Dr sign."];
                  
                  //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                  [alert setDestructiveButtonWithTitle:@"x" block:nil];
                  [alert show];
              }
           }
             else
             {
                 BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid Patient's sign."];
                 
                 //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                 [alert setDestructiveButtonWithTitle:@"x" block:nil];
                 [alert show];
             }
         }
         else{
             BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid Medicines."];
             
             //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
             [alert setDestructiveButtonWithTitle:@"x" block:nil];
             [alert show];
         }
     }
        else
        {
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid Date."];
            
            //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
            [alert setDestructiveButtonWithTitle:@"x" block:nil];
            [alert show];
        }
    }
    else{
        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid surgeries or major illnesses."];
        
        //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
        [alert setDestructiveButtonWithTitle:@"x" block:nil];
        [alert show];

        
    }
    }
    else{
        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter all the required fields."];
        
        //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
        [alert setDestructiveButtonWithTitle:@"x" block:nil];
        [alert show];
    }
    if((a==1)&&(b==1)&&(c==1))
    {
        NSLog(@"submit full recorddict values %@",recorddict);
        [self savedata1];
    }
        
    }


-(IBAction)clear:(id)sender
{
      for (UIView *subview in [self.view subviews])
            if([subview isKindOfClass:[UITextField class]])
                [(UITextField*)subview setText:@""];
  
  
}
-(void)savedata1
{
    
    sqlite3_stmt    *statement;NSString *insertSQL;
    
    const char *dbpath = [databasePath UTF8String];
    
    if (sqlite3_open(dbpath, &PatientDB) == SQLITE_OK)
    {
      /*  NSString *insertSQL = [NSString stringWithFormat: @"INSERT INTO PATIENTINFO (Name,                               Date,                               StreetAddress,                               City,                               State,                               Zipcode,                               Homephone,                               Pager,                               MobileNumber,                               DateOfBirth,                               SocialSecurityNumber,                               Gender,                               MaritalStatus,                               Student,                               EmployerName,                               Occupation,                               EmployerAddress,                               Workphone,                               EmployerCity,                               Estate,                               Ezip,                               SpousesName,                               SpousesEmp,                               Spousesph,                               Name_phone,                               Chiropratic_care,                               Symptoms,                               Painscale,                               Symptom_Accident,                               Date_Of_Accident,                               Accident_Reported,                               When,                               Where,                               Attorney_accident,                               TypeOfAccident,                               NameOfAttorney,                               phone_Number,                               Fault_accident,                               Insurance,                               Insurance_phone,                               Name_ph,                               policy,                               Name_health,                               Health_phone,                               prev_accident,                               Prev_When) VALUES (\"%@\", \"%@\", \"%@\",\"%@\", \"%@\", \"%@\",\"%@\", \"%@\", \"%@\",\"%@\", \"%@\", \"%@\",\"%@\", \"%@\", \"%@\",\"%@\", \"%@\", \"%@\", \"%@\", \"%@\", \"%@\", \"%@\", \"%@\", \"%@\",\"%@\", \"%@\", \"%@\",\"%@\", \"%@\", \"%@\", \"%@\", \"%@\", \"%@\", \"%@\", \"%@\", \"%@\",\"%@\", \"%@\", \"%@\",\"%@\", \"%@\", \"%@\", \"%@\", \"%@\", \"%@\", \"%@\", \"%@\", \"%@\",\"%@\")", [recorddict objectForKey:@"name"]];
                              
                               
                  */
        
        const char *insert_stmt = [insertSQL UTF8String];
        
        sqlite3_prepare_v2(PatientDB, insert_stmt, -1, &statement, NULL);
        if (sqlite3_step(statement) == SQLITE_DONE)
        {
            
        } else {
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Failed to insert data."];
            
            //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
            [alert setDestructiveButtonWithTitle:@"x" block:nil];
            [alert show];
           
        }
        sqlite3_finalize(statement);
        sqlite3_close(PatientDB);
    }
}
@end
