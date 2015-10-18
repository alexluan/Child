//
//  main.m
//  Child
//
//  Created by 栾有数 on 15-1-23.
//  Copyright (c) 2015年 栾有数. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Father.h"
#import "Child.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Father* father=[[Father alloc] init];
        Child* child=[[Child alloc] init];
        [[NSRunLoop currentRunLoop] run];
    }
    return 0;
}
