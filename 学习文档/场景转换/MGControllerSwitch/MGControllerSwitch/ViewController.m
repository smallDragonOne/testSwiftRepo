//
//  ViewController.m
//  MGControllerSwitch
//
//  Created by TTS on 15/11/3.
//  Copyright (c) 2015年 mangues. All rights reserved.
//

#import "ViewController.h"
#import "UIViewController+animation.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)left:(id)sender {
    [self pushLeft:@"Main" andViewControllerName:@"MGBackViewController" andPushType:push];
}

- (IBAction)right:(id)sender {
    [self pushRight:@"Main" andViewControllerName:@"MGBackViewController" andPushType:push];
}

- (IBAction)animationopen:(id)sender {
    [self pushAnimationController:@"Main" andViewControllerName:@"MGBackViewController" andAnimationType:MGOglFlip andDisType:MGFromRight andPushType:push];
}

- (IBAction)modelopen:(id)sender {
    [self startModelNormal:@"Main" andViewControllerName:@"MGModelViewController"];
}
@end
