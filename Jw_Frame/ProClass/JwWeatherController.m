//
//  JwWeatherController.m
//  Jw_Frame
//
//  Created by Jw on 16/6/17.
//  Copyright © 2016年 Jw. All rights reserved.
//

#import "JwWeatherController.h"
#import "JwViewController.h"

@interface JwWeatherController ()

@end

@implementation JwWeatherController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    UIButton *button = [UIButton buttonWithType:(UIButtonTypeSystem)];
    button.frame = CGRectMake(100, 100, 100, 100);
    button.backgroundColor = [UIColor redColor];
    [self.view addSubview:button];
    
    [button addTarget:self action:@selector(buttonAction:) forControlEvents:(UIControlEventTouchUpInside)];
}

- (void)buttonAction:(UIButton *)button{
    JwViewController *viewVC = [[JwViewController alloc] init];
    [self.navigationController pushViewController:viewVC animated:YES];
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
