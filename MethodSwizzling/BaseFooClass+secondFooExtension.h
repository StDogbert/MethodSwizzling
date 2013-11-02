//
//  BaseFooClass+secondFooExtension.h
//  MethodSwizzling
//
//  Created by Alex on 02.11.13.
//  Copyright (c) 2013 Alex. All rights reserved.
//

#import "BaseFooClass.h"
#import "defines.h"

@interface BaseFooClass (secondFooExtension)

@property NSString* message;

- (void)myBaseFooMethodSecondFooExtension;
- (int)myAnotherBaseFooMethodWithParameterSecondFooExtension:(int)var;

@end
