//
//  XYZModelController.h
//  CrowdSound
//
//  Created by Shubhit Singh on 31/1/14.
//  Copyright (c) 2014 Hype. All rights reserved.
//

#import <UIKit/UIKit.h>

@class XYZDataViewController;

@interface XYZModelController : NSObject <UIPageViewControllerDataSource>

- (XYZDataViewController *)viewControllerAtIndex:(NSUInteger)index storyboard:(UIStoryboard *)storyboard;
- (NSUInteger)indexOfViewController:(XYZDataViewController *)viewController;

@end
