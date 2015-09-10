//
//  Game.h
//  The Flappy Saga
//
//  Created by Yuxiao Ma on 2015-09-09.
//  Copyright (c) 2015 Yuxiao Ma. All rights reserved.
//

#import <UIKit/UIKit.h>

int SagaFlight;

@interface Game : UIViewController
{
    IBOutlet UIImageView *Saga;
    IBOutlet UIButton *Start;
    
    NSTimer *SagaMovement;
}

-(IBAction)Start:(id)sender;
-(void)SagaMoving;

@end
