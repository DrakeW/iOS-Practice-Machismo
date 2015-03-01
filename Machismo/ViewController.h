//
//  ViewController.h
//  Machismo
//
//  Created by Junyu Wang on 2/25/15.
//  Copyright (c) 2015 Junyu Wang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PlayingCard.h"
#import "PlayingCardDeck.h"


@interface ViewController : UIViewController

@property (strong, nonatomic) PlayingCardDeck *playingCardDeck;
@property (nonatomic) PlayingCard *playingCard;


@end

