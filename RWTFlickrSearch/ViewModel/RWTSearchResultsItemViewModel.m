//
//  RWTSearchResultsItemViewModel.m
//  RWTFlickrSearch
//
//  Created by Tung Duong Thanh on 1/21/15.
//  Copyright (c) 2015 Colin Eberhardt. All rights reserved.
//

#import "RWTSearchResultsItemViewModel.h"
#import <ReactiveCocoa.h>
#import <ReactiveCocoa/RACEXTScope.h>
#import "RWTFlickrPhoto.h"

@interface RWTSearchResultsItemViewModel ()

@property (nonatomic, weak) id<RWTViewModelServices> services;
@property (nonatomic, strong) RWTFlickrPhoto *photo;

- (void)initialize;
@end

@implementation RWTSearchResultsItemViewModel

- (instancetype)initWithPhoto:(RWTFlickrPhoto *)photo services:(id<RWTViewModelServices>)services {
    self = [super init];
    if (self) {
        _title = photo.title;
        _url = photo.url;
        _services = services;
        _photo = photo;
        
        [self initialize];
    }
    return self;
}

- (void)initialize {
    RACSignal *fetchMetadata = [RACObserve(self, isVisible)
                                 filter:^BOOL(NSNumber *visible) {
                                     return visible.boolValue;
                                 }];
    
    @weakify(self);
    [fetchMetadata subscribeNext:^(id x) {
        @strongify(self);
        [self.services getFlickrSearchService] flick
    }];
}
@end
