//
//  NSObject+Caculator.m
//  链式编程思想练习
//
//  Created by 乌日巴图 on 16/3/16.
//  Copyright © 2016年 乌日巴图. All rights reserved.
//

#import "NSObject+Caculator.h"
#import "CaculatorMaker.h"

@implementation NSObject (Caculator)

+ (int)makeCaculators:(void (^)(CaculatorMaker *))caculatorMaker
{
    CaculatorMaker *maker = [[CaculatorMaker alloc] init];
    
    caculatorMaker(maker);
    
    return maker.result;
}

@end
