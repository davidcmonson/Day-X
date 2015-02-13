//
//  DetailPageViewControllerDataSourceViewController.h
//  DayX
//
//  Created by Paul Shelley on 2/12/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailPageViewControllerDataSource : NSObject <UIPageViewControllerDataSource>

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController;
- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController;
- (UIViewController *)viewControllerAtIndex:(NSInteger) index;

@end
