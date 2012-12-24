//
//  ViewController.h
//  SpeedMeter
//
//  Created by subh on 14/12/12.
//  Copyright (c) 2012 subh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
@interface ViewController : UIViewController
-(UIView *)drawCircleAtPoint:(CGPoint)center WithRadius:(float)radius;
-(UIView *)drawSemiCircleAtPoint:(CGPoint)center WithRadius:(float)radius;
-(UIView *)drawFilledRectangleStart:(CGPoint)leftTop End:(CGPoint)rightBottom;
@end
