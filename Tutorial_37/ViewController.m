//
//  ViewController.m
//  Tutorial_37
//
//  Created by Admin on 30.06.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import "ViewController.h"
#import <FBSDKCoreKit/FBSDKCoreKit.h>
#import <FBSDKLoginKit/FBSDKLoginKit.h>


@interface ViewController ()

-(void)toggleHiddenState:(BOOL)shouldHide;


@end

@implementation ViewController

- (void)viewDidLoad {
    
    FBSDKLoginButton *loginButton = [[FBSDKLoginButton alloc] init];
    [self.view addSubview:loginButton];
    [super viewDidLoad];
    [self.view addSubview:loginButton];
    [self toggleHiddenState:YES];
    self.blLoginStatus.text = @"";
    self.loginButton.readPermissions = @[@"public_profile", @"email"];
    self.loginButton.delegate = self;
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)toggleHiddenState:(BOOL)shouldHide{
    self.lblUsername.hidden = shouldHide;
    self.lblEmail.hidden = shouldHide;
    self.profilePicture.hidden = shouldHide;
}

- (void) loginViewShowingLoggedInUser:(FBSDKLoginButton *)loginView
{
    self.blLoginStatus.text = @"You are logged in.";
    
    [self toggleHiddenState:NO];
}

@end
