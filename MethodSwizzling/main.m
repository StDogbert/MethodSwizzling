//
//  main.m
//  MethodSwizzling
//
//  Created by Alex on 02.11.13.
//  Copyright (c) 2013 Alex. All rights reserved.
//

#import "BaseFooClass.h"
#import "BaseFooClass+secondFooExtension.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        BaseFooClass* object = [[BaseFooClass alloc] init];
        object.message = @"My message";
        [object baseFooMethod];
    }
    
    return 0;
}

