//
//  AUSystemSounds.h
//  AUSystemSoundsHelper
//
//  Created by Piotr Bernad on 01.04.2014.
//  Copyright (c) 2014 Appunite. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AUSound.h"

@interface AUSystemSounds : NSObject

+ (NSArray *)smsSystemSounds;

+ (void)playSoundWithUID:(NSString *)uid;
+ (void)playAUSound:(AUSound *)sound;

@end
