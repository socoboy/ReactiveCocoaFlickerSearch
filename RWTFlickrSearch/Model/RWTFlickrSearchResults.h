//
//  RWTFlickrSearchResults.h
//  RWTFlickrSearch
//
//  Created by Tung Duong Thanh on 1/20/15.
//  Copyright (c) 2015 Colin Eberhardt. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RWTFlickrSearchResults : NSObject

@property (nonatomic, strong) NSString *searchString;
@property (nonatomic, strong) NSArray *photos;
@property (nonatomic) NSUInteger totalResults;

@end
