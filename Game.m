//
//  main.m
//  PTPacman
//
//  Created by Otatime on 9/5/15.
//  Copyright (c) 2015 Cao Phuoc Thanh. All rights reserved.
//

#import "Game.h"

@implementation Game

-(void)run {
    NSLog(@"Run game.");
    lozi = [[Lozi alloc]init];
    [lozi startMove];
}

-(void)stop {
  [lozi stopMove];
}

@end

