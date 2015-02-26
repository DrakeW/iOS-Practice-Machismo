//
//  PlayingCardDeck.m
//  Machismo
//
//  Created by Junyu Wang on 2/25/15.
//  Copyright (c) 2015 Junyu Wang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PlayingCardDeck.h"
#import "PlayingCard.h"
#import "Deck.h"

@interface PlayingCardDeck()

@end

@implementation PlayingCardDeck

- (instancetype) init
{
    self = [super init];
    
    if (self) {
        for (NSString *suit in [PlayingCard validSuits]) {
            for (NSUInteger rank = 1; rank < [PlayingCard maxRank]; rank++) {
                PlayingCard *card = [[PlayingCard alloc] init];
                card.rank = rank;
                card.suit = suit;
                [self addCard:card];
            }
        }
    }
    
    return self;
}

@end
