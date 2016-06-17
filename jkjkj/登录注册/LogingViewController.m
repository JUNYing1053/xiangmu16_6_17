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
    
    // Do any additional setup after loading the view.
}


-(LoginView *)loginV{
    if (!_loginV) {
        _loginV=[[LoginView alloc]initWithFrame:CGRectMake(0, 0,CGRectGetWidth(self.view.frame), 210)];
        
    }
    return _loginV;
    
}

-(AKeyTologIn *)login
{
    if (!_login) {
        _login=[[AKeyTologIn alloc]initWithFrame:CGRectMake(0, 210, CGRectGetWidth(self.view.frame), 150)];
        
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
