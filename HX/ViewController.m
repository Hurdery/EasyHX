//
//  ViewController.m
//  HX
//
//  Created by MAC on 2018/9/12.
//  Copyright © 2018年 XMSD. All rights reserved.
//

#import "ViewController.h"
#import "RegisterVC.h"
#import "LoginVC.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"click to start";
    self.view.backgroundColor = [UIColor whiteColor];
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    LoginVC * lvc = [[LoginVC alloc]init];
    [self.navigationController pushViewController:lvc animated:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
