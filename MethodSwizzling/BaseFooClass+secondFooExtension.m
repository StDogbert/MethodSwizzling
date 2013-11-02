//
//  BaseFooClass+secondFooExtension.m
//  MethodSwizzling
//
//  Created by Alex on 02.11.13.
//  Copyright (c) 2013 Alex. All rights reserved.
//

#import "BaseFooClass+secondFooExtension.h"

@implementation BaseFooClass (secondFooExtension)

ADD_DYNAMIC_PROPERTY(NSString*, message, setMessage)

- (void)myBaseFooMethodSecondFooExtension
{
    ALog(@"SECOND FOO EXTENSION BASE FOO METHOD STARTED");
    
    [self myBaseFooMethodSecondFooExtension];
    
    if (self.message.length) {
        ALog(@"\nI just leave this message here:\n%@", self.message);
    }
}

- (int)myAnotherBaseFooMethodWithParameterSecondFooExtension:(int)var
{
    return [self myAnotherBaseFooMethodWithParameterSecondFooExtension:var]*2;
}

+ (void)load
{
    Method original, swizzled;
    
    original = class_getInstanceMethod(self, @selector(baseFooMethod));
    swizzled = class_getInstanceMethod(self, @selector(myBaseFooMethodSecondFooExtension));
    method_exchangeImplementations(original, swizzled);
    
    original = class_getInstanceMethod(self, @selector(anotherBaseFooMethodWithParameter:));
    swizzled = class_getInstanceMethod(self, @selector(myAnotherBaseFooMethodWithParameterSecondFooExtension:));
    method_exchangeImplementations(original, swizzled);
}

@end
