//
//  BNREditItemDateController.m
//  Homepwner
//
//  Created by Christopher Hendrix on 5/3/15.
//  Copyright (c) 2015 pivotal. All rights reserved.
//

#import "BNREditItemDateController.h"

#import "BNRItem.h"

@interface BNREditItemDateController ()
@property (weak, nonatomic) IBOutlet UIDatePicker *dateField;

@end

@implementation BNREditItemDateController

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.navigationItem.title = @"Edit Date Created";
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    BNRItem *item = self.item;
    
    self.dateField.date = item.dateCreated;
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    
    [self.view endEditing:YES];
    
    BNRItem *item = self.item;
    item.dateCreated = self.dateField.date;
}


@end
