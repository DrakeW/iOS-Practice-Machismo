//
//  CardMatchingGame.h
//  Machismo
//
//  Created by Junyu Wang on 3/1/15.
//  Copyright (c) 2015 Junyu Wang. All rights reserved.
//

#ifndef Machismo_CardMatchingGame_h
#define Machismo_CardMatchingGame_h

#import <Foundation/Foundation.h> 
#import "Deck.h"
#import "Card.h"

@interface CardMatchingGame : NSObject

- (instancetype) initWithCardCount:(NSUInteger) count usingDeck: (Deck *) deck;

- (void) chooseCardAtIndex: (NSUInteger) index;

- (Card *) cardAtIndex: (NSUInteger) index;

- (CardMatchingGame*) restartGameWithCardCount: (NSUInteger) count usingDeck:(Deck*) deck;

@property (nonatomic, readonly) int score;

@end


#endif
