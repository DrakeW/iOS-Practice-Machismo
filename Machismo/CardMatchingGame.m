//
//  CardMatchingGame.m
//  Machismo
//
//  Created by Junyu Wang on 3/1/15.
//  Copyright (c) 2015 Junyu Wang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CardMatchingGame.h"

@interface CardMatchingGame()
@property (nonatomic, readwrite) int score;
@property (strong, nonatomic) NSMutableArray *cards; // of Card
@end

@implementation CardMatchingGame

- (NSMutableArray *) cards
{
    if (!_cards) {
        _cards = [[NSMutableArray alloc] init];
    }
    return _cards;
}

- (instancetype) initWithCardCount:(NSUInteger)count usingDeck:(Deck *)deck
{
    self = [super init];
    
    if (self) {
        for (int i = 0; i < count; i++) {
            Card *card = [deck drawRandomCard];
            if (card) {
                [self.cards addObject:card];
            }else {
                self = nil;
                break;
            }
        }
    }
    NSLog(@"%@",self);
    return self;
}

- (CardMatchingGame*) restartGameWithCardCount:(NSUInteger)count usingDeck:(Deck *)deck
{
    self.cards = [[NSMutableArray alloc] init];
    CardMatchingGame* newGame = [self initWithCardCount:count usingDeck:deck];
    newGame.score = 0;
    return newGame;
}

static const int MISMATCH_PENALTY = 2;
static const int MATCH_BONUS = 4;
static const int COST_TO_CHOOSE = 1;

- (void) chooseCardAtIndex:(NSUInteger)index
{
    Card *card = [self cardAtIndex:index];
    if (!card.isMatched) {
        if (!card.isChosen) {
            //match against other chosen card
            for (Card *otherCard in self.cards) {
                if (otherCard.isChosen && !otherCard.isMatched) {
                    int matchScore = [card match:@[otherCard]];
                    if (matchScore) {
                        self.score += matchScore * MATCH_BONUS;
                        otherCard.matched = YES;
                        card.matched = YES;
                    }else {
                        self.score -= MISMATCH_PENALTY;
                        otherCard.chosen = NO;
                    }
                    break; //only match two cards.
                }
            }
            self.score -= COST_TO_CHOOSE;
            card.chosen = YES;
            
        }else {
            card.chosen = NO;
        }
    }
}


- (Card *) cardAtIndex:(NSUInteger)index
{
    return index < [self.cards count] ? [self.cards objectAtIndex:index] : nil;
}

- (NSString *) description
{
    NSString *description = @"";
    for (Card *card in self.cards) {
        description = [description stringByAppendingString:[card contents]];
    }
    return description;
}

@end