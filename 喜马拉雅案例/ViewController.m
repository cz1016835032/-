//
//  ViewController.m
//  喜马拉雅案例
//
//  Created by 曹泽 on 16/3/30.
//  Copyright © 2016年 曹泽. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIImageView *lastImgView;

@end

@implementation ViewController

//-(void)btnClick
//{
//}
- (void)viewDidLoad {
    [super viewDidLoad];
    
//    UIButton *btn=[[UIButton alloc]init];
//    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    CGFloat maxH=CGRectGetMaxY(self.lastImgView.frame);
    //设置UIScrollView的contentSize
    self.scrollView.contentSize=CGSizeMake(0,maxH);
    //设置默认滚动位置
    self.scrollView.contentOffset=CGPointMake(0, -74);
    //设置距离上面的始终有74的内边距
    self.scrollView.contentInset=UIEdgeInsetsMake(74, 0, 54, 0);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
