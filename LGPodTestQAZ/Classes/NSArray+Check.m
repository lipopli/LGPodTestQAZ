//
//  NSArray+Check.m
//  hshk
//
//  Created by LiGongJiao on 17/8/23.
//  Copyright © 2017年 DuanJI (WuHan) Network CO., LTD. All rights reserved.
//

#import "NSArray+Check.h"

@implementation NSArray (Check)
- (id)objectAtIndexCheck:(NSUInteger)index
{
    if (index >= [self count]) {
        return nil;
    }
    
    id value = [self objectAtIndex:index];
    if (value == [NSNull null]) {
        return nil;
    }
    return value;
}


@end
