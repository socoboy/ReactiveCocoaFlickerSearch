//
//  RWTSearchResultsItemViewModel.h
//  RWTFlickrSearch
//
//  Created by Tung Duong Thanh on 1/21/15.
//  Copyright (c) 2015 Colin Eberhardt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RWTViewModelServices.h"

@class RWTFlickrPhoto;

@interface RWTSearchResultsItemViewModel : NSObject

- (instancetype)initWithPhoto:(RWTFlickrPhoto *)photo
                     services:(id<RWTViewModelServices>)services;

@property (nonatomic) BOOL isVisible;
@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSURL *url;
@property (strong, nonatomic) NSNumber *favorites;
@property (strong, nonatomic) NSNumber *comments;

@end
