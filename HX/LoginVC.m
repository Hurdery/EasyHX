//
//  LoginVC.m
//  HX
//
//  Created by MAC on 2018/9/12.
//  Copyright © 2018年 XMSD. All rights reserved.
//

#import "LoginVC.h"
#import <Hyphenate/Hyphenate.h>
#import "RegisterVC.h"
#import<EaseMessageViewController.h>
#import <WebKit/WebKit.h>
@interface LoginVC ()
@property (weak, nonatomic) IBOutlet UITextField *userName;
@property (weak, nonatomic) IBOutlet UITextField *userPwd;

@end

@implementation LoginVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"login";
}
- (IBAction)loginClick:(id)sender {

    //eeeeeeee   eeeeee
    //qwer  qwer
    [[EMClient sharedClient] loginWithUsername:_userName.text
                                      password:_userPwd.text
                                    completion:^(NSString *aUsername, EMError *aError) {
                                        if (!aError) {
     EaseMessageViewController *chatController = [[EaseMessageViewController alloc] initWithConversationChatter:@"qwer" conversationType:EMConversationTypeChat];
     [self.navigationController pushViewController:chatController animated:YES];
                                        } else {
                                            NSLog(@"登录失败");
                                        }
                                    }];
    
    
}
- (IBAction)registerClick:(id)sender {

    RegisterVC * rvc =[[RegisterVC alloc ]init];
    [self.navigationController pushViewController:rvc animated:YES];
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
