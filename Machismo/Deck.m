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
@property (nonatomic) NSMutableArray *cards;

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
        [self.cards insertObject:newCard atIndex:0];
    } else {
//        NSLog(@"%@",[newCard contents]);
        [self.cards addObject:newCard];
//        NSLog(@"%d", [_cards count]);
    }
}

- (void) addCard:(Card *)newCard
{
    [self addCard:newCard atTop:NO];
}

- (Card *)drawRandomCard
{
    Card *randomCard = nil;
    NSLog(@"number of cards: %d", [self.cards count]);
    
    if ([self.cards count]) {
        int randomIndex = arc4random() % [self.cards count];
        randomCard = self.cards[randomIndex];
        [self.cards removeObjectAtIndex:randomIndex];
    }
    
//    NSLog(@"randm card: %@",randomCard.contents);
    return randomCard;
}


@end