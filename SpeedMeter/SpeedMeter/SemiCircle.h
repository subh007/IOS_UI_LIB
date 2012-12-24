//
//  SemiCircle.h
//  SpeedMeter
//
//  Created by subh on 24/12/12.
//  Copyright (c) 2012 subh. All rights reserved.
//

#import <UIKit/UIKit.h>

enum semiCircle{
    HALF_SEMICIRCLE,
    DOWN_SEMICIRCLE,
    RIGHT_SEMICIRCLE,
    LEFT_SEMICIRCLE
};

typedef enum semiCircle FACE_SEMICIRCLE;

@interface SemiCircle : UIView
@property(nonatomic,assign) FACE_SEMICIRCLE face;
-(id)initWithFrame:(CGRect)frame WithFace:(enum semiCircle) face;
@end
