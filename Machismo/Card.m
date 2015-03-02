//
//  Card.m
//  Machismo
//
//  Created by Junyu Wang on 2/25/15.
//  Copyright (c) 2015 Junyu Wang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Card()

@end

@implementation Card : NSObject

@synthesize chosen = _chosen;
@synthesize matched = _matched;

- (int)match:(NSArray *)otherCards
{
    int score = 0;
    
    if (self.contents == [otherCards[0] contents]) {
        score = 1;
    }
    return score;
}

@end