//
//  NSArray+Check.h
//  hshk
//
//  Created by LiGongJiao on 17/8/23.
//  Copyright © 2017年 DuanJI (WuHan) Network CO., LTD. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (Check)
/*!
 @method objectAtIndexCheck:
 @abstract 检查是否越界和NSNull如果是返回nil
 @result 返回对象
 */
- (id)objectAtIndexCheck:(NSUInteger)index;
@end
