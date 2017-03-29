//
//  ViewController.m
//  CYTabBarDemo
//
//  Created by 张春雨 on 2017/3/12.
//  Copyright © 2017年 张春雨. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBar.barTintColor = [UIColor whiteColor];
    self.navigationItem.title = self.tabBarItem.title;
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor blackColor]}];
    
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *btn  = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 100, 30)];
    btn.backgroundColor = [UIColor colorWithRed:86/255.0 green:149/255.0 blue:216/255.0 alpha:1];
    btn.center = self.view.center;
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)btnClick{
    UIViewController *vc = [UIViewController new];
    vc.view.backgroundColor = [UIColor whiteColor];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
