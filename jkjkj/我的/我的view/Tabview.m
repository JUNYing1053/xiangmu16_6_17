//
//  Tabview.m
//  jkjkj
//
//  Created by ma c on 16/6/20.
//  Copyright © 2016年 SXT. All rights reserved.
//

#import "Tabview.h"
#import "TableViewCell.h"

@interface Tabview ()<UITableViewDelegate,UITableViewDataSource>
@property(strong,nonatomic)UITableView *tableview;
@property(strong,nonatomic)NSArray*tabArray;

@end

@implementation Tabview
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        [self addSubview:self.tableview];
        
        [self.tableview mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.and.left.and.right.and.bottom.mas_equalTo(self);
        
        }];
        
        
    }
    return self;
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 6;
    
}
//每个section头部标题高度（实现这个代理方法后前面 sectionFooterHeight 设定的高度无效）

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 35;
    
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



-(UITableView *)tableview{
    if (!_tableview) {
        _tableview=[[UITableView alloc]init];
        _tableview.delegate=self;
        _tableview.dataSource=self;
        _tableview.scrollEnabled=NO;
        
        
    }
    return _tableview;
    
}
-(NSArray *)tabArray
{
    if (!_tabArray) {
        _tabArray=[NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"MYviewList" ofType:@"plist"]];
        
        
    }
    return _tabArray;
    
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
