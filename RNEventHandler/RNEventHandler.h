//
//  RNEventHandler.h
//  RNEventHandler
//
//  Created by koutalou on 2017/09/28.
//  Copyright © 2017年 koutalou. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <sys/utsname.h>
#import "RNEventHandler-Swift.h"

#if __has_include(<React/RCTAssert.h>)
#import <React/RCTBridgeModule.h>
#else
#import "RCTBridgeModule.h"
#endif

@interface RNEventHandler : NSObject <RCTBridgeModule, EventHandlerDelegate>

@end

