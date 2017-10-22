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

typedef NS_ENUM(NSInteger, RNEHEventType) {
    RNEHEventTypeUserDidTakeScreenshot = 1,
};

@protocol EventHandlerDelegate <NSObject>
- (void)eventWithType:(NSInteger)type;
@end

@interface RNEventHandler : NSObject <RCTBridgeModule, EventHandlerDelegate>
@end

@interface EventHandlerImpl: NSObject
+ (EventHandlerImpl *)shared;
@property (nonatomic, weak) id<EventHandlerDelegate> delegate;

@end
