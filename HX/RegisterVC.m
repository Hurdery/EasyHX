//
//  RegisterVC.m
//  HX
//
//  Created by MAC on 2018/9/12.
//  Copyright © 2018年 XMSD. All rights reserved.
//

#import "RegisterVC.h"
#import <Hyphenate/Hyphenate.h>
#import "LoginVC.h"
@interface RegisterVC ()
@property (weak, nonatomic) IBOutlet UITextField *userName;
@property (weak, nonatomic) IBOutlet UITextField *userPwd;

@end

@implementation RegisterVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"regiter";
}
- (IBAction)registerClick:(id)sender {
    
    EMError *error = [[EMClient sharedClient] registerWithUsername:_userName.text password:_userPwd.text];
    if (error==nil) {
        LoginVC * lvc = [[LoginVC alloc]init];
        [self.navigationController pushViewController:lvc animated:YES];
            }
    
    NSLog(@"error==%@",error.errorDescription);
    
}

-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [self.view endEditing:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
