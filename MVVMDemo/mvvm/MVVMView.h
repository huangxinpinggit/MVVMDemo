//
//  MVVMView.h
//  MVVMDemo
//
//  Created by MR.H on 2017/10/22.
//  Copyright © 2017年 MR.H. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MVVMViewModel.h"
#import "NSObject+FBKVOController.h"
@interface MVVMView : UIView
-(void)setWithViewModel:(MVVMViewModel *)vm;
@end
