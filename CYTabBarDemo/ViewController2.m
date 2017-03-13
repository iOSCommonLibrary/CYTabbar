//
//  ViewController2.m
//  CYTabBarDemo
//
//  Created by 张春雨 on 2017/3/13.
//  Copyright © 2017年 张春雨. All rights reserved.
//

#import "ViewController2.h"

@interface ViewController2 ()

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImageView *img = [[UIImageView alloc]initWithFrame:self.view.bounds];
    img.image = [UIImage imageNamed:@"IMG_1101"];
    img.contentMode =  UIViewContentModeScaleAspectFill;
    img.clipsToBounds = YES;
    [self.view addSubview:img];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)prefersStatusBarHidden
{
    return YES;
}

@end
