//
//  SemiCircle.m
//  SpeedMeter
//
//  Created by subh on 24/12/12.
//  Copyright (c) 2012 subh. All rights reserved.
//

#import "SemiCircle.h"

@interface SemiCircle()
-(void)drawSemiCirleWithCenter:(CGPoint)center WithRadius:(int)radius WithStartAngle:(CGFloat) startAngle WithEndAngle:(CGFloat)endAngle;
@end

@implementation SemiCircle
@synthesize face=_face;
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}
-(id)initWithFrame:(CGRect)frame WithFace:(enum semiCircle)face{
    self=[super initWithFrame:frame];
    if(self){
        _face=face;
    }
    return  self;
}

-(void)drawRect:(CGRect)rect{
    
    CGPoint point;
    CGFloat startAngle,endAngle;
    switch (self.face) {
        case HALF_SEMICIRCLE:
            startAngle=M_PI;
            endAngle=2*M_PI;
            point=CGPointMake(rect.origin.x+rect.size.width/2,rect.origin.y+rect.size.width);
            break;
        case DOWN_SEMICIRCLE:
            startAngle=0;
            endAngle=M_PI;
            point=CGPointMake(rect.origin.x+rect.size.width/2,rect.origin.y);
            break;
        case RIGHT_SEMICIRCLE:
            startAngle=M_PI/2;
            endAngle=3*M_PI/2;
            point=CGPointMake(rect.origin.x+rect.size.width, rect.origin.y+rect.size.height/2);
            break;
        case LEFT_SEMICIRCLE:
            startAngle=3*M_PI/2;
            endAngle=M_PI/2;
            point=CGPointMake(rect.origin.x, rect.origin.y+rect.size.height/2);
            break;
        default:
            break;
    }
    [self drawSemiCirleWithCenter:point WithRadius:100 WithStartAngle:startAngle WithEndAngle:endAngle];
}

-(void)drawSemiCirleWithCenter:(CGPoint)center WithRadius:(int)radius WithStartAngle:(CGFloat)startAngle WithEndAngle:(CGFloat)endAngle{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextBeginPath(ctx);
    //    CGContextMoveToPoint(ctx, 0.0, 0.0);
    //    CGContextAddLineToPoint(ctx, 200.0, 200.0);
    //    CGContextAddLineToPoint(ctx, 200.0f, 300.0f);
    //    CGContextAddLineToPoint(ctx, 100.0f, 300.0f);
    //    CGContextClosePath(ctx);
    //    CGContextStrokePath(ctx);
    
    
    CGContextAddArc(ctx, center.x, center.y, 100, startAngle, endAngle, 0);
    CGContextSetFillColorWithColor(ctx, [[UIColor blueColor]CGColor]);
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
