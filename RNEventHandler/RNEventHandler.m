//
//  RNEventHandler.m
//  RNEventHandler
//
//  Created by koutalou on 2017/09/28.
//  Copyright © 2017年 koutalou. All rights reserved.
//

#import "RNEventHandler.h"

@implementation RNEventHandler {
    RCTResponseSenderBlock callback;
}

RCT_EXPORT_MODULE()

- (void)eventWithEventType:(enum NSInteger) eventType {
    self->callback(@[ [NSNull null], @{ @"eventType": [NSString stringWithFormat:@"%ld", eventType] } ]);
}

RCT_EXPORT_METHOD(watch:(NSDictionary*)dict findEvents:(RCTResponseSenderBlock)callback)
{
    EventHandlerImpl *eventHandler = [EventHandlerImpl shared];
    eventHandler.delegate = self;
    self->callback = callback;
}

@end
