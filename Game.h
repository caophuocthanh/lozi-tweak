//
//  mains.h
//  PTPacman
//
//  Created by Otatime on 9/5/15.
//  Copyright (c) 2015 Cao Phuoc Thanh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "Lozi.h"
@interface Game : NSObject {
  Lozi * lozi;
}
-(void)run;
-(void)stop;
@end
