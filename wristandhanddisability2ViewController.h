//
//  wristandhanddisability2ViewController.h
//  wristandhanddisability
//
//  Created by DeemsysInc on 3/5/14.
//  Copyright (c) 2014 DeemsysInc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface wristandhanddisability2ViewController : UIViewController
{
    int aa,bb,result,cc;
    float exe;
    NSString *val10;
    NSMutableDictionary*recorddict;
}
@property (strong, nonatomic) IBOutlet UIButton *sec101;
@property (strong, nonatomic) IBOutlet UIButton *sec102;
@property (strong, nonatomic) IBOutlet UIButton *sec103;
@property (strong, nonatomic) IBOutlet UIButton *sec104;
@property (strong, nonatomic) IBOutlet UIButton *sec105;
@property (strong, nonatomic) IBOutlet UIButton *sec106;
@property(strong,nonatomic) NSMutableDictionary*recorddict;
@property (retain, nonatomic) IBOutlet UISlider *painscale;
@property (retain, nonatomic) IBOutlet UILabel *painscalelab;
@property (retain, nonatomic) IBOutlet UILabel *disab;



@end
