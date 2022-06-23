//
//  Car.h
//  fillier
//
//  Created by Misha Causur on 23.06.2022.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol Vehicle <NSObject>

- (void)ride:(double)distance;

@optional
- (void)toggleEngine:(BOOL)turnOn;

@end

@interface Car : NSObject <Vehicle>

@property (nonatomic, assign) double power;
@property (nonatomic, assign) NSString *model;
@property (nonatomic, assign, readonly) double distance;

- (id)initWithModel:(NSString *)model andPower:(double)power;
- (NSString *)info;
+ (void)printCount;
@end

NS_ASSUME_NONNULL_END
