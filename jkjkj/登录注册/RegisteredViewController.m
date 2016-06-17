//
//  RegisteredViewController.m
//  jkjkj
//
//  Created by ma c on 16/6/17.
//  Copyright © 2016年 SXT. All rights reserved.
//

#import "RegisteredViewController.h"
#import "RegsitereView.h"
#import "AKeyTologIn.h"


@interface RegisteredViewController ()
@property(strong,nonatomic) RegsitereView*redsitereV;
@property(strong,nonatomic)AKeyTologIn*login;

@end

@implementation RegisteredViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title=@"注册";
    UILabel *tishi=[[UILabel alloc]init];
    tishi.text=@"请输入手机号注册新用户";
    tishi.textColor=[UIColor blackColor];
    
    [self.view addSubview:tishi];
    
    
    self.view.backgroundColor=[UIColor groupTableViewBackgroundColor];
    
    [self.view addSubview:self.redsitereV];
    
    [self.view addSubview:self.login];
    __weak typeof (self)ws=self;
    
    [tishi mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(ws.view.mas_top).offset(11);
        make.left.mas_equalTo(ws.view.mas_left).offset(15);
        make.height.mas_equalTo(14);

    }];
    
    
    [self.redsitereV mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.mas_equalTo(ws.view.mas_top).offset(35);
        make.left.mas_equalTo(ws.view.mas_left);
        make.right.mas_equalTo(ws.view.mas_right);
        make.height.mas_equalTo(210);
        
    }];
    [self.login mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.mas_equalTo(ws.redsitereV.mas_bottom);
        make.left.mas_equalTo(ws.view.mas_left);
        make.right.mas_equalTo(ws.view.mas_right);
        make.height.mas_equalTo(160);
        
    }];


    // Do any additional setup after loading the view.
}
-(RegsitereView *)redsitereV{
    if (!_redsitereV) {
        _redsitereV=[[RegsitereView alloc]init];
        
    }
    return _redsitereV;
    
}

-(AKeyTologIn *)login
{
    if (!_login) {
        _login=[[AKeyTologIn alloc]init];
        
    }
    return _login;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
