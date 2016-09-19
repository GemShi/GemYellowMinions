//
//  ViewController.m
//  GemYellowMinions
//
//  Created by GemShi on 16/8/19.
//  Copyright © 2016年 GemShi. All rights reserved.
//

#import "ViewController.h"
#import "DrawYellowMinions.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    DrawYellowMinions *dym = [[DrawYellowMinions alloc]initWithFrame:[UIScreen mainScreen].bounds];
    dym.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:dym];
    
    //设置渐变色
//    [self.view.layer addSublayer:[self shadowAsInverse]];
}

-(CAGradientLayer *)shadowAsInverse
{
    CAGradientLayer *newShdow = [[CAGradientLayer alloc]init];
    CGRect newShadowFrame = CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height);
    newShdow.frame = newShadowFrame;
    newShdow.colors = [NSArray arrayWithObjects:(id)[UIColor lightGrayColor].CGColor,(id)[UIColor whiteColor].CGColor,(id)[UIColor yellowColor].CGColor, nil];
    return newShdow;
}

@end
