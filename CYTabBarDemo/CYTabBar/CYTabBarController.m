//
//  CYTabBarController.m
//  蚁巢
//
//  Created by 张春雨 on 2016/11/17.
//  Copyright © 2016年 张春雨. All rights reserved.
//

#import "CYTabBarController.h"

@interface CYTabBarController ()
/** center button of place ( -1:none center button >=0:contain center button) */
@property(assign , nonatomic) NSInteger centerPlace;
/** Whether center button to bulge */
@property(assign , nonatomic,getter=is_bulge) BOOL bulge;
/** items */
@property (nonatomic,strong) NSMutableArray <UITabBarItem *>*items;
@end

@implementation CYTabBarController{int tabBarItemTag;BOOL firstInit;}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.centerPlace = -1;
}

/**
 *  Initialize selected
 */
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    if (!firstInit)
    {
        firstInit = YES;
        if (self.centerPlace != -1 && self.items[self.centerPlace].tag != -1){
            self.selectedIndex = self.centerPlace;
        }else{
            self.selectedIndex = 0;
        }
        [self.tabbar setValue:[NSNumber numberWithInteger:self.selectedIndex] forKey:@"selectButtoIndex"];
    }
}

/**
 *  Add other button for child’s controller
 */
- (void)addChildController:(id)Controller title:(NSString *)title imageName:(NSString *)imageName selectedImageName:(NSString *)selectedImageName{
    UIViewController *vc = [self findViewControllerWithobject:Controller];
    vc.tabBarItem.title = title;
    vc.tabBarItem.image = [UIImage imageNamed:imageName];
    vc.tabBarItem.selectedImage = [UIImage imageNamed:selectedImageName];
    
    vc.tabBarItem.tag = tabBarItemTag++;
    [self.items addObject:vc.tabBarItem];
    [self addChildViewController:Controller];
}

/**
 *  Add center button
 */
- (void)addCenterController:(id)Controller bulge:(BOOL)bulge title:(NSString *)title imageName:(NSString *)imageName selectedImageName:(NSString *)selectedImageName{
    _bulge = bulge;
    if (Controller) {
        [self addChildController:Controller title:title imageName:imageName selectedImageName:selectedImageName];
        self.centerPlace = tabBarItemTag-1;
    }else{
        UITabBarItem *item = [[UITabBarItem alloc]initWithTitle:title
                                                          image:[UIImage imageNamed:imageName]
                                                  selectedImage:[UIImage imageNamed:selectedImageName]];
        item.tag = -1;
        [self.items addObject:item];
        self.centerPlace = tabBarItemTag;
    }
}


/**
 *  getter
 */
- (CustomTabBar *)tabbar{
    if (!_tabbar && self.items.count) {
        _tabbar = [[CustomTabBar alloc]initWithFrame:self.tabBar.frame];
        [_tabbar setValue:[NSNumber numberWithBool:self.bulge] forKey:@"bulge"];
        [_tabbar setValue:self forKey:@"controller"];
        [_tabbar setValue:[NSNumber numberWithInteger:self.centerPlace] forKey:@"centerPlace"];
        _tabbar.items = self.items;
        
        //remove tabBar
        for (UIView *loop in self.tabBar.subviews) {
            [loop removeFromSuperview];
        }
        self.tabBar.hidden = YES;
        [self.tabBar removeFromSuperview];
    }
    return _tabbar;
}
- (NSMutableArray <UITabBarItem *>*)items{
    if(!_items){
        _items = [NSMutableArray array];
    }
    return _items;
}


/**
 *  Update current select controller
 */
- (void)setSelectedIndex:(NSUInteger)selectedIndex{
    if (selectedIndex >= self.viewControllers.count){
        @throw [NSException exceptionWithName:@"selectedTabbarError"
                                       reason:@"Don't have the controller can be used, index beyond the viewControllers."
                                     userInfo:nil];
    }
    [super setSelectedIndex:selectedIndex];
    UIViewController *viewController = [self findViewControllerWithobject:self.viewControllers[selectedIndex]];
    [self.tabbar removeFromSuperview];
    [viewController.view addSubview:self.tabbar];
}



/**
 *  Catch viewController
 */
- (UIViewController *)findViewControllerWithobject:(id)object{
    while ([object isKindOfClass:[UITabBarController class]] || [object isKindOfClass:[UINavigationController class]]){
        object = ((UITabBarController *)object).viewControllers.firstObject;
    }
    return object;
}

- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
}

@end
