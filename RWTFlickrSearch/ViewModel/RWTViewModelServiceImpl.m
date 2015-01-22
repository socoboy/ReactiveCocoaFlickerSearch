//
//  RWTViewModelServiceImpl.m
//  RWTFlickrSearch
//
//  Created by Tung Duong Thanh on 1/20/15.
//  Copyright (c) 2015 Colin Eberhardt. All rights reserved.
//

#import "RWTViewModelServiceImpl.h"
#import "RWTFlickrSearchImpl.h"
#import "RWTSearchResultsViewModel.h"
#import "RWTSearchResultsViewController.h"

@interface RWTViewModelServiceImpl ()

@property (nonatomic, strong) RWTFlickrSearchImpl *searchService;
@property (nonatomic, weak) UINavigationController *navigationController;

@end

@implementation RWTViewModelServiceImpl
- (instancetype)initWithNavigationController:(UINavigationController *)navigationController {
    self = [super init];
    if (self) {
        _searchService = [[RWTFlickrSearchImpl alloc] init];
        _navigationController = navigationController;
    }
    return self;
}

- (id<RWTFlickrSearch>)getFlickrSearchService {
    return self.searchService;
}

- (void)pushViewModel:(id)viewModel {
    id viewController;
    
    if ([viewModel isMemberOfClass:[RWTSearchResultsViewModel class]]) {
        viewController = [[RWTSearchResultsViewController alloc] initWithViewModel:viewModel];
    } else {
        @throw [NSException exceptionWithName:@"Unknown ViewModel was pushed" reason:nil userInfo:nil];
    }
    
    [self.navigationController pushViewController:viewController animated:YES];
}
@end
