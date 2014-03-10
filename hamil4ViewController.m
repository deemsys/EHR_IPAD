//
//  hamil4ViewController.m
//  hamil
//
//  Created by Admin on 05/03/14.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//

#import "hamil4ViewController.h"
#import "hamil5ViewController.h"

@interface hamil4ViewController ()

@end

@implementation hamil4ViewController
@synthesize recorddict;
-(IBAction)checkboxSelected:(UIButton*)sender {
    sender.selected = !sender.selected;
    if(sender.selected){
        [sender setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
    }
    else{
        [sender setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    }
}
- (IBAction)next:(id)sender
{
   // recorddict=[[NSMutableDictionary alloc]init];
   
   
    a=1;
    if (b1.selected)
    {
        [recorddict setValue:@"Right" forKey:@"Antelgiaright"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"Antelgiaright"];
    }
    if (b2.selected)
    {
        [recorddict setValue:@"Left" forKey:@"Antelgialeft"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"Antelgialeft"];
    }
    if (b3.selected)
    {
        [recorddict setValue:@"Right" forKey:@"Spinalright"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"Spinalright"];
    }
    if (b4.selected)
    {
        [recorddict setValue:@"Left" forKey:@"Spinalleft"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"Spinalleft"];
    }
    if (b5.selected)
    {
        [recorddict setValue:@"Right" forKey:@"lum_Valsalright"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"lum_Valsalright"];
    }
    if (b6.selected)
    {
        [recorddict setValue:@"Left" forKey:@"lum_Valsalleft"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"lum_Valsalleft"];
    }
    if (b7.selected)
    {
        [recorddict setValue:@"Right" forKey:@"Minorsright"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"Minorsright"];
    }
    if (b8.selected)
    {
        [recorddict setValue:@"Left" forKey:@"Minorsleft"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"Minorsleft"];
    }
    if (b9.selected)
    {
        [recorddict setValue:@"Right" forKey:@"Braggright"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"Braggright"];
    }
    if (b10.selected)
    {
        [recorddict setValue:@"Left" forKey:@"Braggleft"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"Braggleft"];
    }
    if (b11.selected)
    {
        [recorddict setValue:@"30-45-70" forKey:@"SLR1"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"SLR1"];
    }
    if (b12.selected)
    {
        [recorddict setValue:@"30-45-70" forKey:@"SLR2"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"SLR2"];
    }
    if (b13.selected)
    {
        [recorddict setValue:@"30-45-70" forKey:@"WLR1"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"WLR1"];
    }
    if (b14.selected)
    {
        [recorddict setValue:@"30-45-70" forKey:@"WLR2"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"WLR2"];
    }
    if (b15.selected)
    {
        [recorddict setValue:@"Right" forKey:@"Hooversright"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"Hooversright"];
    }
    if (b16.selected)
    {
        [recorddict setValue:@"Left" forKey:@"Hooversleft"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"Hooversleft"];
    }
    if (b17.selected)
    {
        [recorddict setValue:@"Right" forKey:@"dbllegright"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"dbllegright"];
    }
    if (b18.selected)
    {
        [recorddict setValue:@"Left" forKey:@"dbllegleft"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"dbllegleft"];
    }
    if (b19.selected)
    {
        [recorddict setValue:@"Right" forKey:@"Longright"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"Longright"];
    }
    if (b20.selected)
    {
        [recorddict setValue:@"Left" forKey:@"Longleft"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"Longleft"];
    }
    if (b21.selected)
    {
        [recorddict setValue:@"Right" forKey:@"Anvilright"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"Anvilright"];
    }
    if (b22.selected)
    {
        [recorddict setValue:@"Left" forKey:@"Anvilleft"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"Anvilleft"];
    }
    if (b23.selected)
    {
        [recorddict setValue:@"Right" forKey:@"thomasright"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"thomasright"];
    }
    if (b24.selected)
    {
        [recorddict setValue:@"Left" forKey:@"thomasleft"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"thomasleft"];
    }
    if (b25.selected)
    {
        [recorddict setValue:@"Right" forKey:@"milgramright"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"milgramright"];
    }
    if (b26.selected)
    {
        [recorddict setValue:@"Left" forKey:@"milgramleft"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"milgramleft"];
    }
    if (b27.selected)
    {
        [recorddict setValue:@"Right" forKey:@"Obersright"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"Obersright"];
    }
    if (b28.selected)
    {
        [recorddict setValue:@"Left" forKey:@"Obersleft"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"Obersleft"];
    }
    if (b29.selected)
    {
        [recorddict setValue:@"Right" forKey:@"lliaright"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"lliaright"];
    }
    if (b30.selected)
    {
        [recorddict setValue:@"Left" forKey:@"llialeft"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"llialeft"];
    }
    if (b31.selected)
    {
        [recorddict setValue:@"Right" forKey:@"yeomanright"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"yeomanright"];
    }
    if (b32.selected)
    {
        [recorddict setValue:@"Left" forKey:@"yeomanleft"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"yeomanleft"];
    }
    if (b33.selected)
    {
        [recorddict setValue:@"Long tibiafemur" forKey:@"Allis sign_right"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"Allis sign_right"];
    }
    if (b34.selected)
    {
        [recorddict setValue:@"Long tibia/femur" forKey:@"Allis sign_left"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"Allis sign_left"];
    }
              if(a==1)
             {
             [self performSegueWithIdentifier:@"hami6" sender:self];
             }
    
  // NSLog(@"succecc%@",recorddict);
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
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    
    if([identifier isEqual:@"hami6"])
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
    
    if ([segue.identifier isEqualToString:@"hami6"])
    {
        
        hamil5ViewController*destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        NSLog(@"recorddict in fifth %@",recorddict);
    }
    
    
}
- (void)dealloc {
    [b1 release];
    [b2 release];
    [b3 release];
    [b4 release];
    [b5 release];
    [b6 release];
    [b7 release];
    [b8 release];
    [b9 release];
    [b10 release];
    [b11 release];
    [b12 release];
    [b13 release];
    [b14 release];
    [b15 release];
    [b16 release];
    [b17 release];
    [b18 release];
    [b19 release];
    [b20 release];
    [b21 release];
    [b22 release];
    [b23 release];
    [b24 release];
    [b25 release];
    [b26 release];
    [b27 release];
    [b28 release];
    [b29 release];
    [b30 release];
    [b31 release];
    [b32 release];
    [b33 release];
    [b34 release];
    [super dealloc];
}
@end
