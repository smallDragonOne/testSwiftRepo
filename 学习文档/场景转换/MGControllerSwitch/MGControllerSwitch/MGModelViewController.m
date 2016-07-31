//
//  MGModelViewController.m
//  
//
//  Created by TTS on 15/11/3.
//
//

#import "MGModelViewController.h"
#import "UIViewController+animation.h"
@interface MGModelViewController ()

@end

@implementation MGModelViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)backMon:(id)sender {
    [self modelBack];
}

- (IBAction)animationBack:(id)sender {
    [self modelBackWithAnimation:MGOglFlip andMGSubtype:MGFromMoveIn];
}

@end
