//
//  DSHPageViewController.h
//  pageViewController
//
//  Created by 路 on 2019/5/8.
//  Copyright © 2019年 路. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DSHPageViewController;
@protocol DSHPageViewControllerDelegate <NSObject>
@optional
- (void)pageViewController:(DSHPageViewController *)pageViewController currentViewControllerIndexDidChange:(NSInteger)currentViewControllerIndex;
@end

@interface DSHPageViewController : UIViewController

- (id)initWithViewControllers:(NSArray <UIViewController *>*)viewControllers;
- (id)initWithViewControllers:(NSArray <UIViewController *>*)viewControllers currentViewControllerIndex:(NSInteger)currentViewControllerIndex;
@property (strong ,nonatomic ,readonly) NSArray <UIViewController *>*viewControllers;
@property (readonly) UIScrollView *scrollView;

@property (weak ,nonatomic) id <DSHPageViewControllerDelegate>delegate;
@property (assign ,nonatomic) NSInteger currentViewControllerIndex;
- (void)setCurrentViewControllerIndex:(NSInteger)currentViewControllerIndex animated:(BOOL)animated;
@end
