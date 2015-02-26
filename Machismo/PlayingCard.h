//
//  PlayingCard.h
//  Machismo
//
//  Created by Junyu Wang on 2/25/15.
//  Copyright (c) 2015 Junyu Wang. All rights reserved.
//

#ifndef Machismo_PlayingCard_h
#define Machismo_PlayingCard_h

#import <Foundation/Foundation.h>
#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *) validSuits;
+ (NSArray *) rankString;
+ (NSInteger) maxRank;
@end

#endif


