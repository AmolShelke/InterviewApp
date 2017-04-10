//
//  ViewController.h
//  InterView
//
//  Created by Student P_04 on 30/03/17.
//  Copyright © 2017 Felix. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "secondViewController.h"
@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property NSArray *subject;
@property NSArray *ques;
@property NSArray *img;

@end

