//
//  RWTFlickrSearch.h
//  RWTFlickrSearch
//
//  Created by Tung Duong Thanh on 1/20/15.
//  Copyright (c) 2015 Colin Eberhardt. All rights reserved.
//

#import <Foundation/Foundation.h>

@class RACSignal;

@protocol RWTFlickrSearch <NSObject>

- (RACSignal *)flickrSearchSignal:(NSString *)searchString;

@end
