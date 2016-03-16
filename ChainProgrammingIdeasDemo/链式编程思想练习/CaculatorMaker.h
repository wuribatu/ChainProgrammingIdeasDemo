//
//  CaculatorMaker.h
//  链式编程思想练习
//
//  Created by 乌日巴图 on 16/3/16.
//  Copyright © 2016年 乌日巴图. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CaculatorMaker : NSObject

@property (nonatomic, assign) int result;

//- (instancetype)add:(int)a;

- (CaculatorMaker *(^)(int))add;

- (CaculatorMaker *(^)(int))sub;

- (CaculatorMaker *(^)(int))mul;

- (CaculatorMaker *(^)(int))div;

@end
