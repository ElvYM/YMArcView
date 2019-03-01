//
//  ViewController.m
//  YMArcView
//
//  Created by Y on 2018/11/26.
//  Copyright © 2018 YM. All rights reserved.
//

#import "ViewController.h"
#import "UIView+YMSemicircleView.h"
#import "TestView.h"
#define kWidth [UIScreen mainScreen].bounds.size.width
#define kHeight [UIScreen mainScreen].bounds.size.height

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    TestView *view = [TestView new];
    view.backgroundColor = [UIColor orangeColor];
    view.frame = CGRectMake(100, 200, kWidth - 100 * 2, 100);
    [self.view addSubview:view];
    
    [UIView ym_createSemicircleView:view CircleCount:10 TopRadius:7];
    
}


@end
