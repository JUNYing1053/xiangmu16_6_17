//
//  TableViewCell.m
//  tabviewcell
//
//  Created by ma c on 16/6/21.
//  Copyright © 2016年 SXT. All rights reserved.
//

#import "TableViewCell.h"
#import "Masonry.h"
@implementation TableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if ([super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self addSubview: self.leftimageview];
        [self addSubview:self.txtlab];
        [self addSubview: self.rightBtn];
        __weak typeof(self)ws=self;
        
        [self.leftimageview mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(ws.mas_top).offset(12);
            make.left.mas_equalTo(ws.mas_left).offset(15);
            make.bottom.mas_equalTo(ws.mas_bottom).offset(-15);
            make.width.mas_equalTo(20);
            
            
        }];
        [self.txtlab mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.mas_equalTo(ws.mas_centerY);
            make.left.mas_equalTo(ws.leftimageview.mas_right).offset(15);
            make.width.mas_equalTo(300);
            
        }];
        [self.rightBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(ws.mas_top).offset(12);
            make.right.mas_equalTo(ws.mas_right).offset(-15);
            make.bottom.mas_equalTo(ws.mas_bottom).offset(-15);
            make.width.mas_equalTo(150);
            
        }];
        
        
        
        
    }
    return self;

}
-(UIImageView *)leftimageview
{
    if (!_leftimageview) {
        _leftimageview =[[UIImageView alloc]init];
    }
    return _leftimageview;
    

}
-(UILabel *)txtlab
{
    if (!_txtlab) {
        _txtlab=[[UILabel alloc]init];
        _txtlab.textColor=[UIColor blackColor];
        
        
    }
    return _txtlab;
    
}

-(UIButton *)rightBtn
{
    if (!_rightBtn) {
        _rightBtn=[[UIButton alloc]init];
        [_rightBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        _rightBtn.contentHorizontalAlignment=UIControlContentHorizontalAlignmentRight;
        [_rightBtn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    }
    return _rightBtn;
    
}




- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
