//
//  Block.h
//  object-c-samples
//
//  Created by fujunwei on 05/02/2018.
//  Copyright © 2018 fujunwei. All rights reserved.
//

#ifndef Block_h
#define Block_h

@interface BlockSamples : NSObject
@property(copy, nonatomic)void (^callBack) (NSString*);
-(void)callbackAsParameter:(void (^)(NSString *name)) callback;
@end

#endif /* Block_h */
