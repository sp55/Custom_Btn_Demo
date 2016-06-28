//
//  CustomButton.m
//  Custom_Btn_Demo
//
//  Created by admin on 16/6/28.
//  Copyright © 2016年 AlezJi. All rights reserved.
//

#import "CustomButton.h"




@implementation CustomButton

-(instancetype)initWithFrame:(CGRect)frame
{
    if (self=[super initWithFrame:frame]) {

        
        
        
        
        //textLabel
        self.textLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, frame.size.height-20, frame.size.width, 20)];
        self.textLabel.userInteractionEnabled  = YES;
        self.textLabel.textColor = [UIColor blackColor];
        self.textLabel.textAlignment = NSTextAlignmentCenter;
        [self addSubview:self.textLabel];
        
        //ImgView
        self.imgView=[[UIImageView alloc]initWithFrame:CGRectMake(10, 0 ,frame.size.width-20, frame.size.height-20)];
        [self addSubview:self.imgView];

    }
    return self;
}
@end
