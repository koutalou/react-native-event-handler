//
//  RNEventHandler.h
//  RNEventHandler
//
//  Created by koutalou on 2017/09/28.
//  Copyright © 2017年 koutalou. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <sys/utsname.h>

#if __has_include(<React/RCTAssert.h>)
#import <React/RCTBridgeModule.h>
#else
#import "RCTBridgeModule.h"
#endif

@interface RCT_EXTERN_MODULE(RNEventHandler, NSObject)

RCT_EXTERN_METHOD(watch:(RCTResponseSenderBlock)callback)

@end
