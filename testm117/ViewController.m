//
//  ViewController.m
//  testm117
//
//  Created by Gargium on 5/23/16.
//  Copyright © 2016 Gargium. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController {
    NSURL *videoURL;
    AVPlayer *player;
    MPMoviePlayerController *moviePlayer;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.delegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];

    [self.delegate.mpcHandler setupPeerWithDisplayName:[UIDevice currentDevice].name];
    [self.delegate.mpcHandler setupSession];
    [self.delegate.mpcHandler advertiseSelf:YES];
    
//    NSString *moviePath = [[NSBundle mainBundle] pathForResource:@"video" ofType:@"mp4"];
//    videoURL = [[NSURL alloc] initFileURLWithPath:moviePath];
//    player = [[AVPlayer alloc] initWithURL:videoURL];
//    [player setActionAtItemEnd:AVPlayerActionAtItemEndNone];
//    [player setMuted:YES];
//    AVPlayerLayer *playerLayer = [[AVPlayerLayer alloc] initWithLayer:player];
//    [playerLayer setVideoGravity:AVLayerVideoGravityResizeAspectFill];
//    [playerLayer setZPosition:-1];
//    [playerLayer setFrame:self.view.frame];
//    [self.view.layer addSublayer:playerLayer];
//    [player play];
//    
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(loopVideo) name:AVPlayerItemDidPlayToEndTimeNotification object:nil];
//    
//    NSURL *videoURL = [[NSBundle mainBundle] URLForResource:@"video" withExtension:@"mov"];
    
    
    
    // Create and configure the movie player.
    NSURL *videoURL = [[NSBundle mainBundle] URLForResource:@"video" withExtension:@"mp4"];
    
    // Create and configure the movie player.
    moviePlayer = [[MPMoviePlayerController alloc] initWithContentURL:videoURL];
    
    moviePlayer.controlStyle = MPMovieControlStyleNone;
    moviePlayer.scalingMode = MPMovieScalingModeAspectFill;
    
    moviePlayer.view.frame = self.view.frame;
    
    [self.view insertSubview:moviePlayer.view atIndex:0];
    
   // [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(loopVideo) name:MPMoviePlayerPlaybackDidFinishNotification object:moviePlayer];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(moviePlayBackDidFinishedFromSetUnderway:) name:MPMoviePlayerPlaybackStateDidChangeNotification object:moviePlayer];
    

    
    [moviePlayer play];
    
    // Loop video.

 
    
}

-(void)moviePlayBackDidFinishedFromSetUnderway:(NSNotification *)dict{
    
    if (dict.object == moviePlayer) {
        NSInteger reason = [[dict.userInfo objectForKey:MPMoviePlayerPlaybackDidFinishReasonUserInfoKey] integerValue];
        if (reason == MPMovieFinishReasonPlaybackEnded)
        {
            [moviePlayer prepareToPlay];
            [moviePlayer play];
        }
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)loopVideo {
    [player seekToTime:kCMTimeZero];
    [player play];
}
- (IBAction)m117:(id)sender {
    
//    self.delegate = (AppDelegate*)[[UIApplication sharedApplication] delegate];
//    self.browser = [[MCBrowserViewController alloc] initWithServiceType:kServiceType session:self.delegate.session];
//    [self presentViewController:self.browser animated:YES completion:nil]
    
    if (self.delegate.mpcHandler.browserSession != nil) {
        [[self.delegate mpcHandler] setupBrowser];
        [[[self.delegate mpcHandler] browser] setDelegate:self];
        [self presentViewController:self.delegate.mpcHandler.browser animated:YES completion:nil];
    }
}


- (void)browserViewControllerWasCancelled:(MCBrowserViewController *)browserViewController {
    [self.delegate.mpcHandler.browser dismissViewControllerAnimated:YES completion:nil];
}

-(void)browserViewControllerDidFinish:(MCBrowserViewController *)browserViewController {
    NSLog(@"hi");
    [self.delegate.mpcHandler.browser dismissViewControllerAnimated:YES completion:nil];
}


@end
