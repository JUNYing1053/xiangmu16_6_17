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
#import "UMSocial.h"
#import "ThirdParty.h"
#import "IslogingTo.h"
#import "MYViewController.h"

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
    
    [self.loginV.loginedbtn addTarget:self action:@selector(toHttpLoging) forControlEvents:UIControlEventTouchUpInside];
    
    
   [ self.login.QQimageV addTarget:self action:@selector(QQlonging) forControlEvents:UIControlEventTouchUpInside];
    [self.login.WeiimageV addTarget:self action:@selector(weixinlonging) forControlEvents:UIControlEventTouchUpInside];
    [self.login.XinlangimageV addTarget:self action:@selector(xinalanglonging) forControlEvents:UIControlEventTouchUpInside];

    
    
    
    // Do any additional setup after loading the view.
}



-(void)toHttpLoging{
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/plain"];
    
    // 17721025595  ***123123
    NSDictionary* dict=@{@"LoginName":self.loginV.nameText.text,
                         @"Lpassword":self.loginV.paswordText.text,
                         @"CouponsId":@""
                         };
    
    WS(wakeself);
    [manager GET:LoginURL parameters:dict progress:^(NSProgress * _Nonnull downloadProgress) {
        NSLog(@"正在请求数据");
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {

        NSDictionary *dic=responseObject;
                NSLog(@"请求完成");

        NSNotification * notice =[NSNotification notificationWithName:@"notice" object:nil userInfo:dict];
        //发送消息
        [[NSNotificationCenter defaultCenter]postNotification:notice];

        if ([dic[@"ErrorMessage"] isEqualToString:@"登陆成功"]) {
            

            [[NSUserDefaults standardUserDefaults] setValue:dic forKey:@"IsLogin"];
            
            wakeself .tabBarItem.badgeValue=[NSString stringWithFormat:@"%@",dic[@"result"]];
            [SVProgressHUD showImage:nil status:dic[@"ErrorMessage"]];

            
            
            [wakeself.navigationController popViewControllerAnimated:NO];
        
            
            
        }
        else{
            [SVProgressHUD showImage:nil status:dic[@"ErrorMessage"]];
            
            
        }
        
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"-==-=-=-=%@",error.localizedDescription);
        
    }];
    

    

}


-(void)QQlonging{
    [ThirdParty QQlongingTO:self witch:^(NSDictionary *returnDict) {
        NSLog(@"returnDic is  :  %@",returnDict);
        
    }];
    
}

-(void)weixinlonging{
    [ThirdParty weixinlongingTO:self witch:^(NSDictionary *returnDict) {
        NSLog(@"returnDic is  :  %@",returnDict);

    }];
}


-(void)xinalanglonging{
    [ThirdParty weiblongingTO:self witch:^(NSDictionary *returnDict) {
        NSLog(@"returnDic is  :  %@",returnDict);

    }];
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
