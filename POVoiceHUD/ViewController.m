//
//  ViewController.m
//  POVoiceHUD
//
//  Created by Polat Olu on 18/04/2013.
//  Copyright (c) 2013 Polat Olu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated {
    
    self.voiceHud = [[POVoiceHUD alloc] initWithParentView:self.view];
    self.voiceHud.title = @"Speak Now";

    [self.voiceHud setDelegate:self];
    [self.view addSubview:self.voiceHud];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Actions

- (IBAction)btnRecordTapped:(id)sender {
    [self.voiceHud startForFilePath:[NSString stringWithFormat:@"%@/Documents/MySound.caf", NSHomeDirectory()]];
}

#pragma mark - POVoiceHUD Delegate

- (void)POVoiceHUD:(POVoiceHUD *)voiceHUD voiceRecorded:(NSString *)recordPath length:(float)recordLength {
    NSLog(@"Sound recorded with file %@ for %.2f seconds", [recordPath lastPathComponent], recordLength);
}

- (void)voiceRecordCancelledByUser:(POVoiceHUD *)voiceHUD {
    NSLog(@"Voice recording cancelled for HUD: %@", voiceHUD);
}

@end
