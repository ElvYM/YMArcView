//
//  UIView+YMSemicircleView.h
//  YMArcView
//
//  Created by Y on 2018/11/26.
//  Copyright © 2018 YM. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (YMSemicircleView)
+ (void)ym_createSemicircleView:(UIView *)view CircleCount:(NSInteger)count TopRadius:(CGFloat)topRadius;
@end

NS_ASSUME_NONNULL_END
