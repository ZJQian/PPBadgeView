//
//  UIBarButtonItem+PPBadgeView.m
//  PPBadgeViewObjc
//
//  Created by AndyPang on 2017/6/17.
//  Copyright © 2017年 AndyPang. All rights reserved.
//

#import "UIBarButtonItem+PPBadgeView.h"
#import "UIView+PPBadgeView.h"

@implementation UIBarButtonItem (PPBadgeView)

- (void)pp_addBadgeWithText:(NSString *)text
{
    [[self bottomView] pp_addBadgeWithText:text];
}

- (void)pp_addBadgeWithNumber:(NSInteger)number
{
    [[self bottomView] pp_addBadgeWithNumber:number];
}

- (void)pp_addDotWithColor:(UIColor *)color
{
    [[self bottomView] pp_addDotWithColor:color];
}

- (void)pp_setBadgeHeightPoints:(CGFloat)points
{
    [[self bottomView] pp_setBadgeHeightPoints:points];
}

- (void)pp_moveBadgeWithX:(CGFloat)x Y:(CGFloat)y
{
    [[self bottomView] pp_moveBadgeWithX:x Y:y];
}

- (void)pp_setBadgeLabelAttributes:(void(^)(PPBadgeLabel *badgeLabel))attributes
{
    [[self bottomView] pp_setBadgeLabelAttributes:attributes];
}

- (void)pp_showBadge
{
    [[self bottomView] pp_showBadge];
}

- (void)pp_hiddenBadge
{
    [[self bottomView] pp_hiddenBadge];
}

- (void)pp_increase
{
    [[self bottomView] pp_increase];
}

- (void)pp_increaseBy:(NSInteger)number
{
    [[self bottomView] pp_increaseBy:number];
}

- (void)pp_decrease
{
    [[self bottomView] pp_decrease];
}

- (void)pp_decreaseBy:(NSInteger)number
{
    [[self bottomView] pp_decreaseBy:number];
}

#pragma mark - 获取Badge的父视图
- (UIView *)bottomView
{
    return [self valueForKey:@"_view"];
}

@end