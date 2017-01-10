//
//  BNRHypnosisView.m
//  Hypnosister
//
//  Created by hedong on 17/1/7.
//  Copyright © 2017年 hedong. All rights reserved.
//

#import "BNRHypnosisView.h"

@interface BNRHypnosisView()

@property (strong, nonatomic) UIColor *circleColor;

@end

@implementation BNRHypnosisView

- (void)drawRect:(CGRect)rect {
    CGRect bounds = self.bounds;
    
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width / 2;
    center.y = bounds.origin.y + bounds.size.height / 2;
    
    //以宽和高的较小者作为半径
    float maxRadius = MIN(bounds.size.width, bounds.size.height) / 2.0;
    
    UIBezierPath *path = [[UIBezierPath alloc] init];
    for (float currentRadius = maxRadius; currentRadius > 0; currentRadius -= 20) {
        [path moveToPoint:CGPointMake(center.x + currentRadius, center.y)];
        [path addArcWithCenter:center radius:currentRadius startAngle:0.0 endAngle:M_PI * 2.0 clockwise:YES];
    }
    path.lineWidth = 10;
    [self.circleColor setStroke];
    [path stroke];
    
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        self.circleColor = [UIColor lightGrayColor];
    }
    return self;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"%@ was touched", self);
    
    //获取随机RGB
    float red = arc4random() % 100 / 100.0;
    float green = arc4random() % 100 / 100.0;
    float blue = arc4random() % 100 / 100.0;
    
    UIColor *randColor = [UIColor colorWithRed:red green:green blue:blue alpha:1.0];
    self.circleColor = randColor;
}

- (void)setCircleColor:(UIColor *)circleColor {
    NSLog(@"setCircleColor= %@", circleColor);
    _circleColor = circleColor;
    [self setNeedsDisplay];
}

@end
