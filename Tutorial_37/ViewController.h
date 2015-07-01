//
//  ViewController.h
//  Tutorial_37
//
//  Created by Admin on 30.06.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FBSDKCoreKit/FBSDKCoreKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet FBLoginValue *loginButton;

@property (weak, nonatomic) IBOutlet UILabel *blLoginStatus;

@property (weak, nonatomic) IBOutlet UILabel *lblUsername;

@property (weak, nonatomic) IBOutlet FBProfilePictureView *profilePicture;

@property (weak, nonatomic) IBOutlet UILabel *lblEmail;
@end

