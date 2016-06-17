//
//  JwBackController.m
//  Jw_Frame
//
//  Created by Jw on 16/6/17.
//  Copyright © 2016年 Jw. All rights reserved.
//

#import "JwBackController.h"

@interface JwBackController ()

@end

@implementation JwBackController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.view.backgroundColor = [UIColor whiteColor];
    
    //右滑手势的代理
    self.navigationController.interactivePopGestureRecognizer.delegate = (id)self;
    
    UIBarButtonItem *backBar = [[UIBarButtonItem alloc] initWithImage:[[UIImage imageNamed:@"back"] imageWithRenderingMode:(UIImageRenderingModeAlwaysOriginal)] style:(UIBarButtonItemStylePlain) target:self action:@selector(backBarAction:)];
    self.navigationItem.leftBarButtonItem = backBar;
}

- (void)backBarAction:(UIBarButtonItem *)bar{
    [self.navigationController popViewControllerAnimated:YES];
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
