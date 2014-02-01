//
//  XYZRootViewController.h
//  CrowdSound
//
//  Created by Shubhit Singh on 31/1/14.
//  Copyright (c) 2014 Hype. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <RestKit/RestKit.h>
#import "SRWebSocket.h"

@interface XYZRootViewController : UIViewController <UIPageViewControllerDelegate, NSStreamDelegate, SRWebSocketDelegate>

@property (weak, nonatomic) IBOutlet UITextField *inputRoom;
- (IBAction)roomJoinButton:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UISlider *sliderFun;
@property (strong, nonatomic) UIPageViewController *pageViewController;
@property NSInputStream *inputStream;
@property NSOutputStream *outputStream;

@end
