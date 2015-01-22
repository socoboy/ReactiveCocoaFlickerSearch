//
//  RWTFlickrSearchResults.m
//  RWTFlickrSearch
//
//  Created by Tung Duong Thanh on 1/20/15.
//  Copyright (c) 2015 Colin Eberhardt. All rights reserved.
//

#import "RWTFlickrSearchResults.h"

@implementation RWTFlickrSearchResults

- (NSString *)description {
    return [NSString stringWithFormat:@"searchString=%@, totalResults=%lU, photos=%@", self.searchString, self.totalResults, self.photos];
}

@end
