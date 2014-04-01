//
//  AUSound.h
//  AUSystemSoundsHelper
//
//  Created by Piotr Bernad on 01.04.2014.
//  Copyright (c) 2014 Appunite. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AUSound : NSObject

@property (strong, nonatomic) NSString *uid;
@property (strong, nonatomic) NSString *fileName;
@property (strong, nonatomic) NSString *cafFileName;

+ (id)soundSystemWithUID:(NSString *)uid fileName:(NSString *)fileName;

@end
