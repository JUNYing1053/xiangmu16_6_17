//
//  AKeyTologIn.m
//  jkjkj
//
//  Created by ma c on 16/6/16.
//  Copyright © 2016年 SXT. All rights reserved.
//

#import "AKeyTologIn.h"

@interface AKeyTologIn ()
///biaoti


@end

@implementation AKeyTologIn
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor=[UIColor groupTableViewBackgroundColor];
        [self addSubview:self.lineLabel];
        [self addSubview:self.WordLabel];
        [self addSubview: self.QQimageV];
        [self addSubview:self .WeiimageV];
        [self addSubview:self.XinlangimageV];
        __weak typeof (self)WS =self;
        
        [self.lineLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(WS.mas_top).offset(15);
            make.left.mas_equalTo(WS.mas_left).offset(16);
            make.right.mas_equalTo(WS.mas_right).offset(-16);
            make.height.mas_equalTo(1);
            

            
        }];
        
        [self.WordLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(WS.mas_top);
            
            make.width.mas_equalTo(100);
            make.height.mas_equalTo(30);
            make.centerX.mas_equalTo(WS.lineLabel.mas_centerX);
            
        }];
        CGFloat with=(VIEW_WIDTH-135)/4;
        [self.QQimageV mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(WS.WordLabel.mas_bottom).offset(20);
            make.left.mas_equalTo(WS.mas_left).offset(with);
            make.height.and.width.mas_equalTo(45);
        }];
        [self.WeiimageV mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(WS.WordLabel.mas_bottom).offset(20);
            make.left.mas_equalTo(WS.QQimageV. mas_right).offset(with);
            make.height.and.width.mas_equalTo(45);
        }];
        [self.XinlangimageV mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(WS.WordLabel.mas_bottom).offset(20);
            make.left.mas_equalTo(WS.WeiimageV .mas_right).offset(with);
//            make.right.mas_equalTo(WS.mas_right).offset(-60);
            
            make.height.and.width.mas_equalTo(45);
        }];

        
        
        
        
    }
    return self;
}

-(UILabel *)lineLabel
{
    if (!_lineLabel) {
        _lineLabel=[[UILabel alloc]init];
        _lineLabel.backgroundColor=RGB(220, 220, 220);
        
    }
    
    
    return _lineLabel;
    
}
-(UILabel *)WordLabel
{
    if (!_WordLabel) {
        _WordLabel=[[UILabel alloc]init];
        [_WordLabel setText:@"一键登录"];
        _WordLabel.textColor=RGB(220, 220, 220);
        _WordLabel.textAlignment=1;
        
        _WordLabel.backgroundColor=[UIColor groupTableViewBackgroundColor];
        
        
    }
    return _WordLabel;
}

-(UIButton *)QQimageV
{
    
    if (!_QQimageV) {
        _QQimageV=[[UIButton alloc]init];
        [_QQimageV setBackgroundImage:[UIImage imageNamed:@"登录界面qq登陆"] forState:UIControlStateNormal ];
        
    }
    return _QQimageV;
    
}

-(UIButton *)WeiimageV
{
    
    if (!_WeiimageV) {
        _WeiimageV=[[UIButton alloc]init];
        [_WeiimageV setBackgroundImage: [UIImage imageNamed:@"登录界面微信登录"]forState:UIControlStateNormal];
        
    }
    return _WeiimageV;
    
}

-(UIButton *)XinlangimageV
{
    
    if (!_XinlangimageV) {
        _XinlangimageV=[[UIButton alloc]init];
        [_XinlangimageV setBackgroundImage:[UIImage imageNamed:@"登陆界面微博登录"] forState:UIControlStateNormal];
    }
    return _XinlangimageV;
    
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
