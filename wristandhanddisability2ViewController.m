//
//  wristandhanddisability2ViewController.m
//  wristandhanddisability
//
//  Created by DeemsysInc on 3/5/14.
//  Copyright (c) 2014 DeemsysInc. All rights reserved.
//

#import "wristandhanddisability2ViewController.h"
#import "BlockAlertView.h"

@interface wristandhanddisability2ViewController ()

@end

@implementation wristandhanddisability2ViewController
@synthesize recorddict;
@synthesize sec101;
@synthesize sec102;
@synthesize sec103;
@synthesize sec104;
@synthesize sec105;
@synthesize sec106;
@synthesize painscale;
@synthesize painscalelab;
@synthesize disab;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (IBAction)first:(id)sender {
    
    val10=@"0";
    [sec101 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [sec102 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec103 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec104 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec105 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec106 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    NSNumber *a=[recorddict objectForKey:@"total1"];
    NSNumber* b=[recorddict objectForKey:@"total2"];
     aa=[a intValue];
     bb=[b intValue];
     cc=[val10 intValue];
     result=aa+bb+cc;
    disab.text=[NSString stringWithFormat:@"%d / 50 = %%",result]                                                             ;
    
    
}
- (IBAction)second:(id)sender {
    val10=@"1";
    
    [sec102 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [sec101 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec103 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec104 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec105 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec106 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    NSNumber *a=[recorddict objectForKey:@"total1"];
    NSNumber* b=[recorddict objectForKey:@"total2"];
     aa=[a intValue];
     bb=[b intValue];
     cc=[val10 intValue];
     result=aa+bb+cc;
    disab.text=[NSString stringWithFormat:@"%d / 50 = %%",result]                                                             ;
}
- (IBAction)third:(id)sender {
    val10=@"2";
    [sec103 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [sec101 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec102 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec104 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec105 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec106 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    NSNumber *a=[recorddict objectForKey:@"total1"];
    NSNumber* b=[recorddict objectForKey:@"total2"];
     aa=[a intValue];
     bb=[b intValue];
     cc=[val10 intValue];
     result=aa+bb+cc;
    disab.text=[NSString stringWithFormat:@"%d / 50 = %%",result]                                                             ;
    
    
}
- (IBAction)fourth:(id)sender {
    val10=@"3";
    [sec104 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [sec101 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec102 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec103 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec105 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec106 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    NSNumber *a=[recorddict objectForKey:@"total1"];
    NSNumber* b=[recorddict objectForKey:@"total2"];
     aa=[a intValue];
     bb=[b intValue];
     cc=[val10 intValue];
     result=aa+bb+cc;
    disab.text=[NSString stringWithFormat:@"%d / 50 = %%",result]                                                             ;
    
    
}
- (IBAction)fifth:(id)sender {
    val10=@"4";
    [sec105 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [sec101 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec102 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec104 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec103 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec106 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    NSNumber *a=[recorddict objectForKey:@"total1"];
    NSNumber* b=[recorddict objectForKey:@"total2"];
     aa=[a intValue];
     bb=[b intValue];
     cc=[val10 intValue];
     result=aa+bb+cc;
    disab.text=[NSString stringWithFormat:@"%d / 50 = %%",result]                                                             ;
    
    
}
-(IBAction)sixth:(id)sender {
    val10=@"5";
    [sec106 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [sec101 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec102 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec104 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec103 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec105 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    NSNumber *a=[recorddict objectForKey:@"total1"];
    NSNumber* b=[recorddict objectForKey:@"total2"];
     aa=[a intValue];
     bb=[b intValue];
     cc=[val10 intValue];
     result=aa+bb+cc;
    disab.text=[NSString stringWithFormat:@"%d / 50 = %%",result]                                                             ;
    
    
}
- (IBAction)disact:(id)sender
{
    NSNumber *a=[recorddict objectForKey:@"total1"];
    NSNumber* b=[recorddict objectForKey:@"total2"];
     aa=[a intValue];
     bb=[b intValue];
     cc=[val10 intValue];
     result=aa+bb+cc;
     exe=(float)result/50;
    disab.text=[NSString stringWithFormat:@"%d / 50 = %f",result,exe];
}
- (IBAction)painscaleval:(id)sender {
    
    int val=(int)painscale.value;
    painscalelab.text=[NSString stringWithFormat:@"%d",val];
}
- (IBAction)save:(id)sender
{
    [recorddict setValue:val10 forKey:@"sec10"];
    [recorddict setValue:[NSString stringWithFormat:@"%f",exe] forKey:@"painratio"];
    [recorddict setValue:[NSString stringWithFormat:@"%d",result] forKey:@"total"];
    [recorddict setValue:painscalelab.text forKey:@"painscale"];
    NSLog(@"recorddict %@",recorddict);
    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Success."];
    
    
    [alert setDestructiveButtonWithTitle:@"x" block:nil];
    [alert show];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    val10=@"0";
    NSNumber *a=[recorddict objectForKey:@"total1"];
    NSNumber* b=[recorddict objectForKey:@"total2"];
     aa=[a intValue];
     bb=[b intValue];
     cc=[val10 intValue];
     result=aa+bb+cc;
    disab.text=[NSString stringWithFormat:@"%d / 50 = %%",result];
	// Do any additional setup after loading the view.
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
