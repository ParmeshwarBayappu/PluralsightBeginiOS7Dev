//
//  ViewController.m
//  Protein Tracker
//
//  Created by Parmesh Bayappu on 9/25/14.
//  Copyright (c) 2014 Parmesh Bayappu. All rights reserved.
//

#import "MainViewController.h"
#import "HistoryViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (id) initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    
    if (self) {
        historyData = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onAdd:(id)sender {
    long amount = self.amountField.text.integerValue;
    [historyData addObject:[NSNumber numberWithLong:amount]];
    
    total += amount;
    self.totalField.text = [NSString stringWithFormat:@"%d", total];
    
    NSLog(@"Amt %ld", amount);
}

-(void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}

-(IBAction)unWind:(UIStoryboardSegue *)seque {
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"showHistory"]) {
        HistoryViewController * destController = segue.destinationViewController;
        [destController setHistoryData:historyData];
    }
}
@end
