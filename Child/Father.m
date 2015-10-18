//
//  Father.m
//  Child
//
//  Created by 栾有数 on 15-1-23.
//  Copyright (c) 2015年 栾有数. All rights reserved.
//

#import "Father.h"

@implementation Father
-(id)init{
    self=[super init];
    if (self!=nil) {
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(weekNotification:) name:CHILD_WEAK_NOTIFICATION object:nil];
    }
    return self;
}
-(void)weekNotification:(NSNotification *)notification{
    NSLog(@"哄小孩");
}
@end
