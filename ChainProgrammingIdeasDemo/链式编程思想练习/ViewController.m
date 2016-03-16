//
//  ViewController.m
//  链式编程思想练习
//
//  Created by 乌日巴图 on 16/3/16.
//  Copyright © 2016年 乌日巴图. All rights reserved.
//

#import "ViewController.h"
#import "CaculatorMaker.h"
#import "NSObject+Caculator.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    CaculatorMaker *maker = [[CaculatorMaker alloc] init];
//    1.
//    [maker add:20];
//    [maker add:30];
//    [maker add:40];
//    [maker add:10];
    //2.
//    [[[[maker add:20] add:30] add:40] add:10];
    
//   3.
//    maker.add(20).add(30).add(40).add(10);
    
    int result = [NSObject makeCaculators:^(CaculatorMaker *maker) {
        maker.add(20).add(30).add(10).add(40);
        maker.add(200).add(100);
        maker.sub(50).sub(50).add(100);
        maker.mul(2);
        maker.div(4).div(2).div(25);
        maker.add(6).sub(5).mul(10).div(1);
    }];
    
    NSLog(@"结果 %d", result);
}

@end
