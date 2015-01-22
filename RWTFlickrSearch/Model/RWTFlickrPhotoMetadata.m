//
//  RWTFlickrPhotoMetadata.m
//  RWTFlickrSearch
//
//  Created by Tung Duong Thanh on 1/21/15.
//  Copyright (c) 2015 Colin Eberhardt. All rights reserved.
//

#import "RWTFlickrPhotoMetadata.h"

@implementation RWTFlickrPhotoMetadata

- (NSString *)description {
    return [NSString stringWithFormat:@"metadata: comments=%lU, faves=%lU", self.comments, self.favorites];
}

@end
