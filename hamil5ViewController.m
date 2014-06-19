//
//  hamil5ViewController.m
//  hamil
//
//  Created by Admin on 06/03/14.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//

#import "hamil5ViewController.h"

@interface hamil5ViewController ()

@end

@implementation hamil5ViewController
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
- (void)textFieldDatePicker:(TextFieldDatePicker *)textFieldDatePicker didSelectDate:(NSDate *)date
{
    //	NSLog(@"%@", date);
    
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    
    //	NSLog(@"begin editing");
}
- (IBAction)save:(id)sender
{
  // recorddict=[[NSMutableDictionary alloc]init];
    a=1;
    if (b1.selected)
    {
        [recorddict setValue:@"Right" forKey:@"Dugasright"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"Dugasright"];
    }
    if (b2.selected)
    {
        [recorddict setValue:@"Left" forKey:@"Dugasleft"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"Dugasleft"];
    }
    if (b3.selected)
    {
        [recorddict setValue:@"Right" forKey:@"Suprasright"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"Suprasright"];
    }
    if (b4.selected)
    {
        [recorddict setValue:@"Left" forKey:@"Suprasleft"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"Suprasleft"];
    }
    if (b5.selected)
    {
        [recorddict setValue:@"Right" forKey:@"codright"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"codright"];
    }
    if (b6.selected)
    {
        [recorddict setValue:@"Left" forKey:@"codleft"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"codleft"];
    }
    if (b7.selected)
    {
        [recorddict setValue:@"Right" forKey:@"speedright"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"speedright"];
    }
    if (b8.selected)
    {
        [recorddict setValue:@"Left" forKey:@"speedleft"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"speedleft"];
    }
    if (b9.selected)
    {
        [recorddict setValue:@"Right" forKey:@"yerright"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"yerright"];
    }
    if (b10.selected)
    {
        [recorddict setValue:@"Left" forKey:@"yerleft"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"yerleft"];
    }
    if (b11.selected)
    {
        [recorddict setValue:@"Right" forKey:@"el_tinright"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"el_tinright"];
    }
    if (b12.selected)
    {
        [recorddict setValue:@"Left" forKey:@"el_tinleft"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"el_tinleft"];
    }
    if (b13.selected)
    {
        [recorddict setValue:@"Right" forKey:@"ligamright"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"ligamright"];
    }
    if (b14.selected)
    {
        [recorddict setValue:@"Left" forKey:@"ligamleft"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"ligamleft"];
    }
    if (b15.selected)
    {
        [recorddict setValue:@"Right" forKey:@"golfersright"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"golfersright"];
    }
    if (b16.selected)
    {
        [recorddict setValue:@"Left" forKey:@"golfersleft"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"golfersleft"];
    }
    if (b17.selected)
    {
        [recorddict setValue:@"Right" forKey:@"tennisright"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"tennisright"];
    }
    if (b18.selected)
    {
        [recorddict setValue:@"Left" forKey:@"tennisleft"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"tennisleft"];
    }
    if (b19.selected)
    {
        [recorddict setValue:@"Right" forKey:@"wr_tinright"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"wr_tinright"];
    }
    if (b20.selected)
    {
        [recorddict setValue:@"Left" forKey:@"wr_tinleft"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"wr_tinleft"];
    }
    if (b21.selected)
    {
        [recorddict setValue:@"Right" forKey:@"phalright"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"phallright"];
    }
    if (b22.selected)
    {
        [recorddict setValue:@"Left" forKey:@"phalleft"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"phalleft"];
    }
    if (b23.selected)
    {
        [recorddict setValue:@"Right" forKey:@"finkright"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"finkright"];
    }
    if (b24.selected)
    {
        [recorddict setValue:@"Left" forKey:@"finkleft"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"finkleft"];
    }
    if (b25.selected)
    {
        [recorddict setValue:@"Right" forKey:@"braceright"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"braceright"];
    }
    if (b26.selected)
    {
        [recorddict setValue:@"Left" forKey:@"braceleft"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"braceleft"];
    }
    if (b27.selected)
    {
        [recorddict setValue:@"Blood refilling capacity in radial" forKey:@"allright"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"allright"];
    }
    if (b28.selected)
    {
        [recorddict setValue:@"Ulner artery bilaterally" forKey:@"allleft"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"allleft"];
    }
    if (b29.selected)
    {
        [recorddict setValue:@"Right" forKey:@"wr_valright"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"wr_valright"];
    }
    if (b30.selected)
    {
        [recorddict setValue:@"Left" forKey:@"wr_valleft"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"wr_valleft"];
    }
    if (b31.selected)
    {
        [recorddict setValue:@"Right" forKey:@"patright"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"patright"];
    }
    if (b32.selected)
    {
        [recorddict setValue:@"Left" forKey:@"patleft"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"patleft"];
    }
    if (b33.selected)
    {
        [recorddict setValue:@"Right" forKey:@"kn_draright"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"kn_draright"];
    }
    if (b34.selected)
    {
        [recorddict setValue:@"Left" forKey:@"kn_draleft"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"kn_draleft"];
    }
    if (b35.selected)
    {
        [recorddict setValue:@"Right" forKey:@"kn_valright"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"kn_valright"];
    }
    if (b36.selected)
    {
        [recorddict setValue:@"Left" forKey:@"kn_valleft"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"kn_valleft"];
    }
    if (b37.selected)
    {
        [recorddict setValue:@"Right" forKey:@"aplright"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"aplright"];
    }
    if (b38.selected)
    {
        [recorddict setValue:@"Left" forKey:@"aplleft"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"aplleft"];
    }
    if (b39.selected)
    {
        [recorddict setValue:@"Right" forKey:@"an_draright"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"an_draright"];
    }
    if (b40.selected)
    {
        [recorddict setValue:@"Left" forKey:@"an_draleft"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"an_draleft"];
    }
    if (b41.selected)
    {
        [recorddict setValue:@"Right" forKey:@"an_thomright"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"an_thomright"];
    }
    if (b42.selected)
    {
        [recorddict setValue:@"Left" forKey:@"an_thomleft"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"an_thomleft"];
    }
    if (b43.selected)
    {
        [recorddict setValue:@"Right" forKey:@"an_tinright"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"an_tinright"];
    }
    if (b44.selected)
    {
        [recorddict setValue:@"Left" forKey:@"an_tinleft"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"an_tinleft"];
    }
    if (b45.selected)
    {
        [recorddict setValue:@"Right" forKey:@"Strunright"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"Strunright"];
    }
    if (b46.selected)
    {
        [recorddict setValue:@"Left" forKey:@"Strunleft"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"Strunleft"];
    }
    if (b47.selected)
    {
        [recorddict setValue:@"Right" forKey:@"homright"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"homright"];
    }
    if (b48.selected)
    {
        [recorddict setValue:@"Left" forKey:@"homleft"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"homleft"];
    }
    if (b49.selected)
    {
        [recorddict setValue:@"Right" forKey:@"an_cluright"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"an_cluright"];
    }
    if (b50.selected)
    {
        [recorddict setValue:@"Left" forKey:@"an_cluleft"];
    }
    else
    {
        [recorddict setValue:@"" forKey:@"an_cluleft"];
    }
    NSLog(@"success final!!!%@",recorddict);
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
    [b35 release];
    [b36 release];
    [b37 release];
    [b38 release];
    [b39 release];
    [b40 release];
    [b41 release];
    [b42 release];
    [b43 release];
    [b44 release];
    [b45 release];
    [b46 release];
    [b47 release];
    [b48 release];
    [b49 release];
    [b50 release];
    [super dealloc];
}
@end
