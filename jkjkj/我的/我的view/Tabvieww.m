//
//  Tabvieww.m
//  jkjkj
//
//  Created by ma c on 16/6/23.
//  Copyright © 2016年 SXT. All rights reserved.
//

#import "Tabvieww.h"

@implementation Tabvieww

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.delegate=self;
        self.dataSource=self;
//        self.scrollEnabled=NO;
        

        
    }
    return self;
}




-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *view=[[UIView alloc ]initWithFrame:CGRectMake(0,0, self.frame.size.width, 135)];
//    view.backgroundColor=[UIColor blueColor];
    [view addSubview:self.tabtop];
    
    return view;
    
    
    
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSDictionary *islogin=Defaults;
    NSLog(@"===7777===%@",islogin);
    [self.tabtop showLandingAndLoginBtn:islogin];
    if (islogin==0) {
        return 4;
    }
    else{
        return 6;
    }
}
-(UIView*)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    UIView *footer=[[UIView alloc ]initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.frame), 130)];
    [footer addSubview:self.nextbtn];

    NSDictionary *islogin=Defaults;
    if (islogin!=0) {
        self.nextbtn.hidden=NO;
    }
    else{
        self.nextbtn.hidden=YES;
        
    }
    

    
    
    
    return footer;
    

}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 130;
}

//每个section头部标题高度（实现这个代理方法后前面 sectionFooterHeight 设定的高度无效）

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 125;
    
}
-(TableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *ID=@"TableViewCell";
    
    TableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:ID];
    if (!cell) {
        cell=[[TableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
        
    }
    NSDictionary *dic=self.tabArray[indexPath.row];
    
    cell.txtlab.text=dic[@"title"];
    cell.leftimageview.image =[UIImage imageNamed:dic[@"image"]];
    if (indexPath.row==4) {
        [cell.rightBtn setTitle:@"400-6010-545" forState:UIControlStateNormal];
    }else{
        [cell.rightBtn setImage:[UIImage imageNamed:@"下一步"] forState:UIControlStateNormal];
        
    }
    return cell;
    
    
    
}




-(TableVIewTop *)tabtop
{
    if (!_tabtop) {
        _tabtop =[[TableVIewTop alloc]initWithFrame:CGRectMake(0, 0,VIEW_WIDTH , 125)];

    }
    return _tabtop;
}



-(NSArray *)tabArray
{
    if (!_tabArray) {
        _tabArray=[NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"MYviewList" ofType:@"plist"]];
        
        
    }
    return _tabArray;
    
    
}
-(UIButton *)nextbtn
{
    if (!_nextbtn) {
        _nextbtn=[[UIButton alloc]initWithFrame:CGRectMake(50, 42, 279, 45)];
        [  _nextbtn setImage:[UIImage imageNamed:@"我的界面退出登录按钮"] forState:UIControlStateNormal];
        [_nextbtn addTarget:self action:@selector(removeUSerdefailte) forControlEvents:UIControlEventTouchUpInside];

    }
    return _nextbtn;
}
-(void)removeUSerdefailte
{
    //退出
    [[NSUserDefaults standardUserDefaults]removeObjectForKey:@"IsLogin"];
    [self reloadData];
    
}


@end




