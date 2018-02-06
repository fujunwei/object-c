//
//  ImageService.h
//  object-c-samples
//
//  Created by fujunwei on 05/02/2018.
//  Copyright © 2018 fujunwei. All rights reserved.
//

#ifndef ImageService_h
#define ImageService_h

@protocol ImageServiceDelegate<NSObject>
@required
-(void)didFetchImage:(NSURL *)url;
@end

@interface ImageService : NSObject
-(void)fetchImage;
@property (nonatomic, weak) id<ImageServiceDelegate> delegate;
@end

#endif /* ImageService_h */
