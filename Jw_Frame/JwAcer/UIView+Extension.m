//
//  UIView+Extension.m
//  Text
//
//  Created by Jw on 16/3/7.
//  Copyright © 2016年 Jw. All rights reserved.
//

#import "UIView+Extension.h"

@implementation UIView (Extension)

- (void)applyAnimationGroup:(CAAnimationGroup *)groupAnimation toLayer:(CALayer *)layer{
    [groupAnimation.animations enumerateObjectsUsingBlock:^(CAAnimation * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        CABasicAnimation *basicAnimation = (CABasicAnimation *)obj;
        [self applyBasicAnimation:basicAnimation toLayer:layer];
    }];
    
}

- (void)applyBasicAnimation:(CABasicAnimation *)animation toLayer:(CALayer *)layer{
    animation.fromValue = [layer.presentationLayer ?: layer valueForKeyPath:animation.keyPath];
    [CATransaction begin];
    [CATransaction setDisableActions:YES];
    [layer setValue:animation.toValue forKeyPath:animation.keyPath];
    [CATransaction commit];
    [layer addAnimation:animation forKey:nil];
}

- (UIViewController *)viewController{
    UIResponder *responder = self;
    while ((responder = [responder nextResponder])) {
        if ([responder isKindOfClass:[UIViewController class]]) {
            return (UIViewController *)responder;
        }
    }
    return nil;
}

- (void)setX:(CGFloat)x{
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

-(void)setY:(CGFloat)y{
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

- (CGFloat)x{
    return self.frame.origin.x;
}

- (CGFloat)y{
    return self.frame.origin.y;
}

- (void)setCenterX:(CGFloat)centerX{
    CGPoint center = self.center;
    center.x = centerX;
    self.center = center;
}

- (void)setCenterY:(CGFloat)centerY{
    CGPoint center = self.center;
    center.y = centerY;
    self.center = center;
}

- (CGFloat)centerX{
    return self.center.x;
}

- (CGFloat)centerY{
    return self.center.y;
}

- (void)setWidth:(CGFloat)width{
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (void)setHeight:(CGFloat)height{
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

- (CGFloat)width{
    return self.frame.size.width;
}

- (CGFloat)height{
    return self.frame.size.height;
}

- (void)setSize:(CGSize)size{
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

- (CGSize)size{
    return self.frame.size;
}

- (void)setOrigin:(CGPoint)origin{
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
}

- (CGPoint)origin{
    return self.frame.origin;
}

@end
