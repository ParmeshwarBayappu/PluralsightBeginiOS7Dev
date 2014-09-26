//
//  HistoryViewController.m
//  Protein Tracker
//
//  Created by Parmesh Bayappu on 9/25/14.
//  Copyright (c) 2014 Parmesh Bayappu. All rights reserved.
//

#import "HistoryViewController.h"

@interface HistoryViewController ()

@end

@implementation HistoryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSMutableString * combStr = [[NSMutableString alloc] init];
    for (NSNumber * item in historyData) {
        [combStr appendFormat:@"%@\n", item];
    }
    self.historyLabel.text = combStr;
    
    NSString * temp = self.historyLabel.text;
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

-(void) setHistoryData:(NSMutableArray *)historyData1  {
    historyData = historyData1;
}
@end
