//
//  NSObject+Caculator.h
//  链式编程思想练习
//
//  Created by 乌日巴图 on 16/3/16.
//  Copyright © 2016年 乌日巴图. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CaculatorMaker;
@interface NSObject (Caculator)

+ (int)makeCaculators:(void(^)(CaculatorMaker *maker))caculatorMaker;

@end
