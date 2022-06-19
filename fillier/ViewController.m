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
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(20.0, 20.0, 60.0, 60.0)];
    [button setTitle:@"Tap" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(tapHandle) forControlEvents:UIControlEventTouchUpInside];
    [self.blueView addSubview:button];
}

- (void)tapHandle
{
    NSLog(@"tap");
}
@end
