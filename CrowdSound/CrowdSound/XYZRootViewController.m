//
//  XYZRootViewController.m
//  CrowdSound
//
//  Created by Shubhit Singh on 31/1/14.
//  Copyright (c) 2014 Hype. All rights reserved.
//

#import "XYZRootViewController.h"

#import "XYZModelController.h"

#import "XYZDataViewController.h"

@interface XYZRootViewController ()
@property (weak, nonatomic) IBOutlet UITextView *serverMessage;
@property (weak, nonatomic) IBOutlet UITextField *input;
@property (weak, nonatomic) IBOutlet UILabel *connectStatus;

@property (nonatomic, readwrite) SRWebSocket *warbleSocket;
@property (nonatomic, readwrite) BOOL socketReady;
@end

@implementation XYZRootViewController

- (void) viewWillAppear:(BOOL)animated
{
    self.socketReady = NO;
    self.warbleSocket = [[SRWebSocket alloc] initWithURL:[[NSURL alloc] initWithString:@"http://localhost:8080"]];
    self.warbleSocket.delegate = self;
    [self.warbleSocket open];
}

- (void) viewWillDisappear:(BOOL)animated
{
    [self.warbleSocket close];
    self.warbleSocket = nil;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)textFieldDidChange:(id)sender {
    if (self.socketReady) {
        [self.warbleSocket send:self.input.text];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// SRWebSocket handlers
- (void)webSocket:(SRWebSocket *)webSocket didReceiveMessage:(id)message
{
    self.serverMessage.text = (NSString *)message;
}

- (void)webSocketDidOpen:(SRWebSocket *)webSocket
{
    self.socketReady = YES;
    self.connectStatus.text = @"Connected";
    self.connectStatus.textColor = [UIColor greenColor];
}

- (void)webSocket:(SRWebSocket *)webSocket didCloseWithCode:(NSInteger)code reason:(NSString *)reason wasClean:(BOOL)wasClean
{
    self.socketReady = NO;
    self.connectStatus.text = @"Disconnected";
    self.connectStatus.textColor = [UIColor redColor];
}
@end
