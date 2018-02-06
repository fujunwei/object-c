//
//  ImageService.m
//  object-c-samples
//
//  Created by fujunwei on 05/02/2018.
//  Copyright © 2018 fujunwei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ImageService.h"

@implementation ImageService

-(void)fetchImage
{
    NSURL* url = [[NSURL alloc] initWithString:@"http://"];
    [self.delegate didFetchImage:url];
}

@end
