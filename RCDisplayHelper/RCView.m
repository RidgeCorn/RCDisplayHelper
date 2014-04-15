//
//  RCView.m
//  RCDisplayHelper
//
//  Created by Looping on 14-4-15.
//  Copyright (c) 2014年 RidgeCorn. All rights reserved.
//

#import "RCView.h"

@implementation RCView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)layoutSubviews {
    if (_label) {
        [self addSubview:_label];
    }
    [self setCenter:self.superview.center];
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
