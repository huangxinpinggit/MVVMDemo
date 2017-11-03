//
//  MVVMView.m
//  MVVMDemo
//
//  Created by MR.H on 2017/10/22.
//  Copyright © 2017年 MR.H. All rights reserved.
//

#import "MVVMView.h"
//#import "FBKVOController.h"

@interface MVVMView()
@property (nonatomic, strong)UILabel *lbContent;
@property (nonatomic, strong)UIButton *button;
@property (nonatomic, strong)MVVMViewModel *viewModel;
@end

@implementation MVVMView
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.lbContent = [UILabel new];
        self.lbContent.frame = CGRectMake(100, 100, 100, 100);
        self.lbContent.textColor = [UIColor blackColor];
        self.lbContent.font = [UIFont systemFontOfSize:15];
        [self addSubview:self.lbContent];
        
        self.button = [UIButton buttonWithType:UIButtonTypeCustom];
        self.button.frame = CGRectMake(100, 200, 100, 50);
        [self.button setTitle:@"print" forState:UIControlStateNormal];
        [self.button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:self.button];
        
        
    }
    return self;
}

-(void)setWithViewModel:(MVVMViewModel *)vm
{
    self.viewModel = vm;
   // [self.KVOController addObserver:vm forKeyPath:@"contentStr" options:NSKeyValueObservingOptionNew|NSKeyValueObservingOptionInitial context:nil];
    //FBKVOController *KVOController = [FBKVOController controllerWithObserver:vm];
    //vm.contentStr = @"123456";
    [self.KVOController  observe:vm keyPath:@"contentStr" options:NSKeyValueObservingOptionNew|NSKeyValueObservingOptionInitial block:^(id  _Nullable observer, id  _Nonnull object, NSDictionary<NSKeyValueChangeKey,id> * _Nonnull change) {
        NSString *contentStr = change[NSKeyValueChangeNewKey];
        self.lbContent.text = contentStr;
    }];
     
}

-(void)buttonAction:(UIButton *)sender{
    [self.viewModel onPrintClick];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
