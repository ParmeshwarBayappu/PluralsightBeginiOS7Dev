//
//  ViewController.h
//  Protein Tracker
//
//  Created by Parmesh Bayappu on 9/25/14.
//  Copyright (c) 2014 Parmesh Bayappu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainViewController : UIViewController{
    int total;
    NSMutableArray * historyData;
}
@property (weak, nonatomic) IBOutlet UILabel *totalField;

@property (weak, nonatomic) IBOutlet UILabel *goalField;
@property (weak, nonatomic) IBOutlet UITextField *amountField;
- (IBAction)onAdd:(id)sender;
- (IBAction) unWind:(UIStoryboardSegue *)seque;
@end

