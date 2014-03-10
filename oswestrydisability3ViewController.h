//
//  oswestrydisability3ViewController.h
//  oswestrydisability
//
//  Created by DeemsysInc on 3/7/14.
//  Copyright (c) 2014 DeemsysInc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface oswestrydisability3ViewController : UIViewController
{
    NSMutableDictionary *recorddict;
NSString *seg1val,*seg2val,*seg3val,*seg4val;
}
@property (retain, nonatomic) IBOutlet UIButton *dontplay;
@property (retain, nonatomic) IBOutlet UITextField *sport;
@property (retain, nonatomic) IBOutlet UISegmentedControl *segp1;
@property (retain, nonatomic) IBOutlet UISegmentedControl *segp2;
@property (retain, nonatomic) IBOutlet UISegmentedControl *segp3;
@property (retain, nonatomic) IBOutlet UISegmentedControl *segp4;
@property(nonatomic,retain)NSMutableDictionary*recorddict;
@end
