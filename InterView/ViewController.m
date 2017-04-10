//
//  ViewController.m
//  InterView
//
//  Created by Student P_04 on 30/03/17.
//  Copyright © 2017 Felix. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.subject=[NSArray arrayWithObjects:@"HR",@"C",@"C++",@"OBJECTIVE C",@"IOS", nil];
    self.ques=[NSArray arrayWithObjects:@"Contains 10 Questions",@"Contains 10 Questions",@"Contains 10 Questions",@"Contains 8 Questions",@"Contains 6 Questions", nil];
    self.img=[NSArray arrayWithObjects:@"HR.jpeg",@"C.png",@"C++.png",@"Objc.png",@"IOS.jpeg", nil];
    
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.subject.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell"];
    cell.textLabel.text=[self.subject objectAtIndex:indexPath.row];
    cell.detailTextLabel.text=[self.ques objectAtIndex:indexPath.row];
    
    UIImage *img=[UIImage imageNamed:[self.img objectAtIndex:indexPath.row]];
    
    UIImageView *imv=[[UIImageView alloc]initWithImage:img];
    cell.imageView.image=imv.image;
    
    
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell=[tableView cellForRowAtIndexPath:indexPath];
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    
    secondViewController *svc=[self.storyboard instantiateViewControllerWithIdentifier:@"secondViewController"];
    svc.subName=cell.textLabel.text;
    [self.navigationController pushViewController:svc animated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
