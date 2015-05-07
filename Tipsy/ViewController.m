//
//  ViewController.m
//  Tipsy
//
//  Created by Justin Oakes on 5/1/15.
//  Copyright (c) 2015 Oklasoft. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property UIView *setUpView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    bool firstRun = [[NSUserDefaults standardUserDefaults] boolForKey:@"firstRun"];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

}



@end
