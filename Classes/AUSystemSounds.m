//
//  AUSystemSounds.m
//  AUSystemSoundsHelper
//
//  Created by Piotr Bernad on 01.04.2014.
//  Copyright (c) 2014 Appunite. All rights reserved.
//

#import "AUSystemSounds.h"
#import <AudioToolbox/AudioToolbox.h>

@implementation AUSystemSounds

+ (NSArray *)smsSystemSounds {    
    return @[[AUSound soundSystemWithUID:@"1020" fileName:@"Anticipate"],
             [AUSound soundSystemWithUID:@"1021" fileName:@"Bloom"],
             [AUSound soundSystemWithUID:@"1022" fileName:@"Calypso"],
             [AUSound soundSystemWithUID:@"1023" fileName:@"Choo Choo"],
             [AUSound soundSystemWithUID:@"1024" fileName:@"Descent"],
             [AUSound soundSystemWithUID:@"1025" fileName:@"Fanfare"],
             [AUSound soundSystemWithUID:@"1026" fileName:@"Ladder"],
             [AUSound soundSystemWithUID:@"1027" fileName:@"Minuet"],
             [AUSound soundSystemWithUID:@"1028" fileName:@"News Flash"],
             [AUSound soundSystemWithUID:@"1029" fileName:@"Noir"],
             [AUSound soundSystemWithUID:@"1030" fileName:@"Sherwood Forest"],
             [AUSound soundSystemWithUID:@"1031" fileName:@"Spell"],
             [AUSound soundSystemWithUID:@"1032" fileName:@"Suspense"],
             [AUSound soundSystemWithUID:@"1033" fileName:@"Telegraph"],
             [AUSound soundSystemWithUID:@"1034" fileName:@"Tiptoes"],
             [AUSound soundSystemWithUID:@"1035" fileName:@"Typewriters"],
             [AUSound soundSystemWithUID:@"1036" fileName:@"Update"]
             ];
}

+ (void)playSoundWithUID:(NSString *)uid {
    AudioServicesPlaySystemSound([uid intValue]);
}

+ (void)playAUSound:(AUSound *)sound {
    [self playSoundWithUID:sound.uid];
}


/*

 
 */
@end
