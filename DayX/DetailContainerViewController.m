//
//  DetailContainerViewController.m
//  DayX
//
//  Created by Paul Shelley on 2/12/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "DetailContainerViewController.h"
#import "DetailPageViewControllerDataSource.h"
#import "EntryController.h"

@interface DetailContainerViewController ()

@property (nonatomic, strong) UIPageViewController * pageViewController;
@property (nonatomic, strong) DetailPageViewControllerDataSource *pageViewControllerDataSource;

@end

@implementation DetailContainerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.pageViewController = [[UIPageViewController alloc] initWithTransitionStyle:UIPageViewControllerTransitionStylePageCurl navigationOrientation:UIPageViewControllerNavigationOrientationHorizontal options:nil];
    
    self.pageViewControllerDataSource = [DetailPageViewControllerDataSource new];
    self.pageViewController.dataSource = self.pageViewControllerDataSource;
    
    NSArray * tempArray = [NSArray new];
    tempArray = @[[self.pageViewControllerDataSource viewControllerAtIndex:self.initialIndex]];
    
    [self.pageViewController setViewControllers:tempArray direction:UIPageViewControllerNavigationDirectionForward animated:YES completion:nil];
    
    [self addChildViewController:self.pageViewController];
    [self.view addSubview:self.pageViewController.view];
    [self.pageViewController didMoveToParentViewController:self];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
