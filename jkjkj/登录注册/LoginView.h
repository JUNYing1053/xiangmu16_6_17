//
//  LoginView.h
//  jkjkj
//
//  Created by ma c on 16/6/16.
//  Copyright © 2016年 SXT. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginView : UIView


/**背景*/
@property(strong,nonatomic)UILabel *backLabel;
/**用户名*/
@property(strong,nonatomic)UITextField *nameText;
/**密码*/
@property(strong,nonatomic)UITextField*paswordText;
/**分割线*/
@property(strong,nonatomic)UILabel *lineLabel;
/**登录按钮*/
@property(strong,nonatomic)UIButton *loginedbtn;
/**注册*/
@property(strong,nonatomic)UIButton *registered;




@end
