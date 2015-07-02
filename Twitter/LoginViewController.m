//
//  LoginViewController.m
//  Twitter
//
//  Created by Jackal Wang on 2015/7/1.
//  Copyright (c) 2015年 Jackal Wang. All rights reserved.
//

#import "LoginViewController.h"
#import "TwitterClient.h"
#import "TweetsViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController
- (IBAction)onLogin:(id)sender {
    [[TwitterClient sharedInstance] loginWithCompletion:^(User *user, NSError *error) {
        if (user != nil) {
            // Modally present tweets view
            
            UINavigationController* nav = [[UINavigationController alloc] initWithRootViewController:[[TweetsViewController alloc] init]];
            
            [self presentViewController:nav animated:NO completion:nil];
            
            NSLog(@"Welcome to %@",user.name);
            
        }else{
            // Preseant error view
        }
    }];

//----------------------
//    [[TwitterClient sharedInstance].requestSerializer removeAccessToken];
//    [[TwitterClient sharedInstance] fetchRequestTokenWithPath:@"oauth/request_token" method:@"GET" callbackURL:[NSURL URLWithString:@"cptwitterdemo://oauth"] scope:nil success:^(BDBOAuth1Credential *requestToken) {
//        NSLog(@"got the request toket!");
//        
//        NSURL *authURL = [NSURL URLWithString:[NSString stringWithFormat:@"https://api.twitter.com/oauth/authorize?oauth_token=%@",requestToken.token]];
//        [[UIApplication sharedApplication] openURL:authURL];
//    } failure:^(NSError *error) {
//        NSLog(@"Failed to get the request token!");
//    }];
//------------------------
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
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
