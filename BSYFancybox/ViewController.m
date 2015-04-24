//
//  ViewController.m
//  BSYFancybox
//
//  Created by mac on 15/4/24.
//  Copyright (c) 2015年 mac. All rights reserved.
//

#import "ViewController.h"
#import "BSYFancyboxView.h"
#import "OneTableViewController.h"
#include <CoreGraphics/CGBase.h>
#include <CoreGraphics/CGGeometry.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor colorWithRed:9/25.0 green:230/255.0 blue:249/255.0 alpha:0.5];
    self.button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.button.frame = CGRectMake(80, [UIScreen mainScreen].bounds.size.height/2.9, [UIScreen mainScreen].bounds.size.width-160, [UIScreen mainScreen].bounds.size.width-160);
    [self.button setBackgroundImage:[UIImage imageNamed:@"main_button"] forState:UIControlStateNormal];
    [self.view addSubview:self.button];
    
    [self.button addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    self.YESORNO = true;
}
-(void)click
{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1.0];
    [UIView setAnimationRepeatCount:0.0];
    self.button.transform=CGAffineTransformMakeRotation(M_PI*1/4);
    self.FancyboxView = [[BSYFancyboxView alloc]initWithFrame:CGRectMake(0,0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    self.FancyboxView.backgroundColor = [UIColor clearColor];
    [self.view addSubview:self.FancyboxView];
    [self.FancyboxView addOneButtonAndimage:nil];
    [self.FancyboxView addTwoButtonAndimage:nil];
    [self.FancyboxView addThreeButtonAndimage:nil];
    [self.FancyboxView addFourButtonAndimage:nil];
    [self.FancyboxView addMaskButtonAndimage:nil];
    [self.FancyboxView.Mask addTarget:self action:@selector(MaskClick) forControlEvents:UIControlEventTouchUpInside];
    [self.FancyboxView.one addTarget:self action:@selector(oneClick) forControlEvents:UIControlEventTouchUpInside];
    
    [self.FancyboxView.two addTarget:self action:@selector(twoClick) forControlEvents:UIControlEventTouchUpInside];
    [self.FancyboxView.three addTarget:self action:@selector(threeClick) forControlEvents:UIControlEventTouchUpInside];
    [self.FancyboxView.four addTarget:self action:@selector(fourClick) forControlEvents:UIControlEventTouchUpInside];
    [UIView commitAnimations];
}
-(void)MaskClick
{

    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1.0];
    [UIView setAnimationRepeatCount:0.0];
    self.button.transform=CGAffineTransformMakeRotation(M_PI*1);
    self.FancyboxView.frame = CGRectMake(0, [UIScreen mainScreen].bounds.size.height, [UIScreen mainScreen].bounds.size.width, 0);
    [UIView commitAnimations];
}

-(void)oneClick
{
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:[[OneTableViewController alloc]init]];
    [self presentViewController:nav animated:YES completion:nil];
}
-(void)twoClick
{
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:[[OneTableViewController alloc]init]];
    [self presentViewController:nav animated:YES completion:nil];
}
-(void)threeClick
{
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:[[OneTableViewController alloc]init]];
    [self presentViewController:nav animated:YES completion:nil];
}
-(void)fourClick
{
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:[[OneTableViewController alloc]init]];
    [self presentViewController:nav animated:YES completion:nil];
}
-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
      self.FancyboxView.frame = CGRectMake(0, [UIScreen mainScreen].bounds.size.height, [UIScreen mainScreen].bounds.size.width, 0);
 self.button.transform=CGAffineTransformMakeRotation(M_PI*1);
}
@end
