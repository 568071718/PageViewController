//
//  ViewController.m
//  pageViewController
//
//  Created by 路 on 2019/5/8.
//  Copyright © 2019年 路. All rights reserved.
//

#import "ViewController.h"
#import "DSHPageViewController.h"
#import "Demo1Controller.h"
#import "Demo2Controller.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    layout.itemSize = CGSizeMake(80, 80);
    layout.sectionInset = UIEdgeInsetsMake(10, 10, 10, 10);
    layout.minimumLineSpacing = 10;
    layout.minimumInteritemSpacing = 10;
    Demo2Controller *vc1 = [[Demo2Controller alloc] initWithCollectionViewLayout:layout];
    Demo1Controller *vc2 = [[Demo1Controller alloc] initWithStyle:UITableViewStylePlain];
    Demo1Controller *vc3 = [[Demo1Controller alloc] initWithStyle:UITableViewStyleGrouped];
    NSArray *viewControllers = @[vc1 ,vc2 ,vc3];
    DSHPageViewController *pageViewController = [[DSHPageViewController alloc] initWithViewControllers:viewControllers];
    [self.view addSubview:pageViewController.view];
    pageViewController.view.frame = [UIScreen mainScreen].bounds;
    [self addChildViewController:pageViewController];
}

@end
