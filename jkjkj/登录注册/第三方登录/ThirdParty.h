//
//  ThirdParty.h
//  jkjkj
//
//  Created by ma c on 16/6/22.
//  Copyright © 2016年 SXT. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UMSocial.h"

typedef void(^loginSuccess)(NSDictionary *returnDict);
//typedef void(^<#name#>)(arguments);

@interface ThirdParty : NSObject

+(void)QQlongingTO:(UIViewController *)VC witch:(loginSuccess)QQloginsueess;
+(void)weixinlongingTO:(UIViewController *)VC witch:(loginSuccess)weixinsueess;
+(void)weiblongingTO:(UIViewController *)VC witch:(loginSuccess)weiBsueess;


@end
