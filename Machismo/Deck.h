//
//  Deck.h
//  Machismo
//
//  Created by Junyu Wang on 2/25/15.
//  Copyright (c) 2015 Junyu Wang. All rights reserved.
//

#ifndef Machismo_Deck_h
#define Machismo_Deck_h

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

@property (nonatomic, strong) NSNumber *numOfCards;
- (void) addCard:(Card *)newCard atTop:(BOOL) atTop;
- (void) addCard:(Card *)newCard;

- (Card *) drawRandomCard;

@end

#endif
