//
//  LSITipController.m
//  Tips
//
//  Created by Dillon P on 4/9/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "LSITipController.h"
#import "../Model/LSITip.h" // use the .. to back out of the model controller folder, and then into the model folder this is why you should use groups without folders

// declare a private inteface to contain a private mutable array
@interface LSITipController () {
    // declare new instance property so we can change the array
    NSMutableArray *_internalTips;
}


@end

@implementation LSITipController

- (instancetype)init {
    if (self = [super init]) {
        _internalTips = [[NSMutableArray alloc] init];
        
#ifdef DEBUG // preprocessor language, will only include this code if in debug mode
        [self addTestData]; // only use this method in development
#endif
    }
    return self;
}

- (void)addTestData // a new method that doesn;t return anything
{
    [_internalTips addObject:[[LSITip alloc]
                              initWithName:@"Sushi"
                              total:200.0
                              splitCount:4
                              tipPercentage:20.0]]; // allocate is on a class of NSObject, need to import tip header into file
    [_internalTips addObject:[[LSITip alloc]
                              initWithName:@"Pizza"
                              total:30.0
                              splitCount:8
                              tipPercentage:25.0]];
}

- (NSArray<LSITip *> *)tips // contents of array conform to these types which is why we use the <type *> before the *
{
    return _internalTips.copy; // copy of a mutable thing is always an immutable thing because now different from one we were working with
}

- (NSUInteger)tipCount
{
    return _internalTips.count;
}

/* swift equivalent
 
 var tipCount: Uint {
    return tips.count
 }
 wed be using a computed property but all propertie in Objc are computed
 */

- (LSITip *)tipAtIndex:(NSUInteger)index
{
    return [_internalTips objectAtIndex:index]; // same syntax of this would be _internalTips[index]
}

- (void)addTip:(LSITip *)aTip
{
    [_internalTips addObject:aTip];
}


@end
