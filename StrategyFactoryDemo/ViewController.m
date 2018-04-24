//
//  ViewController.m
//  StrategyFactoryDemo
//
//  Created by YZY on 2018/4/24.
//  Copyright © 2018年 ZBWX. All rights reserved.
//

#import "ViewController.h"
#import "Player.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    Player *playerA = [[Player alloc] init];
    CGFloat finalPrice = [playerA finalPriceWithPrice: 50];
    NSLog(@"%lf",finalPrice);
     finalPrice = [playerA finalPriceWithPrice: 60];
    NSLog(@"%lf",finalPrice);
     finalPrice = [playerA finalPriceWithPrice: 100];
    NSLog(@"%lf",finalPrice);
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
