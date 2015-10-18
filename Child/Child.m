//
//  Child.m
//  Child
//
//  Created by 栾有数 on 15-1-23.
//  Copyright (c) 2015年 栾有数. All rights reserved.
//

#import "Child.h"

@implementation Child
-(id)init{
    self=[super init];
    if (self!=nil) {
        self.sleep=100;
        [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(timerAction:) userInfo:nil repeats:YES];
        NSLog("孩子孩子");
    }
    return self;
}
-(void)timerAction:(NSTimer *)timer{
    _sleep-=2;
    NSLog(@"%ld",_sleep);
    
    if(_sleep<90){
        [[NSNotificationCenter defaultCenter] postNotificationName:CHILD_WEAK_NOTIFICATION object:[NSNumber numberWithInteger:_sleep]];
    }
}
@end
