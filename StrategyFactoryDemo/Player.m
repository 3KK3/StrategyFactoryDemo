//
//  Player.m
//  StrategyFactoryDemo
//
//  Created by YZY on 2018/4/24.
//  Copyright © 2018年 ZBWX. All rights reserved.
//

#import "Player.h"
#import "CalPrice.h"
#import "FirstLevelCalPrice.h"
#import "SecondLevelCalPrice.h"

@implementation Player
{
    CalPrice *_calPrice;
    float _totalPrice;
}

- (float)finalPriceWithPrice:(float)price {
    _totalPrice += price;

    //此处可以使用工厂模式优化  不new对象
    if (_totalPrice > 200) {
        _calPrice = [[SecondLevelCalPrice alloc] init];
    } else if (_totalPrice > 100) {
        _calPrice = [[FirstLevelCalPrice alloc] init];
    }
    return [_calPrice getPrice: price];
}

@end
