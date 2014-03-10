//
//  neckmidbackdisability2ViewController.h
//  neckmidbackdisability
//
//  Created by DeemsysInc on 3/7/14.
//  Copyright (c) 2014 DeemsysInc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface neckmidbackdisability2ViewController : UIViewController
{
int aa,bb,result,cc;
float exe;
NSString *val10;
int move;
NSMutableDictionary*recorddict;


}
@property (strong, nonatomic) IBOutlet UIButton *sec101;
@property (strong, nonatomic) IBOutlet UIButton *sec102;
@property (strong, nonatomic) IBOutlet UIButton *sec103;
@property (strong, nonatomic) IBOutlet UIButton *sec104;
@property (strong, nonatomic) IBOutlet UIButton *sec105;
@property (strong, nonatomic) IBOutlet UIButton *sec106;
@property(strong,nonatomic) NSMutableDictionary*recorddict;
@property (strong, nonatomic) IBOutlet UILabel *disab;
@property (retain, nonatomic) IBOutlet UILabel *valuetext;

@property (strong, nonatomic) IBOutlet UIButton *save;

@end
