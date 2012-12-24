//
//  ViewController.m
//  SpeedMeter
//
//  Created by subh on 14/12/12.
//  Copyright (c) 2012 subh. All rights reserved.
//

#import "ViewController.h"
#import "CustomUIView.h"
@interface ViewController ()

@end

@implementation ViewController
-(UIView *)drawCircleAtPoint:(CGPoint)center WithRadius:(float)radius{
UIView *circle=[[[UIView alloc]initWithFrame:CGRectMake(center.x-radius, center.y-radius, 2*radius, 2*radius)]autorelease];
    [circle setBackgroundColor:[UIColor blueColor]];
    [circle.layer setCornerRadius:radius];
    [circle.layer setOpacity:0.5f];
        
    return circle;
}

-(UIView *)drawSemiCircleAtPoint:(CGPoint)center WithRadius:(float)radius{
    UIView *semiCircle=[[[UIView alloc]initWithFrame:CGRectMake(center.x-radius, center.y-radius, radius*2, radius)]autorelease];
    [semiCircle setClipsToBounds:NO];
    [semiCircle addSubview:[self drawCircleAtPoint:CGPointMake(center.x, center.y) WithRadius:radius]];
    return semiCircle;
}

-(UIView *)drawFilledRectangleStart:(CGPoint)leftTop End:(CGPoint)rightBottom{
    CustomUIView *customView=[[CustomUIView alloc]initWithFrame:CGRectMake(100, 100, 500, 500)];
    [customView setBackgroundColor:[UIColor greenColor]];
    return [customView autorelease];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
//    [self.view addSubview:[self drawCircleAtPoint:CGPointMake(200, 200) WithRadius:100]];
//    [self.view addSubview:[self drawCircleAtPoint:CGPointMake(200, 400) WithRadius:100]];
    [self.view addSubview:[self drawSemiCircleAtPoint:CGPointMake(400,400) WithRadius:100]];
//    [self.view addSubview:[self drawFilledRectangleStart:CGPointMake(100, 100) End:CGPointMake(200, 200)]];
    //[self drawFilledRectangleStart:];
	// Do any additional setup after loading the view, typically from a nib.
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
