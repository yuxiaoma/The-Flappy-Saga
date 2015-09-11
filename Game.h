//
//  Game.h
//  The Flappy Saga
//
//  Created by Yuxiao Ma on 2015-09-09.
//  Copyright (c) 2015 Yuxiao Ma. All rights reserved.
//

#import <UIKit/UIKit.h>

int SagaFlight;
int RandomTopPos;
int RandomBotPos;

@interface Game : UIViewController
{
    IBOutlet UIImageView *Saga;
    IBOutlet UIButton *Start;
    IBOutlet UIImageView *TopObstacle;
    IBOutlet UIImageView *BottomObstacle;
    IBOutlet UIImageView *Top;
    IBOutlet UIImageView *Bottom;
    
    NSTimer *SagaMovement;
    NSTimer *ObstacleMovement;
}

-(IBAction)Start:(id)sender;
-(void)SagaMoving;
-(void)ObstacleMoving;
-(void)PlaceObstacle;

@end
