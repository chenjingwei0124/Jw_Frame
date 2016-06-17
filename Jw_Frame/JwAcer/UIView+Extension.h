//
//  UIView+Extension.h
//  Text
//
//  Created by Jw on 16/3/7.
//  Copyright © 2016年 Jw. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Extension)

@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@property (nonatomic, assign) CGFloat centerX;
@property (nonatomic, assign) CGFloat centerY;
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;
@property (nonatomic, assign) CGSize size;
@property (nonatomic, assign) CGPoint origin;

@property (nonatomic, readonly)UIViewController *viewController; //获取当前视图的Controller

- (void)applyBasicAnimation:(CABasicAnimation *)animation toLayer:(CALayer *)layer;

- (void)applyAnimationGroup:(CAAnimationGroup *)groupAnimation toLayer:(CALayer *)layer;

@end
