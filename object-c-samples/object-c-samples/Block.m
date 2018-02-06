//
//  Block.m
//  object-c-samples
//
//  Created by fujunwei on 05/02/2018.
//  Copyright © 2018 fujunwei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Block.h"

@implementation BlockSamples
-(void)callbackAsParameter:(void (^)(NSString *name)) callback {
    callback(@"====calling block func");
    
    int (^add)(int a, int b) = ^(int a, int b) {
        return a+b;
    };
    
    int count = add(2, 3);
    NSLog(@"======the count of adding is %d", count);
}
@end
