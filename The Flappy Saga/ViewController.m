//
//  ViewController.m
//  The Flappy Saga
//
//  Created by Yuxiao Ma on 2015-09-09.
//  Copyright (c) 2015 Yuxiao Ma. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    HighScoreNumView = [[NSUserDefaults standardUserDefaults] integerForKey:@"HighScoreSaved"];
    HighScore.text = [NSString stringWithFormat:@"High Score: %li", (long)HighScoreNumView];

    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
