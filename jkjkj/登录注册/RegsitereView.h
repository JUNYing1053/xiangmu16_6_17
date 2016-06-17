//
//  RegsitereView.h
//  jkjkj
//
//  Created by ma c on 16/6/17.
//  Copyright © 2016年 SXT. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RegsitereView : UIView


/**背景*/
@property(strong,nonatomic)UILabel *backLabel;
/**用户名*/
@property(strong,nonatomic)UITextField *nameText;
/**密码*/
@property(strong,nonatomic)UITextField*paswordText;
/**分割线*/
@property(strong,nonatomic)UILabel *lineLabel;
/**下一步*/
@property(strong,nonatomic)UIButton *nextbtn;
/**去登陆*/
@property(strong,nonatomic)UIButton *TOlogin;



@end
