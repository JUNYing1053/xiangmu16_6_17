//
//  LoginView.m
//  jkjkj
//
//  Created by ma c on 16/6/16.
//  Copyright © 2016年 SXT. All rights reserved.
//

#import "LoginView.h"

@interface LoginView ()<UITextFieldDelegate>
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


@implementation LoginView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor=[UIColor groupTableViewBackgroundColor];
        NSLog(@"sdsd");
        
        NSLog(@"sdsd");
        NSLog(@"sdsd");
        NSLog(@"sdsd");

        
        [self addSubview:self.backLabel];
        [self addSubview:self.nameText];
        [self addSubview: self.lineLabel];
        [self addSubview:self.paswordText];
        [self addSubview:self.loginedbtn];
        [self addSubview:self.registered];
        
        __weak typeof(self)weakSelf=self;
        
        
        [self.backLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(weakSelf.mas_top).offset(15);
            make.left.mas_equalTo(weakSelf.mas_left).offset(0);
            make.right.mas_equalTo(weakSelf.mas_right).offset(0);
            make.height.mas_equalTo(89);
            
            
        }];
    [self.nameText mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(weakSelf.backLabel.mas_top);
        make.left.mas_equalTo(weakSelf.backLabel.mas_left).offset(15);
        make.right.mas_equalTo(weakSelf.backLabel.mas_right).offset(-15);
        
        make.height.mas_equalTo(44);
        
        
    }];
        [self.lineLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(weakSelf.nameText.mas_bottom);
            make.left.mas_equalTo(weakSelf.backLabel.mas_left).offset(15);
            make.right.mas_equalTo(weakSelf.backLabel.mas_right).offset(-15);
            make.height.mas_equalTo(1);
            
        }];
        
    [self.paswordText mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.mas_equalTo(weakSelf.lineLabel.mas_bottom);
        make.left.mas_equalTo(weakSelf.backLabel.mas_left).offset(15);
        make.right.mas_equalTo(weakSelf.backLabel.mas_right).offset(-15);
        
        make.height.mas_equalTo(44);
        
    }];
        [self.loginedbtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(weakSelf.backLabel.mas_bottom).offset(15);
            make.left.mas_equalTo(weakSelf.mas_left).offset(16);
            make.right.mas_equalTo(weakSelf.mas_right).offset(-16);
            make.height.mas_equalTo(35);
            
            
        }];
        [self.registered mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(weakSelf.loginedbtn.mas_bottom).offset(17);
            make.right.mas_equalTo(weakSelf.mas_right).offset(-16);
            make.height.mas_equalTo(35);
            make.width.mas_equalTo(80);
            
            
            
        }];

        
    
    }
    return self;
}

-(UILabel *)backLabel
{

    if (!_backLabel) {
        _backLabel=[[UILabel alloc]init];
        _backLabel.backgroundColor=[UIColor whiteColor];
        
        
    }
    
    return _backLabel;
    
}
-(UITextField *)nameText
{
    if (!_nameText) {
        _nameText =[[UITextField alloc]init];
        
        [_nameText setBorderStyle:UITextBorderStyleNone];
        _nameText.placeholder=@"请输入手机号";
        _nameText.delegate=self;
        
    }
    return _nameText;
    
}
-(UITextField *)paswordText
{
    if (!_paswordText) {
        _paswordText =[[UITextField alloc]init];
        [_paswordText setBorderStyle:UITextBorderStyleNone];
        _paswordText.placeholder=@"请输入密码";
        _paswordText.secureTextEntry=YES;
        
        _paswordText.delegate=self;
        
    }
    return _paswordText;
    
}


-(UILabel *)lineLabel
{
    if (!_lineLabel) {
        _lineLabel=[[UILabel alloc]init];
        _lineLabel.backgroundColor=[UIColor blackColor];
        
        
        
    }
    return _lineLabel;
    
}
-(UIButton *)loginedbtn
{
    if (!_loginedbtn) {
        _loginedbtn=[[UIButton alloc]init];
        _loginedbtn.backgroundColor=RGB(57, 166, 238);
//        [_loginedbtn setTitle:@"登录" forState:UIControlStateNormal];
//        [_loginedbtn setTintColor:[UIColor whiteColor]];
        _loginedbtn.layer.masksToBounds=YES;
        _loginedbtn.layer.cornerRadius=10.0;
        
        [_loginedbtn setBackgroundImage:[UIImage imageNamed:@"登录界面登录按钮"] forState:UIControlStateNormal];
        

        
        
    }
    
    return _loginedbtn;
}
-(UIButton *)registered{
    if (!_registered) {
        _registered=[[UIButton alloc]init];
        [_registered setTitle:@"免费注册" forState:UIControlStateNormal];
        [_registered setTitleColor:RGB(57, 166, 238) forState:UIControlStateNormal];
        
        
        
    }
    
    return _registered;
    
}



-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self.nameText resignFirstResponder];
    [self.paswordText resignFirstResponder];
    return YES;
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
