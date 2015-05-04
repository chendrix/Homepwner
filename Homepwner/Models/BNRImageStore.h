//
//  BNRImageStore.h
//  Homepwner
//
//  Created by Christopher Hendrix on 5/3/15.
//  Copyright (c) 2015 pivotal. All rights reserved.
//

#import <Foundation/Foundation.h>

@class UIImage;

@interface BNRImageStore : NSObject

+ (instancetype)sharedStore;

- (void)setImage:(UIImage *)image forKey:(NSString *)key;
- (UIImage *)imageForKey:(NSString *)key;
- (void)deleteImageForKey:(NSString *)key;

@end
