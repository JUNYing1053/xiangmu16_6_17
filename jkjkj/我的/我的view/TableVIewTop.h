//
//  TableVIewTop.h
//  jkjkj
//
//  Created by ma c on 16/6/20.
//  Copyright © 2016年 SXT. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableVIewTop : UIView
@property(strong,nonatomic)UIImageView *BackeImageview;
@property(strong,nonatomic)UIButton *OneBtn;
@property(strong,nonatomic)UIButton *TwoBrn;
@property(strong,nonatomic)UILabel *OneLabel;
@property(strong,nonatomic)UILabel *TwoLabel;
@property(strong,nonatomic)UIImageView *imageview;

-(void)NOLogin;
-(void)Login;
- (void)showLandingAndLoginBtn:(NSDictionary *)dic;

@end
