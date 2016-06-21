//
//  RegsitereView.m
//  jkjkj
//
//  Created by ma c on 16/6/17.
//  Copyright © 2016年 SXT. All rights reserved.
//

#import "RegsitereView.h"

@interface RegsitereView ()<UITextFieldDelegate>

@end

@implementation RegsitereView


- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor=[UIColor groupTableViewBackgroundColor];
        
        
        [self addSubview:self.backLabel];
        [self addSubview:self.nameText];
        [self addSubview: self.lineLabel];
        [self addSubview:self.paswordText];
        [self addSubview:self.nextbtn];
        [self addSubview:self.TOlogin];
        
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
        [self.nextbtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(weakSelf.backLabel.mas_bottom).offset(15);
            make.left.mas_equalTo(weakSelf.mas_left).offset(16);
            make.right.mas_equalTo(weakSelf.mas_right).offset(-16);
            make.height.mas_equalTo(35);
            
            
        }];
        [self.TOlogin mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(weakSelf.nextbtn.mas_bottom).offset(17);
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
        _paswordText.placeholder=@"设置账号密码";
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
-(UIButton *)nextbtn
{
    if (!_nextbtn) {
        _nextbtn=[[UIButton alloc]init];
//        _nextbtn.backgroundColor=[UIColor grayColor];
//                [_nextbtn setTitle:@"下一步" forState:UIControlStateNormal];
//                [_nextbtn setTintColor:[UIColor blackColor]];
        _nextbtn.layer.masksToBounds=YES;
        _nextbtn.layer.cornerRadius=10.0;
        
        [_nextbtn setBackgroundImage:[UIImage imageNamed:@"注册界面下一步按钮"] forState:UIControlStateNormal];
        
        
        
        
    }
    
    return _nextbtn;
}
-(UIButton *)TOlogin{
    if (!_TOlogin) {
        _TOlogin=[[UIButton alloc]init];
        [_TOlogin setTitle:@"去登陆" forState:UIControlStateNormal];
        [_TOlogin setTitleColor:RGB(57, 166, 238) forState:UIControlStateNormal];
        
        
        
    }
    
    return _TOlogin;
    
}



-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self.nameText resignFirstResponder];
    [self.paswordText resignFirstResponder];
    return NO;
}



/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
