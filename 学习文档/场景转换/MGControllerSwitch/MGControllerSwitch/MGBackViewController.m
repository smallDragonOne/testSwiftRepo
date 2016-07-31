//
//  MGBackViewController.m
//  
//
//  Created by TTS on 15/11/3.
//
//

#import "MGBackViewController.h"
#import "UIViewController+animation.h"
@interface MGBackViewController ()

@end

@implementation MGBackViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//通用返回
- (IBAction)backNom:(id)sender {
    [self backLeft];
}

//自定义动画返回
- (IBAction)back:(id)sender {
    [self backWithAnimation:MGSuckEffect andMGSubtype:MGFromRight];
}


@end
