//
//  HistoryViewController.h
//  Protein Tracker
//
//  Created by Parmesh Bayappu on 9/25/14.
//  Copyright (c) 2014 Parmesh Bayappu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HistoryViewController : UIViewController{
    NSMutableArray * historyData;
}
@property (weak, nonatomic) IBOutlet UILabel *historyLabel;

-(void) setHistoryData: (NSMutableArray *) historyData1;
@end
