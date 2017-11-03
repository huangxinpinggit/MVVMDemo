//
//  ViewController.m
//  MVVMDemo
//
//  Created by MR.H on 2017/10/22.
//  Copyright © 2017年 MR.H. All rights reserved.
//

#import "ViewController.h"
#import "MVVMViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self showMVVM];
    });
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)showMVVM{
    MVVMViewController *control = [MVVMViewController new];
    [self presentViewController:control animated:YES completion:nil];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
