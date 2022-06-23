//
//  main.m
//  fillier
//
//  Created by Misha Causur on 19.06.2022.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "Car.h"

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        Car *car1 = [[Car alloc] initWithModel:@"BMW" andPower:330];
        NSString *car1Info = [car1 info];
        NSLog(@"Info about car one: %@", car1Info);
        
        if ([Car conformsToProtocol:@protocol(Vehicle)]) {
            [car1 ride:100];
            
            if ([car1 respondsToSelector:@selector((toggleEngine:))]) {
                [car1 toggleEngine:YES];
                [car1 toggleEngine:NO];
            }
        }
        
        Car *car2 = [[Car alloc] initWithModel:@"Audi" andPower:330];
        NSString *car2Info = [car2 info];
        NSLog(@"Info about car one: %@", car2Info);
        
        [Car printCount];
        
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
