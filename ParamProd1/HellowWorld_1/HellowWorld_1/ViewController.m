//
//  ViewController.m
//  HellowWorld_1
//
//  Created by Parmesh Bayappu on 9/24/14.
//  Copyright (c) 2014 Parmesh Bayappu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () //TODO: Q: Why do we have this?

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.messageLabel.text = @"Hello iOS7!";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)OnButtonClicked:(id)sender {
    [self.view endEditing:YES];
    self.messageLabel.text = self.textField.text;// @"button was clicked";
}

//- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
//    [self.view endEditing:YES];
//}
@end
