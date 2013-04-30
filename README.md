# POVoiceHUD

`POVoiceHUD` is a HUD for voice recording on iOS devices. Its interface designed like Google Translate's Voice Input interface on mobile applications. It currently records 20 seconds of voice input and stores in a local file on the device. If user stops talking before 20 seconds, it stops recording.

## Screen Shot Sample

![](https://github.com/polatolu/POVoiceHUD/raw/master/POVoiceHUD_Sample_Screen_Shot.png)

## Usage

**1. On viewDidLoad event create the POVoiceHUD instance.**

    self.voiceHud = [[POVoiceHUD alloc] initWithParentView:self.view];
    self.voiceHud.title = @"Speak Now";

    [self.voiceHud setDelegate:self];
    [self.view addSubview:self.voiceHud];

**2. Use startForFilePath method to start recording.**

    [self.voiceHud startForFilePath:[NSString stringWithFormat:@"%@/Documents/MySound.caf", NSHomeDirectory()]];

**3. Done.**

POVoiceHUD will appear on your view after `startForFilePath` is called and will call appropriate delegate (POVoiceHUDDelegate) methods for notifying you.

## Required Frameworks

There are no 3rd party frameworks required for POVoiceHUD but you need to add some existing frameworks comes with iOS SDK.

- AVFoundation.framework
- AudioToolbox.framework
- CoreGraphics.framework
- QartzCore.framework

## Contribution

Anyone is free to use this project in both open source and commercial projects.
