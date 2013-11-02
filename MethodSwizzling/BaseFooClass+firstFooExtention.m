//
//  BaseFooClass+firstFooExtention.m
//  MethodSwizzling
//
//  Created by Alex on 02.11.13.
//  Copyright (c) 2013 Alex. All rights reserved.
//

#import "BaseFooClass+firstFooExtention.h"
#import <objc/runtime.h>

@implementation BaseFooClass (firstFooExtention)

static char BASE_FOO_CLASS_SOME_BOOLEAN_KEY;
- (void)setSome_boolean:(BOOL)some_boolean
{
    NSNumber* value = [NSNumber numberWithBool:some_boolean];
    objc_setAssociatedObject(self, &BASE_FOO_CLASS_SOME_BOOLEAN_KEY, value, OBJC_ASSOCIATION_COPY);
}

- (BOOL)some_boolean
{
    return ((NSNumber*)objc_getAssociatedObject(self, &BASE_FOO_CLASS_SOME_BOOLEAN_KEY)).boolValue;
}

static char BASE_FOO_CLASS_SOME_INTEGER_KEY;
- (void)setSome_integer:(int)some_integer
{
    NSNumber* value = [NSNumber numberWithBool:some_integer];
    objc_setAssociatedObject(self, &BASE_FOO_CLASS_SOME_INTEGER_KEY, value, OBJC_ASSOCIATION_COPY);
}

- (int)some_integer
{
    return ((NSNumber*)objc_getAssociatedObject(self, &BASE_FOO_CLASS_SOME_INTEGER_KEY)).intValue;
}

static char BASE_FOO_CLASS_SOME_OBJECT_KEY;
- (void)setSome_object:(NSObject*)some_object
{
    objc_setAssociatedObject(self, &BASE_FOO_CLASS_SOME_OBJECT_KEY, some_object, OBJC_ASSOCIATION_COPY);
}

- (NSObject*)some_object
{
    return objc_getAssociatedObject(self, &BASE_FOO_CLASS_SOME_OBJECT_KEY);
}

- (void)myBaseFooMethodFirstFooExtension
{
    ALog(@"FIRST FOO EXTENSION BASE FOO METHOD STARTED");
    
    ALog(@"\nI just leave it here");
    
    [self myBaseFooMethodFirstFooExtension];
}

+ (void)load
{
    Method original, swizzled;
    
    original = class_getInstanceMethod(self, @selector(baseFooMethod));
    swizzled = class_getInstanceMethod(self, @selector(myBaseFooMethodFirstFooExtension));
    method_exchangeImplementations(original, swizzled);
}

@end
