//
//  FlickrSearchViewModel.m
//  RWTFlickrSearch
//
//  Created by Tung Duong Thanh on 1/19/15.
//  Copyright (c) 2015 Colin Eberhardt. All rights reserved.
//

#import "RWTFlickrSearchViewModel.h"
#import <ReactiveCocoa.h>
#import "RWTSearchResultsViewModel.h"

@interface RWTFlickrSearchViewModel ()
@property (nonatomic, weak) id<RWTViewModelServices> services;
- (void)initialize;
- (RACSignal *)executeSearchSignal;
@end

@implementation RWTFlickrSearchViewModel
- (instancetype)init {
    self = [super init];
    if (self) {
        [self initialize];
    }
    return self;
}

- (instancetype)initWithServices:(id<RWTViewModelServices>)services {
    self = [self init];
    if (self) {
        _services = services;
    }
    return self;
}

- (void)initialize {
    self.title = @"Flickr Search";
    
    RACSignal *validSearchSignal =
        [[RACObserve(self, searchText)
         map:^id(NSString *text) {
             return @(text.length > 3);
         }]
         distinctUntilChanged];
    self.executeSearch = [[RACCommand alloc] initWithEnabled:validSearchSignal
                                                 signalBlock:^RACSignal *(id input) {
                                                     return [self executeSearchSignal];
                                                 }];
}

- (RACSignal *)executeSearchSignal {
    return [[[self.services getFlickrSearchService]
             flickrSearchSignal:self.searchText]
             doNext:^(id result) {
                 RWTSearchResultsViewModel *resultViewModel = [[RWTSearchResultsViewModel alloc] initWithSearchResults:result services:self.services];
                 [self.services pushViewModel:resultViewModel];
             }];
}
@end
