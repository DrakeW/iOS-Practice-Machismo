//
//  Card.h
//  Machismo
//
//  Created by Junyu Wang on 2/25/15.
//  Copyright (c) 2015 Junyu Wang. All rights reserved.
//

#ifndef Machismo_Card_h
#define Machismo_Card_h

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;
@property (nonatomic, getter=isChosen) BOOL matched;
@property (nonatomic, getter=isMatched) BOOL chosen;


@end

#endif
