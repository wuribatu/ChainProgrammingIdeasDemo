//
//  CaculatorMaker.m
//  链式编程思想练习
//
//  Created by 乌日巴图 on 16/3/16.
//  Copyright © 2016年 乌日巴图. All rights reserved.
//

#import "CaculatorMaker.h"

@implementation CaculatorMaker

//- (instancetype)add:(int)a
//{
//    self.result += a;
//    
//    return self;
//}

- (CaculatorMaker *(^)(int))add
{
    return ^CaculatorMaker *(int value) {
        self.result += value;
        
        return self;
    };
}

- (CaculatorMaker *(^)(int))sub
{
    return ^CaculatorMaker *(int value) {
        self.result -= value;
        
        return self;
    };
}

- (CaculatorMaker *(^)(int))mul
{
    return ^CaculatorMaker *(int value) {
        self.result *= value;
        
        return self;
    };
}

- (CaculatorMaker *(^)(int))div {
    return ^CaculatorMaker *(int value) {
        self.result /= value;
        
        return self;
    };
}

@end
