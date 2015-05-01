//
//  BNRItemStore.h
//  Homepwner
//
//  Created by pivotal on 5/1/15.
//  Copyright (c) 2015 pivotal. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BNRItem;

@interface BNRItemStore : NSObject

@property (nonatomic, readonly, copy) NSArray *allItems;

+ (instancetype)sharedStore;
- (BNRItem *)createItem;

@end
