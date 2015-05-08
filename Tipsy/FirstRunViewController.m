//
//  FirstRunViewController.m
//  Tipsy
//
//  Created by Justin Oakes on 5/7/15.
//  Copyright (c) 2015 Oklasoft. All rights reserved.
//

#import "FirstRunViewController.h"

@interface FirstRunViewController ()

@end

@implementation FirstRunViewController

static NSString const *sexSwitchKey = @"sexKey";
static NSString const *setUpKey = @"setUp";
static NSString const *weightKey = @"weightKey";

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)receavedTap:(id)sender {
    [self.weightTextField resignFirstResponder];
}

- (IBAction)setUpApp:(id)sender {
    NSUserDefaults *defaults = [[NSUserDefaults alloc] initWithSuiteName:@"group.com.oklasoft.tipsy"];
    
    [defaults setBool:self.sexSwitch.on forKey:[NSString stringWithFormat:@"%@", sexSwitchKey]];
    [defaults setFloat:[self.weightTextField.text floatValue] forKey:[NSString stringWithFormat:@"%@", weightKey]];
    [defaults setBool:YES forKey:[NSString stringWithFormat:@"%@", setUpKey]];
}

@end
