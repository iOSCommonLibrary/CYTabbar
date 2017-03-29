//
//  CYTabBarController.h
//  蚁巢
//
//  Created by 张春雨 on 2016/11/17.
//  Copyright © 2016年 张春雨. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomTabBar.h"

/**
 *  READNE

 *  中间按钮可以 设置为 [控制器 或 普通触发事件的按钮]     
 *  ----> 只需要设置为普通按钮的话，Controller传入nil即可
 
 
 *  中间按钮可以 设置为 [圆形凸出 或 普通]
 *  ----> 圆形凸出 bulge传入YES  普通 bulge传入NO
 
 
 *  如果你只是想小红点提醒用户
 *  ----> 可以设置控制器的 tabBarItem.badgeValue 为remind
 *  ----> Controller.tabBarItem.badgeValue = @"remind";
 

 *  如果你想以数字提醒用户
 *  ----> 可以设置控制器的 tabBarItem.badgeValue 为字符串
 *  ----> Controller.tabBarItem.badgeValue = @"100";
 
 
 *  如果你想切换控制器
 *  ----> 可以设置控制器的 selectedIndex 为数字
 *  ----> tabBarController.selectedIndex = x(索引为添加控制器时的顺序);
 

 *  如果你想改变提醒背景颜色
 *  ----> 可以设置控制器的 tabBarItem.badgeColor 为一个颜色
 *  ----> Controller.tabBarItem.badgeColor = [UIColor xxxColor];
 */


@interface CYTabBarController : UITabBarController
/** 自定义的tabbar */
@property (strong , nonatomic) CustomTabBar* tabbar;

/**
 * 添加子控制器
 * @param Controller          需管理的子控制器
 * @param title               底部文字
 * @param imageName           未选中的图片名
 * @param selectedImageName   选中的图片名
 */
- (void)addChildController:(id)Controller
                        title:(NSString *)title
                    imageName:(NSString *)imageName
            selectedImageName:(NSString *)selectedImageName;

/**
 * 设置中间按钮
 * @param Controller          需管理的子控制器
 * @param title               底部文字
 * @param imageName           未选中的图片名
 * @param selectedImageName   选中的图片名
 */
- (void)addCenterController:(id)Controller
                      bulge:(BOOL)bulge
                     title:(NSString *)title
                 imageName:(NSString *)imageName
         selectedImageName:(NSString *)selectedImageName;

@end
