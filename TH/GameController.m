//
//  GameController.m
//  TH
//
//  Created by Benedikt Beckmann on 20.06.12.
//  Copyright (c) 2012 BioApps. All rights reserved.
//

#import "GameController.h"

@interface GameController ()
-(void)singletonSetup;
-(void)initPlayers;

@end

@implementation GameController

@synthesize playerList = _playerList;
@synthesize activePlayer = _activePlayer;
@synthesize maxPlayers = _maxPlayers;
@synthesize bigBlind = _bigBlind;
@synthesize totalMoney = _totalMoney;
@synthesize betRoundNr = _betRoundNr;
@synthesize player = _player;


#pragma mark Initialization

/*
 *singleton GameController 
 */

static GameController *sharedInstance = nil;
+(GameController *) sharedInstance {
    if (!sharedInstance){
        sharedInstance = [[GameController alloc] init];
    }
    return sharedInstance;
}

//Setup sharedInstance when game starts. Dummy setup method until we have the GC running or other user-specific data
-(void) singletonSetup{
    //# of players, replace with player
    NSMutableArray *players = [NSMutableArray arrayWithCapacity:10]; 
    
    [players addObject:[NSNumber numberWithInt:5]];
    self.playerList = players;
    self.maxPlayers = 5;
    self.bigBlind = 5;
    self.totalMoney = 1000;
}


//init Players
-(void)initPlayers{
    for(NSNumber *myStr in self.playerList) {
        NSLog(myStr);
    }
}


#pragma mark Game methods

-(void)activateNextPlayer{
    
}

-(int)getRoundNr{
    return 0;
}

-(void)setRoundNr{
    
}

-(BOOL)isShowDownTime{
    
    return NO;
}

@end
