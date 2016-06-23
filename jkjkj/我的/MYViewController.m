//
//  MYViewController.m
//  jkjkj
//
//  Created by ma c on 16/6/16.
//  Copyright © 2016年 SXT. All rights reserved.
//

#import "MYViewController.h"

@interface MYViewController ()
//@property(strong,nonatomic) TableVIewTop *top;

@end

@implementation MYViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor groupTableViewBackgroundColor];
    
    
    
    
    [self.view addSubview:self.tab];
    
    __weak typeof(self)ws=self;
    
       [self.tab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(ws.view.mas_top);
        make.left.mas_equalTo(ws.view.mas_left);
        make.right.mas_equalTo(ws.view.mas_right);
        make.height.mas_equalTo(550);
    }];

//    NSDictionary *dic=Defaults;
//    if (dic!=0) {
//    }

    [self.tab.tabtop .OneBtn addTarget:self action:@selector(TOlogingTheUser) forControlEvents:UIControlEventTouchUpInside];
    
    [self.tab.tabtop.TwoBrn addTarget:self action:@selector(TORegsiterTheuser) forControlEvents:UIControlEventTouchUpInside];
    

}
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [self.tab reloadData];
    
}


-(void)TOlogingTheUser{
    LogingViewController *loginVC=[[LogingViewController alloc]init];
    [self.navigationController pushViewController:loginVC animated:YES];
    
}

-(void)TORegsiterTheuser
{
    RegisteredViewController *registeredVC=[[RegisteredViewController alloc]init];
    [self.navigationController pushViewController:registeredVC animated:YES];

}










-(Tabvieww *)tab
{
    if (!_tab) {
        _tab =[[Tabvieww alloc]init];
        
    }
    return _tab;
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
