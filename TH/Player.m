//
//  Player.m
//  TH
//
//  Created by Benedikt Beckmann on 20.06.12.
//  Copyright (c) 2012 BioApps. All rights reserved.
//

#import "Player.h"

@implementation Player

@synthesize playerName = _playerName;
@synthesize playerId = _playerId;
@synthesize moneyRest = _moneyRest;
//@synthesize avatar
@synthesize playerState = _playerState;
@synthesize playerRound = _playerRound;
@synthesize openCards = _openCards;
@synthesize twoCards = _twoCards;

@synthesize delegate = _delegate;

-(void)setState{
    
}


-(NSArray *)getStates{
    return 0;
}

-(void)removeMoney:(int)amount{
    
}

-(void)getMoneyFromPot:(int)amount{
    
}




@end
