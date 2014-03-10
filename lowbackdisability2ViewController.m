//
//  lowbackdisability2ViewController.m
//  lowbackdisability
//
//  Created by DeemsysInc on 3/6/14.
//  Copyright (c) 2014 DeemsysInc. All rights reserved.
//

#import "lowbackdisability2ViewController.h"
#import "BlockAlertView.h"

@interface lowbackdisability2ViewController ()

@end

@implementation lowbackdisability2ViewController
@synthesize recorddict;
@synthesize sec101;
@synthesize sec102;
@synthesize sec103;
@synthesize sec104;
@synthesize sec105;
@synthesize sec106;
@synthesize comments;
@synthesize save;
@synthesize calculate;


@synthesize disab;
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
    NSString *countryFormat1 = @"(?:[A-Za-z0-9]+[A-Za-z0-9]*)";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
- (IBAction)first:(id)sender {
    
    val10=@"0";
    clicked1=1;
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
    noofattend=noofattend1+1;
    disab.text=[NSString stringWithFormat:@"( %d * 2) / ( %d * 10 ) = %f %% ADL ",result,noofattend,exe];
    
    
}
- (IBAction)second:(id)sender {
    val10=@"1";
    clicked1=1;
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
    noofattend=noofattend1+1;
    disab.text=[NSString stringWithFormat:@"( %d * 2) / ( %d * 10 ) = %f %% ADL ",result,noofattend,exe];
}
- (IBAction)third:(id)sender {
    val10=@"2";
    clicked1=1;
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
    noofattend=noofattend1+1;
    disab.text=[NSString stringWithFormat:@"( %d * 2) / ( %d * 10 ) = %f %% ADL ",result,noofattend,exe];
    
}
- (IBAction)fourth:(id)sender {
    val10=@"3";
    clicked1=1;
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
    noofattend=noofattend1+1;
    disab.text=[NSString stringWithFormat:@"( %d * 2) / ( %d * 10 ) = %f %% ADL ",result,noofattend,exe];
    
}
- (IBAction)fifth:(id)sender {
    val10=@"4";
    clicked1=1;
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
    noofattend=noofattend1+1;
     disab.text=[NSString stringWithFormat:@"( %d * 2) / ( %d * 10 ) = %f %% ADL ",result,noofattend,exe];
    
    
}
-(IBAction)sixth:(id)sender {
    val10=@"5";
    clicked1=1;
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
    noofattend=noofattend1+1;
     disab.text=[NSString stringWithFormat:@"( %d * 2) / ( %d * 10 ) = %f %% ADL ",result,noofattend,exe];
    
    
}

- (IBAction)disact:(id)sender
{
    NSNumber *a=[recorddict objectForKey:@"total1"];
    NSNumber* b=[recorddict objectForKey:@"total2"];
    aa=[a intValue];
    bb=[b intValue];
    cc=[val10 intValue];
    result=aa+bb+cc;
    int t=(aa+bb+cc)*2;
    result1=noofattend*10;
    exe=(float)(result)/(float)(result1);
    disab.text=[NSString stringWithFormat:@"( %d * 2) / ( %d * 10 ) = %f %% ADL ",result,noofattend,exe];
    [recorddict setValue:[NSString stringWithFormat:@"%d",t] forKey:@"part1"];
    [recorddict setValue:[NSString stringWithFormat:@"%d",result1] forKey:@"part2"];
    [recorddict setValue:[NSString stringWithFormat:@"%f",exe] forKey:@"answer"];
    [recorddict setValue:[NSString stringWithFormat:@"%d",noofattend] forKey:@"totalanswered"];
    [recorddict setValue:[NSString stringWithFormat:@"%d",result] forKey:@"totalvalue"];
}

- (IBAction)save:(id)sender
{
    move=1;
    NSString *temp1=[[comments.text stringByReplacingOccurrencesOfString:@"\n" withString:@" "]stringByReplacingOccurrencesOfString:@" " withString:@""];
    if ((temp1.length>0)&&([self validateNames:temp1]==1))
    {
        [recorddict setValue:comments.text forKey:@"comments"];
         [recorddict setValue:val10 forKey:@"sec10"];
        BlockAlertView *alert=[[BlockAlertView alloc]initWithTitle:@"Info!" message:@"Success."];
        [alert setDestructiveButtonWithTitle:@"x" block:nil];
        [alert show];
        

        NSLog(@"recorddict %@",recorddict);
        
    }
    else
    {
        move=0;
        BlockAlertView *alert=[[BlockAlertView alloc]initWithTitle:@"Oh snap!" message:@"Enter valid Comments"];
        [alert setDestructiveButtonWithTitle:@"x" block:nil];
        [alert show];
        
    }
   
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    val10=@"";
    noofattend1=0;
    noofattend=0;
    if ([[recorddict objectForKey:@"ssec1"]isEqualToString:@"selected"])
    {
        noofattend1+=1;
    }
    if ([[recorddict objectForKey:@"ssec2"]isEqualToString:@"selected"])
    {
        noofattend1+=1;
    }
    if ([[recorddict objectForKey:@"ssec3"]isEqualToString:@"selected"])
    {
        noofattend1+=1;
    }
    if ([[recorddict objectForKey:@"ssec4"]isEqualToString:@"selected"])
    {
        noofattend1+=1;
    }
    if ([[recorddict objectForKey:@"ssec5"]isEqualToString:@"selected"])
    {
        noofattend1+=1;
    }
    if ([[recorddict objectForKey:@"ssec6"]isEqualToString:@"selected"])
    {
        noofattend1+=1;
    }
    if ([[recorddict objectForKey:@"ssec7"]isEqualToString:@"selected"])
    {
        noofattend1+=1;
    }
    if ([[recorddict objectForKey:@"ssec8"]isEqualToString:@"selected"])
    {
        noofattend1+=1;
    }
    if ([[recorddict objectForKey:@"ssec9"]isEqualToString:@"selected"])
    {
        noofattend1+=1;
    }
    noofattend=noofattend1;
    exe=0;
    NSNumber *a=[recorddict objectForKey:@"total1"];
    NSNumber* b=[recorddict objectForKey:@"total2"];
     clicked1=0;
    aa=[a intValue];
    bb=[b intValue];
    cc=[val10 intValue];
    result=aa+bb+cc;
     disab.text=[NSString stringWithFormat:@"( %d * 2) / ( %d * 10 ) = %f %% ADL ",result,noofattend1,exe];
	// Do any additional setup after loading the view.
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
