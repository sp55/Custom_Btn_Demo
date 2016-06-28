//
//  ViewController.m
//  Custom_Btn_Demo
//
//  Created by admin on 16/6/28.
//  Copyright © 2016年 AlezJi. All rights reserved.
//http://www.jianshu.com/p/c47e3ab33066
//自定义按钮

#define kTopHeight  kScreenWidth/2       //8个按钮的高度
#define kBtnWidth kScreenWidth/4         //按钮的宽度 4个一排 2排



#import "ViewController.h"
#import "CustomButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];



        NSArray *imgsArr = @[@"n_mn_home_sh",@"n_mn_home_fc",@"n_mn_home_fh",@"n_mn_home_dc",@"n_mn_home_qs",@"n_mn_home_tj",@"n_mn_home_ks"];
        NSArray *titlesArr = @[@"收货",@"发车",@"发货",@"到车",@"签收",@"统计",@"快速查询"];

    
    for (NSInteger i=0; i<titlesArr.count; i++) {
        
        CustomButton *btn = [[CustomButton alloc]initWithFrame: CGRectMake(i%4 *kBtnWidth,100+ i/4 *kTopHeight/2, kBtnWidth, kTopHeight/2)] ;
        [btn addTarget:self action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];
        btn.tag =100+i;
        btn.textLabel.text =titlesArr[i];
        btn.imgView.image = [UIImage imageNamed:imgsArr[i]];
        
//        btn.titleLabel.font = [UIFont systemFontOfSize:12];
//        [btn setImage:[UIImage imageNamed:imgsArr[i]] forState:UIControlStateNormal];
//        NSLog(@"titlesArr====%@btn.textLabel=====%@",titlesArr[i],btn.textLabel.text);
//        btn.titleLabel.text = titlesArr[i];
//        [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [self.view addSubview:btn];

    }

}

-(void)btnAction:(CustomButton *)btn
{
    NSLog(@"====%@",btn.textLabel.text);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
