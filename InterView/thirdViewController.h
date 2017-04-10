//
//  thirdViewController.h
//  InterView
//
//  Created by Student P_04 on 31/03/17.
//  Copyright © 2017 Felix. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface thirdViewController : UIViewController
@property NSString *selques;
@property (weak, nonatomic) IBOutlet UITextView *myView;
@property (weak, nonatomic) IBOutlet UILabel *myLabel;
@property NSInteger row;
@end
