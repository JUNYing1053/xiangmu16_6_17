//
//  Tabvieww.h
//  jkjkj
//
//  Created by ma c on 16/6/23.
//  Copyright © 2016年 SXT. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TableVIewTop.h"
#import "TableViewCell.h"

@interface Tabvieww : UITableView<UITableViewDelegate,UITableViewDataSource>
@property(strong,nonatomic)UIButton *nextbtn;
@property(strong,nonatomic) TableVIewTop *tabtop;
@property(strong,nonatomic)NSArray*tabArray;
//@property(strong,nonatomic)UIView*tabHeaderView ;

@end
