//
//  MVVMViewModel.m
//  MVVMDemo
//
//  Created by MR.H on 2017/10/22.
//  Copyright © 2017年 MR.H. All rights reserved.
//

#import "MVVMViewModel.h"
#import "MVVMPaper.h"
@interface MVVMViewModel()
@property (nonatomic, strong)MVVMPaper *model;
@end
@implementation MVVMViewModel
- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}
-(void)setWithModel:(MVVMPaper *)paper
{
    self.model = paper;
    self.contentStr = paper.content;
}
-(void)onPrintClick
{
    self.model.content = @"line 1";
    self.contentStr = self.model.content;
}
@end
