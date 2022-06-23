//
//  ColorView.m
//  fillier
//
//  Created by Misha Causur on 19.06.2022.
//

#import "ColorView.h"

@implementation ColorView

- (instancetype)initWithFrame:(CGRect)frame andColor:(UIColor *)color
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = color;
    }
    return self;
}

@end
