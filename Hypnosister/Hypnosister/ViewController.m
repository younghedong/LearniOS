//
//  ViewController.m
//  Hypnosister
//
//  Created by hedong on 17/1/7.
//  Copyright © 2017年 hedong. All rights reserved.
//

#import "ViewController.h"

#import "BNRHypnosisView.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    CGRect firstFrame = [[UIScreen mainScreen] bounds];
    BNRHypnosisView *firstView = [[BNRHypnosisView alloc]
                                  initWithFrame:firstFrame];
    [[self view] addSubview:firstView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
