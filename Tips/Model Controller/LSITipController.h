//
//  LSITipController.h
//  Tips
//
//  Created by Dillon P on 4/9/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

@class LSITip; // application will build faster by doing this

NS_ASSUME_NONNULL_BEGIN

@interface LSITipController : NSObject

// first thing we want is the list of tips and we want it to be read only no writing to it, and also use copy becuase NSArray has a mutable counterpart
@property (nonatomic, readonly, copy) NSArray<LSITip *> *tips;
@property (nonatomic, readonly) NSUInteger tipCount; // will access internal array and ask or its count

- (LSITip *)tipAtIndex: (NSUInteger)index; // using encapsulation to access component of internal array without making fully available
-(void)addTip:(LSITip *)aTip; // use the "a" to differeniate between an internal tip

@end

NS_ASSUME_NONNULL_END
