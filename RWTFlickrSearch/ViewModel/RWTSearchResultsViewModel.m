//
//  RWTSearchResultsViewModel.m
//  RWTFlickrSearch
//
//  Created by Tung Duong Thanh on 1/21/15.
//  Copyright (c) 2015 Colin Eberhardt. All rights reserved.
//

#import "RWTSearchResultsViewModel.h"
#import "RWTFlickrSearchResults.h"

@implementation RWTSearchResultsViewModel

- (instancetype)initWithSearchResults:(RWTFlickrSearchResults *)results services:(id<RWTViewModelServices>)services {
    self = [self init];
    if (self) {
        _title = results.searchString;
        _searchResults = results.photos;
    }
    return self;
}

@end
