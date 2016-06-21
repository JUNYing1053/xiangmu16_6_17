//
//  MYViewController.m
//  jkjkj
//
//  Created by ma c on 16/6/16.
//  Copyright © 2016年 SXT. All rights reserved.
//

#import "MYViewController.h"
#import "TableVIewTop.h"
#import "Tabview.h"
@interface MYViewController ()
@property(strong,nonatomic)UIButton *nextbtn;
@property(strong,nonatomic) TableVIewTop *top;
@property(strong,nonatomic) Tabview *tab;

@end

@implementation MYViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor groupTableViewBackgroundColor];
    
    [self.view addSubview:self.top];
    [self.view addSubview:self.tab];
    [self.view addSubview:self.nextbtn];
    
    __weak typeof(self)ws=self;
    
    [self.top mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(ws.view.mas_top);
        make.left.mas_equalTo(ws.view.mas_left);
        make.right.mas_equalTo(ws.view.mas_right);
        make.height.mas_equalTo(125);
    }];
    [self.tab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(ws.top.mas_bottom);
        make.left.mas_equalTo(ws.view.mas_left);
        make.right.mas_equalTo(ws.view.mas_right);
        make.height.mas_equalTo(300);
    }];
    [self.nextbtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(ws.tab.mas_bottom).offset(42);
        make.left.mas_equalTo(ws.view.mas_left).offset(50);
        make.right.mas_equalTo(ws.view.mas_right).offset(-50);
//        make.bottom.mas_equalTo(ws.view.mas_bottom).offset(-42);
        make.width.mas_equalTo(45);

    }];

}

-(TableVIewTop *)top
{
    if (!_top) {
        _top =[[TableVIewTop alloc]init];
        
    }
    return _top;
}
-(Tabview *)tab
{
    if (!_tab) {
        _tab =[[Tabview alloc]init];
        
    }
    return _tab;
}

-(UIButton *)nextbtn
{
    if (!_nextbtn) {
        _nextbtn=[[UIButton alloc]init];
        [  _nextbtn setImage:[UIImage imageNamed:@"我的界面退出登录按钮"] forState:UIControlStateNormal];
    }
    return _nextbtn;
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
