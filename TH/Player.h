//
//  Player.h
//  TH
//
//  Created by Benedikt Beckmann on 20.06.12.
//  Copyright (c) 2012 BioApps. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Player;

@protocol PlayerDelegate <NSObject>

-(void)changePlayerState:(NSString *)state forPlayer:(NSNumber *)playerNumber;

@end


@interface Player : NSObject

@property (nonatomic, weak) id <PlayerDelegate> delegate;

@property (weak, nonatomic) NSString *playerName;
@property (nonatomic) int playerId;
@property (nonatomic) int moneyRest; 
//@property () avatar
@property (weak, nonatomic) NSString *playerState; 
@property (nonatomic) int playerRound;
@property (weak, nonatomic) NSArray *openCards;
@property (weak, nonatomic) NSArray *twoCards;


-(void)setState;
-(NSArray *)getStates;
-(void)removeMoney:(int)amount;
-(void)getMoneyFromPot:(int)amount;


@end
