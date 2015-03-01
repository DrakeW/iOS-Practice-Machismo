//
//  PlayingCard.m
//  Machismo
//
//  Created by Junyu Wang on 2/25/15.
//  Copyright (c) 2015 Junyu Wang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PlayingCard.h"

@interface PlayingCard()

@property (nonatomic) NSArray *suitArray;

@end

@implementation PlayingCard

//because we are providing both the setter and getter of suit, we have to add the @synthesize
@synthesize suit = _suit;

- (void) setSuit:(NSString *)suit
{
    if ([[PlayingCard validSuits] containsObject:suit]) {
        _suit = suit;
    }
}

- (NSString *) suit
{
    if (_suit) {
        return _suit;
    }else {
        return @"?";
    }
}

+ (NSArray *) validSuits
{
    return @[@"♠︎", @"♣︎", @"♥︎", @"♦︎"];
}

+ (NSArray *) rankString
{
    return @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
}

- (NSString *) contents
{
    NSArray *rankStrings = [PlayingCard rankString];
    return [self.suit stringByAppendingString:rankStrings[self.rank]];
}

+ (NSInteger) maxRank
{
    return [[PlayingCard rankString] count];
}

- (void) setRank:(NSUInteger)rank
{
    if (rank <= [PlayingCard maxRank]) {
        _rank = rank;
    }
}





@end