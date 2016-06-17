//
//  JwTabBarController.m
//  Jw_Frame
//
//  Created by Jw on 16/6/17.
//  Copyright © 2016年 Jw. All rights reserved.
//

#import "JwTabBarController.h"
#import "JwAcer.h"
#import "JwWeatherController.h"
#import "JwSporterController.h"

@interface JwTabBarController ()<UITabBarControllerDelegate>

@end

@implementation JwTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.delegate = self;
    
    JwWeatherController *weahterVC = [[JwWeatherController alloc] init];
    JwSporterController *sporterVC = [[JwSporterController alloc] init];
    
    weahterVC.tabBarItem.image = [UIImage imageNamed:@"iconfont-tianqichaxun"];
    
    sporterVC.tabBarItem.image = [UIImage imageNamed:@"iconfont-yundong"];
    
    
    weahterVC.title = @"天气";
    sporterVC.title = @"运动";
    
    self.tabBar.tintColor = JwBColor;
    self.viewControllers = @[weahterVC, sporterVC];
    self.title = [(UIViewController *)self.viewControllers[0] title];
}

- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController{
    self.title = viewController.title;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
