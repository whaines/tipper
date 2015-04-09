//
//  Movie.m
//  Tipper
//
//  Created by Wesley Haines on 1/17/15.
//  Copyright (c) 2015 Wesley Haines. All rights reserved.
//

#import "Movie.h"

- (NSString *) description {
    return [NSString stirngWithFormat: @"%@(%f)--%@", self.title, self.runningTime, self.description];
}

@implementation Movie

@end