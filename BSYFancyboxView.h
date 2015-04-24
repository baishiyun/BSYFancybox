//
//  BSYFancyboxView.h
//  BSYFancybox
//
//  Created by mac on 15/4/24.
//  Copyright (c) 2015年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BSYFancyboxView : UIView
@property(nonatomic,strong) UIButton*one;
@property(nonatomic,strong) UIButton*two;
@property(nonatomic,strong) UIButton*three;
@property(nonatomic,strong) UIButton*four;
@property(nonatomic,strong) UIButton*Mask;

-(void)addOneButtonAndimage:(NSString *)image;
-(void)addTwoButtonAndimage:(NSString *)image;
-(void)addThreeButtonAndimage:(NSString *)image;
-(void)addFourButtonAndimage:(NSString *)image;
-(void)addMaskButtonAndimage:(NSString *)Mask;
@end
