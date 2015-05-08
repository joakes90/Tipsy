//
//  ViewController.m
//  Tipsy
//
//  Created by Justin Oakes on 5/1/15.
//  Copyright (c) 2015 Oklasoft. All rights reserved.
//

#import "MainViewController.h"
#import "DrinksController.h"

@interface MainViewController ()

@property UIView *setUpView;
@end

@implementation MainViewController

static NSString const *sexSwitchKey = @"sexKey";
static NSString const *setUpKey = @"setUp";
static NSString const *weightKey = @"weightKey";

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

}

- (void)viewDidAppear:(BOOL)animated{
    
    NSUserDefaults *defaults = [[NSUserDefaults alloc] initWithSuiteName:@"group.com.oklasoft.tipsy"];
    bool firstRun = [defaults boolForKey:[NSString stringWithFormat:@"%@", setUpKey]];
    
    if (!firstRun) {
        [self performSegueWithIdentifier:@"firstRunSegue" sender:self];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

}

- (IBAction)unwindToMainView:(UIStoryboardSegue*)sender{
    
}
    



@end
