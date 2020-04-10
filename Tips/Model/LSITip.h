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

@property (nonatomic, readonly) NSString *name;
@property (nonatomic, readonly) double total; // no star because not an object but its a primitive value
@property (nonatomic, readonly) NSInteger splitCount; // same here
@property (nonatomic, readonly) double tipPercentage;


@end

NS_ASSUME_NONNULL_END
