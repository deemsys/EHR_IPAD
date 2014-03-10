//
//  oswestrydisability3ViewController.m
//  oswestrydisability
//
//  Created by DeemsysInc on 3/7/14.
//  Copyright (c) 2014 DeemsysInc. All rights reserved.
//

#import "oswestrydisability3ViewController.h"
#import "BlockAlertView.h"

@interface oswestrydisability3ViewController ()

@end

@implementation oswestrydisability3ViewController
@synthesize recorddict;
@synthesize segp1;
@synthesize segp2;
@synthesize segp3;
@synthesize segp4;
@synthesize sport;
@synthesize dontplay;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (IBAction)checkboxselected:(UIButton *)sender {
    
    sender.selected = !sender.selected;
    if(sender.selected){
        [sender setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
    }
    else{
        [sender setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    }
}
- (IBAction)seg1selected:(id)sender
{
    if (segp1.selectedSegmentIndex==0) {
        seg1val=@"0";
    }
    else if (segp1.selectedSegmentIndex==1) {
        seg1val=@"1";
    }
    
    else if (segp1.selectedSegmentIndex==2) {
        seg1val=@"2";
    }
    
    else if (segp1.selectedSegmentIndex==3) {
        seg1val=@"3";
    }
    else  if (segp1.selectedSegmentIndex==4) {
        seg1val=@"4";
    }
    
    
}
- (IBAction)seg2selected:(id)sender
{
    if (segp2.selectedSegmentIndex==0) {
        seg2val=@"0";
    }
    else if (segp2.selectedSegmentIndex==1) {
        seg2val=@"1";
    }
    
    else if (segp2.selectedSegmentIndex==2) {
        seg2val=@"2";
    }
    
    else if (segp2.selectedSegmentIndex==3) {
        seg2val=@"3";
    }
    else  if (segp2.selectedSegmentIndex==4) {
        seg2val=@"4";
    }
    
}
- (IBAction)seg3selected:(id)sender
{
    if (segp3.selectedSegmentIndex==0) {
        seg3val=@"0";
    }
    else if (segp3.selectedSegmentIndex==1) {
        seg3val=@"1";
    }
    
    else if (segp3.selectedSegmentIndex==2) {
        seg3val=@"2";
    }
    
    else if (segp3.selectedSegmentIndex==3) {
        seg3val=@"3";
    }
    else  if (segp3.selectedSegmentIndex==4) {
        seg3val=@"4";
    }
    
}
- (IBAction)seg4selected:(id)sender
{
    if (segp4.selectedSegmentIndex==0) {
        seg4val=@"0";
    }
    else if (segp4.selectedSegmentIndex==1) {
        seg4val=@"1";
    }
    
    else if (segp4.selectedSegmentIndex==2) {
        seg4val=@"2";
    }
    
    else if (segp4.selectedSegmentIndex==3) {
        seg4val=@"3";
    }
    else  if (segp4.selectedSegmentIndex==4) {
        seg4val=@"4";
    }
    
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    seg1val=@"";
    seg2val=@"";
    seg3val=@"";
    seg4val=@"";
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)save:(id)sender
{
    [recorddict setValue:sport.text forKey:@"sport"];
    [recorddict setValue:seg1val forKey:@"segsport1"];
    [recorddict setValue:seg2val forKey:@"segsport2"];
    [recorddict setValue:seg3val forKey:@"segsport3"];
    [recorddict setValue:seg4val forKey:@"segsport4"];
    if (dontplay.selected) {
        [recorddict setValue:@"I do not play a sport or an instrument" forKey:@"dontplay"];
    }
    else
    {
         [recorddict setValue:@"" forKey:@"dontplay"];
    }
    
    BlockAlertView *alert=[[BlockAlertView alloc]initWithTitle:@"Info!" message:@"Success."];
    [alert setDestructiveButtonWithTitle:@"x" block:nil];
    [alert show];
    NSLog(@"record dict %@",recorddict);
}

- (void)dealloc {
   
  
    [super dealloc];
}
@end
