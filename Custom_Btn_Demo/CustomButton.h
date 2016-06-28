//
//  CustomButton.h
//  Custom_Btn_Demo
//
//  Created by admin on 16/6/28.
//  Copyright © 2016年 AlezJi. All rights reserved.
//

#import <UIKit/UIKit.h>


#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height


#define kButtonWidth  (kScreenWidth-80)/3



@interface CustomButton : UIButton


@property(strong,nonatomic)UILabel *textLabel;
@property(strong,nonatomic)UIImageView *imgView;

@end
