//
//  FlickrSearchViewModel.m
//  RWTFlickrSearch
//
//  Created by Tung Duong Thanh on 1/19/15.
//  Copyright (c) 2015 Colin Eberhardt. All rights reserved.
//

#import "RWTFlickrSearchViewModel.h"
#import <ReactiveCocoa.h>

@interface RWTFlickrSearchViewModel ()
- (void)initialize;
@end

@implementation RWTFlickrSearchViewModel
- (instancetype)init {
    self = [super init];
    if (self) {
        [self initialize];
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
    [validSearchSignal subscribeNext:^(id x) {
        NSLog(@"Search text is valid %@", x);
    }];
}
@end
