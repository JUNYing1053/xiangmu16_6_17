//
//  TableVIewTop.m
//  jkjkj
//
//  Created by ma c on 16/6/20.
//  Copyright © 2016年 SXT. All rights reserved.
//

#import "TableVIewTop.h"

@implementation TableVIewTop
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
       [self NOLogin];
        
//        [self Login];
    }
    return self;
}

-(void)NOLogin
{
    [self addSubview: self.BackeImageview];
    [self addSubview:self.OneBtn];
    [self addSubview:self.TwoBrn];
    __weak typeof (self)WS=self;
    
    
    [self.BackeImageview mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.and.left.and.bottom.right.mas_equalTo(WS);
        
    }];
    [self.OneBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(WS.mas_centerY);
        make.left.mas_equalTo(WS.mas_centerX).offset(-100);
        make.height.mas_equalTo(30);
        

        
        
    }];
    
    [self.TwoBrn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(WS.mas_centerY);
        make.right.mas_equalTo(WS.mas_centerX).offset(100);
        make.height.mas_equalTo(30);
        
        
        
        
    }];
    

    
    
}
-(void)Login
{
    [self addSubview: self.BackeImageview];
    [self addSubview:self.imageview];
    [self addSubview:self.OneLabel];
    [self addSubview:self.TwoLabel];
    
    __weak typeof (self)WS=self;
    
    
    [self.BackeImageview mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.and.left.and.bottom.right.mas_equalTo(WS);
        
    }];
    [self.imageview mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(WS.BackeImageview.mas_top).offset(25);
        make.bottom.mas_equalTo(WS.BackeImageview.mas_bottom).offset(-25);
        make.left.mas_equalTo(WS.BackeImageview.mas_left).offset(57);
        make.width.mas_equalTo(77);
        
        

    }];
    
    
    [self.OneLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(WS.BackeImageview.mas_top).offset(37);

        make.left.mas_equalTo(WS.imageview.mas_right).offset(39);
        

        make.height.mas_equalTo(16);
        
        
        
        
    }];
    
    [self.TwoLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(WS.OneLabel.mas_bottom).offset(20);
        
        make.left.mas_equalTo(WS.imageview.mas_right).offset(39);
        
        
        make.height.mas_equalTo(16);
        
        
        
        
    }];
    


}



-(UIImageView* )BackeImageview
{
    if (!_BackeImageview) {
        _BackeImageview=[[UIImageView alloc]init];
        _BackeImageview.image=[UIImage imageNamed: @"我的背景"];
    }
    
    return _BackeImageview;
    
}
-(UIButton *)OneBtn
{
    if (!_OneBtn) {
        _OneBtn=[[UIButton alloc]init];
        [_OneBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_OneBtn setTitle:@"登录" forState:UIControlStateNormal];
        
    }
    return _OneBtn;
    
}
-(UIButton *)TwoBrn
{
    if (!_TwoBrn) {
        _TwoBrn=[[UIButton alloc]init];
        [_TwoBrn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_TwoBrn setTitle:@"注册" forState:UIControlStateNormal];
        
    }
    return _TwoBrn;
    
}

-(UILabel *)OneLabel
{
    if (!_OneLabel) {
        _OneLabel=[[UILabel alloc]init];
        _OneLabel.textColor=[UIColor whiteColor];
        _OneLabel.text=@"登录";
    }
    return _OneLabel;
    
}
-(UILabel *)TwoLabel
{
    if (!_TwoLabel) {
        _TwoLabel=[[UILabel alloc]init];
        _TwoLabel.textColor=[UIColor whiteColor];
        _TwoLabel.text=@"注册";
    }
    return _TwoLabel;
    
}
-(UIImageView *)imageview
{
    if (!_imageview) {
        _imageview =[[UIImageView alloc]init];
        _imageview.layer.masksToBounds=YES;
        _imageview.layer.cornerRadius=36;
        _imageview.image=[UIImage imageNamed:@"桌面"];
        
    }
    return _imageview;
    
}



/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
