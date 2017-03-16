# CYTabbar





/**

*  你可以这样来设置你的tabbar

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


