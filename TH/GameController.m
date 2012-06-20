//
//  GameController.m
//  TH
//
//  Created by Benedikt Beckmann on 20.06.12.
//  Copyright (c) 2012 BioApps. All rights reserved.
//

#import "GameController.h"

@interface GameController ()



@end

@implementation GameController

@synthesize playerList = _playerList;
@synthesize gameStates = _gameStates;
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
    //hardcoded dummy values
    sharedInstance.maxPlayers = 5;
    sharedInstance.totalMoney = 1000;
    NSLog(@"I am alive!");
    return sharedInstance;
}




//method to instantiate the players after GameControl has been started
-(void)raisePlayers{
    //dummy players
    Player *player1 = [[Player alloc] init];
    Player *player2 = [[Player alloc] init];
    Player *player3 = [[Player alloc] init];
    Player *player4 = [[Player alloc] init];
    Player *player5 = [[Player alloc] init];
    
    NSMutableArray *list = [NSMutableArray arrayWithObjects:player1,player2,player3,player4,player5, nil];
    self.playerList = list;
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





#pragma mark PlayerDelegate

-(void)changePlayerState:(NSString *)state forPlayer:(NSNumber *)playerNumber{
    
    
}










@end
