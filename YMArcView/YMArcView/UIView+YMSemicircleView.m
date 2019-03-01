//
//  UIView+YMSemicircleView.m
//  YMArcView
//
//  Created by Y on 2018/11/26.
//  Copyright © 2018 YM. All rights reserved.
//

#import "UIView+YMSemicircleView.h"

@implementation UIView (YMSemicircleView)
+ (void)ym_createSemicircleView:(UIView *)view CircleCount:(NSInteger)count TopRadius:(CGFloat)topRadius {
    
    CGFloat maxX = view.frame.size.width;
    CGFloat maxY = view.frame.size.height;
    CGFloat originX = 0;
    CGFloat originY = 0;
    CGFloat imgVW = view.frame.size.width;
    
    CGFloat radius = imgVW / (count * 2.0);
    
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(maxX, maxY - radius)];
    [path addLineToPoint:CGPointMake(maxX, originY + topRadius)];
    [path addArcWithCenter:CGPointMake(maxX - topRadius, originY + topRadius) radius:topRadius startAngle:M_PI_2 endAngle:M_PI_2 * 3 clockwise:NO];
    [path addLineToPoint:CGPointMake(originX + topRadius, originY)];
    [path addArcWithCenter:CGPointMake(originX + topRadius, originY + topRadius) radius:topRadius startAngle:M_PI_2 * 3 endAngle:M_PI clockwise:NO];
    [path addLineToPoint:CGPointMake(originX, maxY - radius)];
    
    CGFloat x = radius;
    CGFloat y = maxY - radius;
    while (x <= imgVW) {
        [path addArcWithCenter:CGPointMake(x, y) radius:radius startAngle:(float)M_PI endAngle:0 clockwise:NO];
        x += radius * 2;
    }
    
    
    [path closePath];
    
    // 设置线宽
    path.lineWidth = 2.5;
    
    // 设置填充颜色
        UIColor *fillColor = [UIColor greenColor];
        [fillColor set];
        [path fill];
    
    // 设置画笔颜色
    //    UIColor *strokeColor = [UIColor blueColor];
    //    [strokeColor set];
    
    // 根据我们设置的各个点连线
    [path stroke];
    
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = view.bounds;
    maskLayer.path = path.CGPath;
    view.layer.mask = maskLayer;
    
}
@end
