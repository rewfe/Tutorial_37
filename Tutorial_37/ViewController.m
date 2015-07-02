//
//  ViewController.m
//  Tutorial_37
//
//  Created by Admin on 30.06.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    FBSDKLoginButton *loginButton = [[FBSDKLoginButton alloc] init];
    self.loginButton.readPermissions = @[@"public_profile", @"email", @"user_friends"];
    [self.view addSubview:loginButton];
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
