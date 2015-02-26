//
//  Deck.m
//  Machismo
//
//  Created by Junyu Wang on 2/25/15.
//  Copyright (c) 2015 Junyu Wang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"

@interface Deck()

//array of cards
@property (strong, nonatomic) NSMutableArray *cards;

@end

@implementation Deck

- (NSMutableArray *) cards
{
    if (!_cards) {
        _cards = [[NSMutableArray alloc] init];
    }
    return _cards;
}


- (void) addCard:(Card *)newCard atTop:(BOOL)atTop
{
    if (atTop) {
        [_cards insertObject:newCard atIndex:0];
    } else {
        [_cards addObject:newCard];
    }
}

- (void) addCard:(Card *)newCard
{
    [self addCard:newCard atTop:NO];
}

- (Card *)drawRandomCard
{
    Card *randomCard = nil;
    if ([self.cards count]) {
        int randomIndex = arc4random() % [self.cards count];
        randomCard = self.cards[randomIndex];
        [self.cards removeObjectAtIndex:randomIndex];
    }
    return randomCard;
}


@end