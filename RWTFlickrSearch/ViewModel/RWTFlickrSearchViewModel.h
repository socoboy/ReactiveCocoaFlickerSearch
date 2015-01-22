//
//  FlickrSearchViewModel.h
//  RWTFlickrSearch
//
//  Created by Tung Duong Thanh on 1/19/15.
//  Copyright (c) 2015 Colin Eberhardt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RWTViewModelServices.h"

@class RACCommand;

@interface RWTFlickrSearchViewModel : NSObject

@property (strong, nonatomic) NSString *searchText;
@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) RACCommand *executeSearch;

- (instancetype)initWithServices:(id<RWTViewModelServices>)services;
@end
