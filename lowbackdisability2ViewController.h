//
//  lowbackdisability2ViewController.h
//  lowbackdisability
//
//  Created by DeemsysInc on 3/6/14.
//  Copyright (c) 2014 DeemsysInc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface lowbackdisability2ViewController : UIViewController<UITextViewDelegate>
{
int aa,bb,result,cc;
float exe;
NSString *val10;
    int move;
NSMutableDictionary*recorddict;
    int noofattend,noofattend1;
    int result1;
    int clicked1;
    
}
@property (strong, nonatomic) IBOutlet UIButton *sec101;
@property (strong, nonatomic) IBOutlet UIButton *sec102;
@property (strong, nonatomic) IBOutlet UIButton *sec103;
@property (strong, nonatomic) IBOutlet UIButton *sec104;
@property (strong, nonatomic) IBOutlet UIButton *sec105;
@property (strong, nonatomic) IBOutlet UIButton *sec106;
@property(strong,nonatomic) NSMutableDictionary*recorddict;
@property (strong, nonatomic) IBOutlet UILabel *disab;
@property (strong, nonatomic) IBOutlet UIButton *calculate;
@property (strong, nonatomic) IBOutlet UITextView *comments;
@property (strong, nonatomic) IBOutlet UIButton *save;

@end
