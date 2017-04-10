//
//  secondViewController.h
//  InterView
//
//  Created by Student 13 on 3/30/17.
//  Copyright © 2017 Felix. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "thirdViewController.h"
@interface secondViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
@property NSString *subName;
@property NSArray *hrQues;
@property NSArray *cQues;
@property NSArray *cppQues;
@property NSArray *objcQues;
@property NSArray *iosQues;

@end
