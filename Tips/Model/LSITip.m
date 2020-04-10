//
//  LSITip.m
//  Tips
//
//  Created by Dillon P on 4/9/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "LSITip.h"

@implementation LSITip

- (instancetype)initWithName:(NSString *)name total:(double)total splitCount:(NSInteger)splitCount tipPercentage:(double)tipPercentage

{
    if (self = [super init]) {
        _name = name.copy; // if you want to access the instance property then you'll use the underscore
        _total = total;
        _splitCount = splitCount;
        _tipPercentage = tipPercentage;
    }
    return self;
}

@end
