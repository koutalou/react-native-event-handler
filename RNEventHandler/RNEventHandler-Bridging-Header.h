//
//  Use this file to import your target's public headers that you would like to expose to Swift.
//

#ifndef RNEventHandler_Bridging_Header_h
#define RNEventHandler_Bridging_Header_h

#if __has_include(<React/RCTAssert.h>)
#import <React/RCTBridgeModule.h>
#else
#import "RCTBridgeModule.h"
#endif

#endif
