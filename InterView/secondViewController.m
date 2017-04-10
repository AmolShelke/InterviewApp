//
//  secondViewController.m
//  InterView
//
//  Created by Student 13 on 3/30/17.
//  Copyright © 2017 Felix. All rights reserved.
//

#import "secondViewController.h"

@interface secondViewController ()

@end

@implementation secondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *file=[[NSBundle mainBundle]pathForResource:@"PropertyList" ofType:@"plist"];
    NSDictionary *filedict=[NSDictionary dictionaryWithContentsOfFile:file];
    //NSLog(@"%@",filedict);
    self.hrQues=[filedict objectForKey:@"HR"];
    self.cQues=[filedict objectForKey:@"C"];
    self.cppQues=[filedict objectForKey:@"C++"];
    
    
    
    NSString *file1=[[NSBundle mainBundle]pathForResource:@"iosPropertyList" ofType:@"plist"];
    NSDictionary *filedict1=[NSDictionary dictionaryWithContentsOfFile:file1];
    self.objcQues=[filedict1 objectForKey:@"OBJ"];
    self.iosQues=[filedict1 objectForKey:@"IOS"];
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if([self.subName isEqualToString:@"HR"])
    {
        return self.hrQues.count;
    }
    else if([self.subName isEqualToString:@"C"])
    {
            return self.cQues.count;
    }
    else if([self.subName isEqualToString:@"C++"])
    {
        return self.cppQues.count;
    }
    else if([self.subName isEqualToString:@"OBJECTIVE C"])
    {
        return self.objcQues.count;
    }
    else
    {
        return self.iosQues.count;
    }
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    
    if([self.subName isEqualToString:@"HR"])
    {
        UIImage *img=[UIImage imageNamed:@"HR.jpeg"];
        UIImageView *imv=[[UIImageView alloc]initWithImage:img];
        
        cell.textLabel.text=[self.hrQues objectAtIndex:indexPath.row];
        cell.imageView.image=imv.image;
    }
    else if([self.subName isEqualToString:@"C"])
    {
        UIImage *img=[UIImage imageNamed:@"c.png"];
        UIImageView *imv=[[UIImageView alloc]initWithImage:img];
        
        cell.textLabel.text=[self.cQues objectAtIndex:indexPath.row];
         cell.imageView.image=imv.image;
    }
    else if([self.subName isEqualToString:@"C++"])
    {
        UIImage *img=[UIImage imageNamed:@"c++.png"];
        UIImageView *imv=[[UIImageView alloc]initWithImage:img];
        
        cell.textLabel.text=[self.cppQues objectAtIndex:indexPath.row];
        cell.imageView.image=imv.image;
    }
    else if([self.subName isEqualToString:@"OBJECTIVE C"])
    {
        UIImage *img=[UIImage imageNamed:@"objc.png"];
        UIImageView *imv=[[UIImageView alloc]initWithImage:img];
        
        
        cell.textLabel.text=[self.objcQues objectAtIndex:indexPath.row];
        cell.imageView.image=imv.image;
    }
    else
    {
        UIImage *img=[UIImage imageNamed:@"IOS.jpeg"];
        UIImageView *imv=[[UIImageView alloc]initWithImage:img];
        
        cell.textLabel.text=[self.iosQues objectAtIndex:indexPath.row];
        cell.imageView.image=imv.image;
    }
    return cell;
    
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell=[tableView cellForRowAtIndexPath:indexPath];
    thirdViewController *tvc=[self.storyboard instantiateViewControllerWithIdentifier:@"thirdViewController"];
    tvc.selques=cell.textLabel.text;
    tvc.row=indexPath.row;
    [self.navigationController pushViewController:tvc animated:YES];
    
    
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

@end
