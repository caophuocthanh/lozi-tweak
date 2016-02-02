//
//  Pacman.m
//  PTPacman
//
//  Created by Otatime on 9/5/15.
//  Copyright (c) 2015 Cao Phuoc Thanh. All rights reserved.
//

#import "Lozi.h"

@implementation Lozi

-(id)init {
  if (self=[super init]) {
    self.frame = CGRectMake(140, 265, 150, 150);
    UIWindow* mainWindow = [[UIApplication sharedApplication] keyWindow];
    [mainWindow addSubview:self];
    [self randomSpaceMove];
  }
  return self;
}


-(void)startMove {
  self.animationImages = [NSArray arrayWithObjects:
                          [UIImage imageWithContentsOfFile:@"/var/pacman/sieuMeo1@2x.png"],
                          [UIImage imageWithContentsOfFile:@"/var/pacman/sieuMeo2@2x.png"],
                          [UIImage imageWithContentsOfFile:@"/var/pacman/sieuMeo3@2x.png"],
                          [UIImage imageWithContentsOfFile:@"/var/pacman/sieuMeo4@2x.png"],
                          [UIImage imageWithContentsOfFile:@"/var/pacman/sieuMeo5@2x.png"],
                          [UIImage imageWithContentsOfFile:@"/var/pacman/sieuMeo6@2x.png"],
                          [UIImage imageWithContentsOfFile:@"/var/pacman/sieuMeo7@2x.png"],
                          [UIImage imageWithContentsOfFile:@"/var/pacman/sieuMeo8@2x.png"],
                          [UIImage imageWithContentsOfFile:@"/var/pacman/sieuMeo9@2x.png"],
                          [UIImage imageWithContentsOfFile:@"/var/pacman/sieuMeo10@2x.png"],
                          nil];
  self.animationDuration = 1.0f;
  self.animationRepeatCount = 0;
  [self startAnimating];
  timer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(move) userInfo:nil repeats:YES];
}


-(void)stopMove {
  [timer invalidate];
}

-(void)randomSpaceMove {
  X = arc4random() % 11;
  X = X - 5;
  if(X == 0) {
    X = 1;
  }
  
  Y = arc4random() % 11;
  Y = Y - 5;
  if(Y == 0) {
    Y = 1;
  }
}

-(void)move {
  [UIView animateWithDuration:0.3 animations:^{
    self.center = CGPointMake(self.center.x + X,self.center.y + Y);
  }];
  if(self.center.x <30 ) {
    X = 0 - X;
  }
  if(self.center.x > ([[UIScreen mainScreen] bounds].size.width - 30)) {
    X = 0 - X;
  }
  
  if(self.center.y < 30) {
    Y = 0 - Y;
  }
  
  if(self.center.y > ([[UIScreen mainScreen] bounds].size.height - 30)) {
    Y = 0 - Y;
  }
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
  UITouch *touch = [touches anyObject];
  CGPoint currentTouch = [touch locationInView:(UIView*)self];
  self.center = currentTouch;
}

@end
