//
//  ViewController.m
//  fillier
//
//  Created by Misha Causur on 19.06.2022.
//

#import "ViewController.h"
#import "ColorView.h"

@interface ViewController ()

@property (nonatomic, strong) ColorView *blueView;
@property (nonatomic, strong) ColorView *yellowView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.blueView = [[ColorView alloc] initWithFrame:CGRectMake(30.0, 150.0, 100.0, 100.0) andColor:[UIColor blueColor]];
    
    self.yellowView = [[ColorView alloc] initWithFrame:CGRectMake(40.0, 200.0, 200.0, 200.0) andColor:[UIColor yellowColor]];
    
    [self.view addSubview:self.blueView];
    [self.view addSubview:self.yellowView];
    
    [self.view bringSubviewToFront:self.blueView];
    self.view.backgroundColor = [UIColor blackColor];
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(20.0, 20.0, 60.0, 60.0)];
    [button setTitle:@"Tap" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(tapHandle) forControlEvents:UIControlEventTouchUpInside];
    [self.blueView addSubview:button];
    
    NSLog(@"Frame: %@", NSStringFromCGRect(self.blueView.frame));
    NSLog(@"Frame: %@", NSStringFromCGRect(self.blueView.bounds));
    NSLog(@"Frame: %@", NSStringFromCGRect(self.yellowView.frame));
    NSLog(@"Frame: %@", NSStringFromCGRect(self.yellowView.bounds));
    
    CALayer *sublayer = [CALayer layer];
    sublayer.backgroundColor = [UIColor blueColor].CGColor;
    sublayer.shadowOffset = CGSizeMake(0.0, 3.0);
    sublayer.shadowRadius = 5.0;
    sublayer.shadowColor = [UIColor blackColor].CGColor;
    sublayer.shadowOpacity = 0.8;
    sublayer.frame = CGRectMake(300.0, 300.0, 128.0, 192.0);
    
    [self.view.layer addSublayer:sublayer];
}

- (void)tapHandle
{
    NSLog(@"tap");
    
    [UIView animateWithDuration:1.0 animations:^{
        self.blueView.transform = CGAffineTransformRotate(self.blueView.transform, M_PI / 6);
        } completion:^(BOOL finished) {
            NSLog(@"________ CHANGES");
            NSLog(@"Frame: %@", NSStringFromCGRect(self.blueView.frame));
            NSLog(@"Frame: %@", NSStringFromCGRect(self.blueView.bounds));
        }];
}
@end
