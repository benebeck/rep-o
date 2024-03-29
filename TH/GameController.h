//
//  GameController.h
//  TH
//
//  Created by Benedikt Beckmann on 20.06.12.
//  Copyright (c) 2012 BB. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "GCHelper.h"
#import "Player.h"
//#import "PackOfCards.h"

@interface GameController : NSObject<PlayerDelegate>

@property (nonatomic, strong) NSMutableArray *playerList;
@property (nonatomic, strong) NSMutableArray *gameStates;
@property (nonatomic) int activePlayer;
@property (nonatomic) int maxPlayers;
@property (nonatomic) int bigBlind;
@property (nonatomic) int totalMoney;
@property (nonatomic) int betRoundNr;
@property (nonatomic, strong) Player *player;


+(GameController *)sharedInstance;

-(void)raisePlayers;
-(void)activateNextPlayer;
-(int)getRoundNr;
-(void)setRoundNr;
-(BOOL)isShowDownTime;


@end
