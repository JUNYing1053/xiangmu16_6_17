//
//  LogingViewController.m
//  jkjkj
//
//  Created by ma c on 16/6/16.
//  Copyright © 2016年 SXT. All rights reserved.
//

#import "LogingViewController.h"
#import "LoginView.h"
#import "AKeyTologIn.h"
#import "RegisteredViewController.h"

@interface LogingViewController ()
@property(strong,nonatomic)LoginView *loginV;
@property(strong,nonatomic)AKeyTologIn*login;



@end

@implementation LogingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor groupTableViewBackgroundColor];
    
    [self.view addSubview:self.loginV];
    
    [self.view addSubview:self.login];
    __weak typeof (self)ws=self;
    
    [self.loginV mas_makeConstraints:^(MASConstraintMaker *make) {
    
        make.top.mas_equalTo(ws.view);
        make.left.mas_equalTo(ws.view.mas_left);
        make.right.mas_equalTo(ws.view.mas_right);
        make.height.mas_equalTo(210);
        
    }];
    [self.login mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.mas_equalTo(ws.loginV.mas_bottom);
        make.left.mas_equalTo(ws.view.mas_left);
        make.right.mas_equalTo(ws.view.mas_right);
        make.height.mas_equalTo(160);
        
    }];

    
    [self.loginV.registered addTarget:self action:@selector(returnRegistered) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    
    
    // Do any additional setup after loading the view.
}

-(void)returnRegistered{

    RegisteredViewController *registereVC=[[RegisteredViewController alloc]init];
    [self.navigationController pushViewController:registereVC animated:NO];
}


-(LoginView *)loginV{
    if (!_loginV) {
        _loginV=[[LoginView alloc]init];
        
    }
    return _loginV;
    
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
