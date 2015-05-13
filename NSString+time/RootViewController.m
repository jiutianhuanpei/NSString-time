//
//  RootViewController.m
//  NSString+time
//
//  Created by 沈红榜 on 15/5/13.
//  Copyright (c) 2015年 沈红榜. All rights reserved.
//

#import "RootViewController.h"
#import "NSString+time.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 424 * self.view.frame.size.width / 675)];
    UIImage *image = [UIImage imageNamed:@"时间无则"];
    view.layer.contents = (__bridge id)(image.CGImage);
    [self.view addSubview:view];
    
    
    
    
    NSString *time = [NSString timeByTimestamp:1430207923];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(view.frame) + 50, view.frame.size.width, 30)];
    label.text = time;
    label.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:label];
    
    
}

@end
