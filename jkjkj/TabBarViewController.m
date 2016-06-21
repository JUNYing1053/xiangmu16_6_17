//
//  TabBarViewController.m
//  jkjkj
//
//  Created by ma c on 16/6/16.
//  Copyright © 2016年 SXT. All rights reserved.
//

#import "TabBarViewController.h"
#import "NaviViewController.h"
@interface TabBarViewController ()
@property(strong,nonatomic)NSArray* TabBarVCArray;

@end

@implementation TabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    NSLog(@"%@",self.TabBarVCArray);
    
    [self.tabBar setBackgroundImage:[UIImage imageNamed:@"tabbar_back"]];
    

    NSMutableArray *countArray=[NSMutableArray arrayWithCapacity:self.TabBarVCArray.count];
    
    [self.TabBarVCArray enumerateObjectsUsingBlock:^(NSDictionary *dic, NSUInteger idx, BOOL * _Nonnull stop) {
        Class viewcontrollerclass=NSClassFromString(dic[@"ViewController"]);
        
        UIViewController *viewcontroller=[[viewcontrollerclass alloc]init];
        viewcontroller.title=dic[@"name"];
        viewcontroller.tabBarItem.selectedImage=[[UIImage imageNamed:dic[@"imaged"]]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        
        viewcontroller.tabBarItem.image=[[UIImage imageNamed: dic[@"image"]]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        
        NaviViewController*naviVC=[[NaviViewController alloc]initWithRootViewController:viewcontroller];
    
        
        [countArray addObject:naviVC];
        
        
    }];
    
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSFontAttributeName : [UIFont systemFontOfSize:10.0f],
                                                        NSForegroundColorAttributeName :
                                                        [UIColor grayColor]} forState:UIControlStateNormal];
    
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSFontAttributeName : [UIFont systemFontOfSize:10.0f],NSForegroundColorAttributeName :RGB(65, 179, 241)} forState:(UIControlStateSelected)];
    
    
    
    
    self.viewControllers=countArray;
    
    self.selectedIndex=0;//默认选中
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSArray *)TabBarVCArray
{
    if (!_TabBarVCArray) {
        _TabBarVCArray=[NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"TabBar" ofType:@"plist"]];
        

    }
    return _TabBarVCArray;
    

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
