//
//  CustomUIView.m
//  SpeedMeter
//
//  Created by subh on 24/12/12.
//  Copyright (c) 2012 subh. All rights reserved.
//

#import "CustomUIView.h"

@implementation CustomUIView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}



-(void)drawRect:(CGRect)rect{
    [super drawRect:rect];
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextBeginPath(ctx);
//    CGContextMoveToPoint(ctx, 0.0, 0.0);
//    CGContextAddLineToPoint(ctx, 200.0, 200.0);
//    CGContextAddLineToPoint(ctx, 200.0f, 300.0f);
//    CGContextAddLineToPoint(ctx, 100.0f, 300.0f);
//    CGContextClosePath(ctx);
//    CGContextStrokePath(ctx);
    
    
    CGContextAddArc(ctx, 100, 100, 100, 0, 2*M_PI, 1);
    CGContextSetFillColorWithColor(ctx, [[UIColor redColor]CGColor]);
    CGContextFillPath(ctx);
    //CGContextSetStrokeColorWithColor(ctx, [[UIColor redColor]CGColor]);
    CGContextStrokePath(ctx);
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
