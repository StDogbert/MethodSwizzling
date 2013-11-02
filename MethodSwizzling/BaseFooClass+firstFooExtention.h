//
//  BaseFooClass+firstFooExtention.h
//  MethodSwizzling
//
//  Created by Alex on 02.11.13.
//  Copyright (c) 2013 Alex. All rights reserved.
//

#import "BaseFooClass.h"

@interface BaseFooClass (firstFooExtention)

@property BOOL some_boolean;

@property int some_integer;

@property NSObject* some_object;

- (void)myBaseFooMethodFirstFooExtension;

@end
