//
//  ViewController.m
//  LRAnimateProcessView
//
//  Created by 1 on 2018/5/8.
//  Copyright © 2018年 luris. All rights reserved.
//

#import "ViewController.h"
#import "LRAnimationProgress.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    sleep(10);
    self.view.backgroundColor = [UIColor whiteColor];
    LRAnimationProgress *pv = [[LRAnimationProgress alloc] initWithFrame:CGRectMake(30, 100, 300, 20)];
    pv.backgroundColor = [UIColor clearColor];
    pv.layer.cornerRadius = 10;
    pv.progressTintColors = @[LRColorWithRGB(0xce2b2c),LRColorWithRGB(0xff734d)];
    pv.stripesWidth = 4;
    pv.stripesAnimated = YES;
    pv.hideStripes = NO;
    pv.numberOfNodes = 2;
    pv.hideAnnulus = NO;
    
    [pv setProgress:0.3 animated:YES];
    [self.view addSubview:pv];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [pv setProgress:0.5 animated:YES];
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [pv setProgress:0.7 animated:YES];
            
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                [pv setProgress:1.0 animated:YES];
            });
        });
    });
    
    
    LRAnimationProgress *pv2 = [[LRAnimationProgress alloc] initWithFrame:CGRectMake(30, 200, 300, 15)];
    pv2.backgroundColor = [UIColor clearColor];
    pv2.layer.cornerRadius = 10;
    pv2.progressTintColors = @[LRColorWithRGB(0xce2b2c),LRColorWithRGB(0xff734d)];
    pv2.hideStripes = YES;
    pv2.numberOfNodes = 4;
    pv2.hideAnnulus = NO;
    
    [pv2 setProgress:0.3 animated:YES];
    [self.view addSubview:pv2];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [pv2 setProgress:0.5 animated:YES];
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [pv2 setProgress:0.7 animated:YES];
            
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                [pv2 setProgress:1.0 animated:YES];
            });
        });
    });
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
