//
//  MVVMViewController.m
//  MVVMDemo
//
//  Created by MR.H on 2017/10/22.
//  Copyright © 2017年 MR.H. All rights reserved.
//

#import "MVVMViewController.h"
#import "MVVMView.h"
#import "MVVMPaper.h"
#import "MVVMViewModel.h"
@interface MVVMViewController ()
@property (nonatomic, strong)MVVMView *myView;
@property (nonatomic, strong)MVVMPaper *paper;
@property (nonatomic, strong)MVVMViewModel *viewModel;
@end

@implementation MVVMViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];
    self.paper = [[MVVMPaper alloc] init];
    self.paper.content = @"line 0";
    self.myView = [[MVVMView alloc] init];
    self.myView.frame = self.view.bounds;
    [self.view addSubview:self.myView];
    
    self.viewModel = [[MVVMViewModel alloc] init];
     [self.viewModel setWithModel:self.paper];
    [self.myView setWithViewModel:_viewModel];
   
}



@end
