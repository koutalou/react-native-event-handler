//
//  RNEventHandler.m
//  RNEventHandler
//
//  Created by koutalou on 2017/09/28.
//  Copyright © 2017年 koutalou. All rights reserved.
//

#import "RNEventHandler.h"

@implementation RNEventHandler  {
    RCTResponseSenderBlock callback;
}

RCT_EXPORT_MODULE()

- (void)eventWithType:(NSInteger) type {
    self->callback(@[ [NSNull null], @{ @"eventType": [NSNumber numberWithInteger:type] } ]);
}

RCT_EXPORT_METHOD(watch:(RCTResponseSenderBlock)callback)
{
    EventHandlerImpl *eventHandler = [EventHandlerImpl shared];
    eventHandler.delegate = self;
    self->callback = callback;
}

@end

@implementation EventHandlerImpl

+ (EventHandlerImpl *)shared
{
    static EventHandlerImpl *sharedSingleton;
    static dispatch_once_t oncePredicate;
    
    dispatch_once(&oncePredicate, ^{
        sharedSingleton = [[EventHandlerImpl alloc] init];
    });
    
    return sharedSingleton;
}

- (id)init {
    self = [super init];
    if (self) {
        [self setupObserver];
    }
    return self;
}

- (void)setupObserver
{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(notification:) name:UIApplicationUserDidTakeScreenshotNotification object:nil];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self.delegate eventWithType: RNEHEventTypeUserDidTakeScreenshot];
    });
}

- (void)teardownObserver
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)notification:(NSNotification *)notification
{
    [self.delegate eventWithType: RNEHEventTypeUserDidTakeScreenshot];
}

@end
