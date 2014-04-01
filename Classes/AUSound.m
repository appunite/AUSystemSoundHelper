//
//  AUSound.m
//  AUSystemSoundsHelper
//
//  Created by Piotr Bernad on 01.04.2014.
//  Copyright (c) 2014 Appunite. All rights reserved.
//

#import "AUSound.h"

@implementation AUSound

+ (id)soundSystemWithUID:(NSString *)uid fileName:(NSString *)fileName {
    AUSound *sound = [[AUSound alloc] init];
    [sound setUid:uid];
    [sound setFileName:fileName];
    return sound;
}

- (NSString *)cafFileName {
    return [[_fileName stringByReplacingOccurrencesOfString:@" " withString:@"_"] stringByAppendingString:@".caf"];
}

@end
