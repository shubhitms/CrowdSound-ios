//
//  SCTTrackListViewController.h
//  CrowdSound
//
//  Created by Shubhit Singh on 1/2/14.
//  Copyright (c) 2014 Hype. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface SCTTrackListViewController : UITableViewController <AVAudioPlayerDelegate>

@property (nonatomic, strong) NSArray *tracks;
@property (nonatomic, strong) AVAudioPlayer *player;

@end
