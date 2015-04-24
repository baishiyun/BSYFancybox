//
//  BSYFancyboxView.m
//  BSYFancybox
//
//  Created by mac on 15/4/24.
//  Copyright (c) 2015年 mac. All rights reserved.
//

#import "BSYFancyboxView.h"

@implementation BSYFancyboxView
-(void)addOneButtonAndimage:(NSString *)image
{
    self.one = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.one setBackgroundImage:[UIImage imageNamed:@"camera"] forState:UIControlStateNormal];
    self.one.frame = CGRectMake(15, [UIScreen mainScreen].bounds.size.height/2-20, 70, 70);
    [self addSubview:self.one];

}
-(void)addTwoButtonAndimage:(NSString *)image
{
    self.two= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.two setBackgroundImage:[UIImage imageNamed:@"gallery"] forState:UIControlStateNormal];
    self.two.frame = CGRectMake([UIScreen mainScreen].bounds.size.width/1.3, [UIScreen mainScreen].bounds.size.height/2-20, 70, 70);
    [self addSubview:self.two];
}
-(void)addThreeButtonAndimage:(NSString *)image{

    self.three= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.three setBackgroundImage:[UIImage imageNamed:@"draw"] forState:UIControlStateNormal];
    self.three.frame = CGRectMake([UIScreen mainScreen].bounds.size.width/2-40, [UIScreen mainScreen].bounds.size.height/4.3, 70, 70);
    [self addSubview:self.three];
}
-(void)addFourButtonAndimage:(NSString *)image
{
    self.four= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.four setBackgroundImage:[UIImage imageNamed:@"dropbox"] forState:UIControlStateNormal];
    self.four.frame = CGRectMake([UIScreen mainScreen].bounds.size.width/2-40, [UIScreen mainScreen].bounds.size.height/1.48, 70, 70);
    [self addSubview:self.four];

}

-(void)addMaskButtonAndimage:(NSString *)Mask
{
    self.Mask = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.Mask.backgroundColor = [UIColor clearColor];
    self.Mask.frame = CGRectMake(80, [UIScreen mainScreen].bounds.size.height/2.9, [UIScreen mainScreen].bounds.size.width-160, [UIScreen mainScreen].bounds.size.width-160);
    [self addSubview:self.Mask];


}
@end
