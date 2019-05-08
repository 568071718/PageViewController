//
//  ViewController.m
//  pageViewController
//
//  Created by 路 on 2019/5/8.
//  Copyright © 2019年 路. All rights reserved.
//

#import "ViewController.h"
#import "DSHPageViewController.h"
#import "DemoController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    DemoController *vc1 = [[DemoController alloc] initWithIdentifier:28];
    DemoController *vc2 = [[DemoController alloc] initWithIdentifier:29];
    DemoController *vc3 = [[DemoController alloc] initWithIdentifier:30];
    NSArray *viewControllers = @[vc1 ,vc2 ,vc3];
    DSHPageViewController *pageViewController = [[DSHPageViewController alloc] initWithViewControllers:viewControllers currentViewControllerIndex:1];
    [self.view addSubview:pageViewController.view];
    pageViewController.view.frame = [UIScreen mainScreen].bounds;
    [self addChildViewController:pageViewController];
}

@end
