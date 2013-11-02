//
//  BaseFooClass.m
//  MethodSwizzling
//
//  Created by Alex on 02.11.13.
//  Copyright (c) 2013 Alex. All rights reserved.
//

#import "BaseFooClass.h"

@implementation BaseFooClass

- (void)baseFooMethod
{
    ALog(@"Base foo method reporting!");
}

- (int)anotherBaseFooMethodWithParameter:(int)var
{
    return var;
}

@end
