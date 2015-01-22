//
//  RWTViewModelServices.h
//  RWTFlickrSearch
//
//  Created by Tung Duong Thanh on 1/20/15.
//  Copyright (c) 2015 Colin Eberhardt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RWTFlickrSearch.h"

@protocol RWTViewModelServices <NSObject>

- (id<RWTFlickrSearch>)getFlickrSearchService;
- (void)pushViewModel:(id)viewModel;

@end
