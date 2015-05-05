//
//  ViewController.m
//  Tipsy
//
//  Created by Justin Oakes on 5/1/15.
//  Copyright (c) 2015 Oklasoft. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    bool firstRun = [[NSUserDefaults standardUserDefaults] boolForKey:@"firstRun"];
    
    if (!firstRun) {
        UIView *setUpView = [[UIView alloc] initWithFrame:CGRectMake(10, CGRectGetHeight(self.view.frame) * 0.25, CGRectGetWidth(self.view.frame) - 20, 250)];
        setUpView.backgroundColor = [UIColor whiteColor];
        
        UILabel *setUpLabel = [[UILabel alloc] initWithFrame:CGRectMake((CGRectGetWidth(setUpView.frame) /2) - 75, 10, 150, 20)];
        setUpLabel.text = @"First Time Set up";
        
        UILabel *sexLabel = [[UILabel alloc] initWithFrame:CGRectMake(15, 75, 75, 20)];
        sexLabel.text = @"Sex";
        
        UILabel *weightLabel = [[UILabel alloc] initWithFrame:CGRectMake(15, 115, 75, 20)];
        weightLabel.text = @"Weight";
        
        UIButton *drinksButton = [UIButton buttonWithType:UIButtonTypeSystem];
        drinksButton.frame = CGRectMake((CGRectGetWidth(setUpView.frame) /2) - 87.5, CGRectGetHeight(setUpView.frame) - 65, 175, 75);
        drinksButton.titleLabel.text = @"Pick your favorite drinks";
        [drinksButton setTitle:@"Set your favorite drinks" forState:UIControlStateNormal];
        [setUpView addSubview:setUpLabel];
        [setUpView addSubview:sexLabel];
        [setUpView addSubview:weightLabel];
        [setUpView addSubview:drinksButton];
        [self.view addSubview:setUpView];
        
    }

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

}
@end
