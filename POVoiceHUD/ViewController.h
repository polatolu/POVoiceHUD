//
//  ViewController.h
//  POVoiceHUD
//
//  Created by Polat Olu on 18/04/2013.
//  Copyright (c) 2013 Polat Olu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "POVoiceHUD.h"

@interface ViewController : UIViewController <POVoiceHUDDelegate>

@property (nonatomic, retain) POVoiceHUD *voiceHud;

- (IBAction)btnRecordTapped:(id)sender;

@end
