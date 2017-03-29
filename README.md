# CYTabBar - 底部控制器
[![Platform](http://img.shields.io/badge/platform-ios-blue.svg?style=flat
             )](https://developer.apple.com/iphone/index.action)
[![Language](http://img.shields.io/badge/language-ObjC-brightgreen.svg?style=flat)](https://developer.apple.com/Objective-C)
<img src="http://wx1.sinaimg.cn/mw690/ade10dedgy1fdgf4qs610j20ku112n31.jpg" width="270" height="480"> 

## 一.  功能简介 - Introduction

- [x] 中间按钮可凸出 （bulge设为YES 否则不突出）
- [x] 中按钮可设置控制器 或 普通按钮 (Controller传入nil为普通按钮)
- [x] 二级页面不再添加tababr 
- [x] 小红点提醒 (当前控制器.tabBarItem.badgeValue = @"remind";)
- [x] 数字提醒用户(当前控制器.tabBarItem.badgeValue = @"100";)
- [x] 改变数字提醒背景颜色(当前控制器.tabBarItem.badgeColor = [UIColor xxxColor];)
- [x] 切换控制器 (当前tabBarController.selectedIndex = x(索引为添加控制器时的顺序);)
![(show)](http://github.com/zhangchunyu2016/CYTabBarDemo/show.png)
## 二.  安装 - Installation

- 暂不支持CocoaPods
- 手动导入：将项目中的“CYTabBar”文件夹拖入项目中
- 在AppDelegate中导入头文件 "CYTabBarController.h" 

```
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
self.window = [[UIWindow alloc]initWithFrame:[[UIScreen mainScreen]bounds]];

CYTabBarController * tabbar = [[CYTabBarController alloc]init];

[tabbar addChildController:[ViewController new] title:@"xx" imageName:@"xx" selectedImageName:@"xx"];

[tabbar addChildController:[ViewController2 new] title:@"xx" imageName:@"xx" selectedImageName:@"xx"];

[tabbar addCenterController:nil bulge:YES title:@"xx" imageName:@xx" selectedImageName:@"xx"];

self.window.rootViewController = tabbar;
[self.window makeKeyAndVisible];
return YES;
}
``

## 三.  要求 - Requirements

- ARC环境. - Requires ARC
- 竖屏.    - Vertical Screen


## 四.  更新历史 - Update History

- 2017.03.12  修复tabbar销毁的时候观察者移除问题


## 五.  更多 - More

- 如果你发现任何Bug 或者 新需求请issue我.

- 大家一起讨论一起学习进步.
 
- QQ : 707214577<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=707214577&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:707214577:52" alt="点击这里给我发消息" title="点击这里给我发消息"/></a>
  
