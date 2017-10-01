//
//  RNEventHandler.m
//  RNEventHandler
//
//  Created by koutalou on 2017/09/28.
//  Copyright © 2017年 koutalou. All rights reserved.
//

#import "RNEventHandler.h"

@implementation RNEventHandler <EventHandlerDelegate> {
    RCTResponseSenderBlock callback;
}

RCT_EXPORT_MODULE()

- (void)eventWithEventType:(EventType) eventType {
    self.callback(@[ [NSNull null], @{ @"eventType": [NSString stringWithFormat:@"", eventType] } ]);
}

RCT_EXPORT_METHOD(callFunc:(NSDictionary*)dict findEvents:(RCTResponseSenderBlock)callback)
{
    NSLog(@"dict: %@", dict);
    
    EventHandlerImpl *eventHandler = [EventHandlerImpl shared];
    eventHandler.delegate = self;
    self.callback = callback;
}

@end
