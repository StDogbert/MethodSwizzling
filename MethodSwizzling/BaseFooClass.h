//
//  BaseFooClass.h
//  MethodSwizzling
//
//  Created by Alex on 02.11.13.
//  Copyright (c) 2013 Alex. All rights reserved.
//

#define ALog(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__)

@interface BaseFooClass : NSObject

@property NSString* base_foo_property;

- (void)baseFooMethod;
- (int)anotherBaseFooMethodWithParameter:(int)var;

@end
