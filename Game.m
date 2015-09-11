//
//  Game.m
//  The Flappy Saga
//
//  Created by Yuxiao Ma on 2015-09-09.
//  Copyright (c) 2015 Yuxiao Ma. All rights reserved.
//

#import "Game.h"

@interface Game ()

@end

@implementation Game

-(IBAction)Start:(id)sender{
    
    Start.hidden = YES;
    
    SagaMovement = [NSTimer scheduledTimerWithTimeInterval:0.05 target:self selector:@selector(SagaMoving) userInfo:nil repeats:YES];
    
    [self PlaceObstacle];
    
    ObstacleMovement = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(ObstacleMoving) userInfo:nil repeats:YES];
}

//Moving and regenerate the obstacles
-(void)ObstacleMoving{
    TopObstacle.center = CGPointMake(TopObstacle.center.x - 1, TopObstacle.center.y);
    BottomObstacle.center = CGPointMake(BottomObstacle.center.x - 1, BottomObstacle.center.y);
    
    if (TopObstacle.center.x < -35){
        [self PlaceObstacle];
    }
}

//Place the top and bottom obstacle in random position off the screen
-(void)PlaceObstacle{
    //Set top obstacle to random y position between -60 to -200
    int lowerBound = -200;
    int upperBound = -60;
    RandomTopPos = lowerBound + arc4random() % (upperBound - lowerBound);
    
    RandomBotPos = RandomTopPos + 90;
    
    TopObstacle.center = CGPointMake(570, RandomTopPos);
    BottomObstacle.center =CGPointMake(570, RandomBotPos);
}

-(void)SagaMoving{
    
    Saga.center = CGPointMake(Saga.center.x, Saga.center.y - SagaFlight);
    
    //Saga will move down in a constant rate of 5 pixel.
    SagaFlight = SagaFlight - 5;
    
    if (SagaFlight < -15) {
        SagaFlight = -15;
    }
    
    //Saga is moving upward, show upward saga image (useless for now)
    if (SagaFlight > 0) {
        Saga.image = [UIImage imageNamed:@"wukong.gif"];
    }
    //Saga is moving upward, show updown saga image
    if (SagaFlight < 0) {
        Saga.image = [UIImage imageNamed:@"wukong.gif"];
    }
    
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    SagaFlight = 30;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
