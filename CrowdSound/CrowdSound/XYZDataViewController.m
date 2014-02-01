//
//  XYZDataViewController.m
//  CrowdSound
//
//  Created by Shubhit Singh on 31/1/14.
//  Copyright (c) 2014 Hype. All rights reserved.
//

#import "XYZDataViewController.h"

@interface XYZDataViewController ()

@end

@implementation XYZDataViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.dataLabel.text = [self.dataObject description];
}

@end
