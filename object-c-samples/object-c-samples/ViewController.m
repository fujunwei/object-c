//
//  ViewController.m
//  object-c-samples
//
//  Created by fujunwei on 05/02/2018.
//  Copyright © 2018 fujunwei. All rights reserved.
//

#import "ViewController.h"
#import "Block.h"
#import "dynamic.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
    ImageService* imageService = [[ImageService alloc] init];
    imageService.delegate = self;
    [imageService fetchImage];
    
    // Block Testing
    BlockSamples* block = [[BlockSamples alloc] init];
    [block callbackAsParameter:^(NSString* name) {
        NSLog(name);
    }];
    
    // Dynamic Testing
    dynamic* dy1 = [[dynamic alloc] init];
    id dy2 = [[NSObject alloc] init];
    [dy1 func];
    [dy2 func];
    NSLog(@"====end viewDidLoad");
}

-(void) didFetchImage:(NSURL *)url {
    NSLog(@"=====begin to fetch image for network");
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
