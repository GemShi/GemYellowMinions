//
//  DrawYellowMinions.m
//  GemYellowMinions
//
//  Created by GemShi on 16/8/19.
//  Copyright © 2016年 GemShi. All rights reserved.
//

#import "DrawYellowMinions.h"

@implementation DrawYellowMinions


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    CGContextRef context = UIGraphicsGetCurrentContext();
//    CGContextRotateCTM(context, M_PI_4);
    
    //画身体
    CGContextAddArc(context, rect.size.width / 2, 200, 100, 0, M_PI, 1);
    CGContextSetRGBFillColor(context, 0.99, 0.82, 0.19, 1.00);
    CGContextAddRect(context, CGRectMake(rect.size.width / 2 - 100, 200, 200, 200));
    CGContextAddArc(context, rect.size.width / 2, 400, 100, 0, M_PI, 0);
    CGContextFillPath(context);
    
    //画镜框
    CGContextAddRect(context, CGRectMake(rect.size.width / 2 - 105, 200, 210, 30));
    [[UIColor blackColor] set];
    CGContextFillPath(context);
    
    //画眼镜
    CGContextAddEllipseInRect(context, CGRectMake(rect.size.width / 2 - 87, 170, 90, 90));
    CGContextAddEllipseInRect(context, CGRectMake(rect.size.width / 2, 170, 90, 90));
    [[UIColor colorWithRed:0.21 green:0.20 blue:0.20 alpha:1.00] set];
    CGContextFillPath(context);
    
    CGContextAddEllipseInRect(context, CGRectMake(rect.size.width / 2 - 77, 180, 70, 70));
    CGContextAddEllipseInRect(context, CGRectMake(rect.size.width / 2 + 10, 180, 70, 70));
    [[UIColor whiteColor] set];
    CGContextFillPath(context);
    
    //画眼睛
    CGContextAddEllipseInRect(context, CGRectMake(rect.size.width / 2 - 47, 200, 30, 30));
    CGContextAddEllipseInRect(context, CGRectMake(rect.size.width / 2 + 20, 200, 30, 30));
    [[UIColor colorWithRed:0.29 green:0.09 blue:0.12 alpha:1.00] set];
    CGContextFillPath(context);
    
    CGContextAddEllipseInRect(context, CGRectMake(rect.size.width / 2 - 38, 210, 17, 17));
    CGContextAddEllipseInRect(context, CGRectMake(rect.size.width / 2 + 29, 210, 17, 17));
    [[UIColor blackColor] set];
    CGContextFillPath(context);
    
    CGContextAddEllipseInRect(context, CGRectMake(rect.size.width / 2 - 40, 208, 10, 10));
    CGContextAddEllipseInRect(context, CGRectMake(rect.size.width / 2 + 27, 208, 10, 10));
    [[UIColor whiteColor] set];
    CGContextFillPath(context);
    
    //画嘴巴
    CGContextAddArc(context, rect.size.width / 2, 300, 40, M_PI_4, 3 * M_PI_4, 0);
    [[UIColor blackColor] set];
    CGContextStrokePath(context);
    
    //画头发
    CGContextMoveToPoint(context, rect.size.width / 2, 110);
    CGContextAddLineToPoint(context, rect.size.width / 2, 80);
    CGContextSetLineCap(context, kCGLineCapRound);
    CGContextSetLineWidth(context, 5);
    CGContextStrokePath(context);
    
    CGContextMoveToPoint(context, rect.size.width / 2 - 20, 110);
    CGContextAddLineToPoint(context, rect.size.width / 2 - 40, 90);
    CGContextSetLineCap(context, kCGLineCapRound);
    CGContextSetLineWidth(context, 5);
    CGContextStrokePath(context);
    
    CGContextMoveToPoint(context, rect.size.width / 2 + 20, 110);
    CGContextAddLineToPoint(context, rect.size.width / 2 + 40, 90);
    CGContextSetLineCap(context, kCGLineCapRound);
    CGContextSetLineWidth(context, 5);
    CGContextStrokePath(context);
}

@end
