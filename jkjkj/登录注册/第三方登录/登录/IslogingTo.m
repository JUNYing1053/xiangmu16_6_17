//
//  IslogingTo.m
//  jkjkj
//
//  Created by ma c on 16/6/22.
//  Copyright © 2016年 SXT. All rights reserved.
//17721025595

#import "IslogingTo.h"
#import "URLHeader.h"
#import "LogingViewController.h"
@implementation IslogingTo

+(void)MemberTologin:(NSString *)Username and:(NSString *)pasd
{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/plain"];
                                                
                                                
NSDictionary* dict=@{@"LoginName":@"17721025595",
                         @"Lpassword":@"123123",
                         @"CouponsId":@""
                         };
    [manager GET:LoginURL parameters:dict progress:^(NSProgress * _Nonnull downloadProgress) {
        NSLog(@"正在请求数据");
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"请求完成：%@",responseObject);
        NSDictionary *dic=responseObject;
        if ([dic[@"ErrorMessage"] isEqualToString:@"登陆成功"]) {
            [[NSUserDefaults standardUserDefaults] setValue:dic forKey:@"IsLogin"];
            
            
            [[[LogingViewController alloc]init].navigationController popViewControllerAnimated:YES];
            [SVProgressHUD showImage:nil status:dic[@"ErrorMessage"]];

        }
        else{
            [SVProgressHUD showImage:nil status:dic[@"ErrorMessage"]];


        }
        
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"-==-=-=-=%@",error.localizedDescription);
        
    }];


}


@end
