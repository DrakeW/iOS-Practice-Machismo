//
//  ViewController.m
//  Machismo
//
//  Created by Junyu Wang on 2/25/15.
//  Copyright (c) 2015 Junyu Wang. All rights reserved.
//

#import "ViewController.h"
#import "PlayingCard.h"
#import "PlayingCardDeck.h"
#import "Deck.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipLabel;
@property (nonatomic) int flipCount;

@end

@implementation ViewController


- (void) setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipLabel.text = [NSString stringWithFormat:@"Flip Count: %d", self.flipCount];
}

- (IBAction)touchCardButton:(UIButton *)sender
{
    //
    if (self.playingCardDeck == nil) {
//        NSLog(@"before %d",[[_playingCardDeck cards] count]);
        self.playingCardDeck = [[PlayingCardDeck alloc] init];
//        NSLog(@"after %d",[[_playingCardDeck cards] count]);
    }
    
    Card *selectedCard = [_playingCardDeck drawRandomCard];
    
    if ([sender.currentTitle length] == 0) {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"]
                          forState:UIControlStateNormal];
        [sender setTitle:[selectedCard contents] forState:UIControlStateNormal];
    }else {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardback"]
                          forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    }
    self.flipCount++;
//    self.flipLabel.text = [NSString stringWithFormat:@"Flip Count: %d", _flipCount];
}








@end
