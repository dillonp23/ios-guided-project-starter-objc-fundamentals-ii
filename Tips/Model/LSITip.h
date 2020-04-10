//
//  LSITip.h
//  Tips
//
//  Created by Dillon P on 4/9/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN


@interface LSITip : NSObject

// can only put copy keyword on something that confomrs to the asCopy protocol

@property (nonatomic, readonly, copy) NSString *name; // copy will make sure whatever is saved inside model object, its not version of string that can be changed by something else - due to mutability
@property (nonatomic, readonly) double total; // no star because not an object but its a primitive value
@property (nonatomic, readonly) NSInteger splitCount; // same here
@property (nonatomic, readonly) double tipPercentage;

- (instancetype)initWithName:(NSString *)name
                       total:(double)total
                  splitCount:(NSInteger)splitCount
               tipPercentage:(double)tipPercentage;

@end

NS_ASSUME_NONNULL_END
