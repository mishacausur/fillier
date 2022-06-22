//
//  Car.m
//  fillier
//
//  Created by Misha Causur on 23.06.2022.
//

#import "Car.h"

static int count = 0;

@implementation Car

- (id)initWithModel:(NSString *)model andPower:(double)power
{
    self = [super init];
    if (self) {
        _model = model;
        _power = power;
        count += 1;
    }
    return self;
}

- (NSString *)info
{
    NSString *strInfo = [NSString stringWithFormat:@"Model: %@; power: %lf", _model, _power];
    return strInfo;
}

+ (void)printCount
{
    NSLog(@"Cars count = %d", count);
}

@end
