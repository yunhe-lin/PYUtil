//
//  UIViewController+PYNavigationItem.m
//  bz17
//
//  Created by yunhe.lin on 16/7/22.
//  Copyright © 2016年 17. All rights reserved.
//

#import "UIViewController+PYNavigationItem.h"
#import <objc/runtime.h>
#import "Masonry.h"

const static NSString *kFont = @"navigationItemLabelFont";
const static NSString *kTitleColor = @"titleColor";

@implementation UIViewController (PYNavigationItem)

- (UIView *)navigationItemCustomView:(UIImage *)image title:(NSString *)title observer:(id)os action:(SEL)sel
{
    UIView *v = [UIView new];
    UIButton *btn = [self navigationItemImageButton:image];
    [v addSubview:btn];
    [btn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.centerY.equalTo(v);
    }];
    UILabel *lbl = [self titleLabel:title];
    [v addSubview:lbl];
    [lbl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(btn);
        make.left.equalTo(btn.mas_right).offset(5);
    }];
    v.userInteractionEnabled = YES;
    [v addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:os action:sel]];
    return v;
}

- (UIButton *)navigationItemImageButton:(UIImage *)image
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.contentMode = UIViewContentModeCenter;
    [btn setImage:image forState:UIControlStateNormal];
    return btn;
}

- (UILabel *)titleLabel:(NSString *)title
{
    UILabel *label = [UILabel new];
    label.text = title;
    label.font = [self navigationItemTitleFont] ? [self navigationItemTitleFont] : [UIFont systemFontOfSize:15.f];
    label.textColor = [self navigationItemTitleColor] ? [self navigationItemTitleColor] : [UIColor blackColor];
    return label;
}

- (UIFont *)navigationItemTitleFont
{
    return objc_getAssociatedObject(self, (__bridge const void *)(kFont));
}

- (UIColor *)navigationItemTitleColor
{
    return objc_getAssociatedObject(self, (__bridge const void *)(kTitleColor));
}

#pragma mark - public method

- (void)PY_addTitle:(NSString *)title
{
    UIView *v = [UIView new];
    UILabel *lbl = [self titleLabel:title];
    [v addSubview:lbl];
    [lbl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(v);
    }];
    self.navigationItem.titleView = v;
}

- (void)PY_addLeftNavigationItem:(UIImage *)iconImage title:(NSString *)title observer:(id)os action:(SEL)sel
{
    self.navigationItem.leftBarButtonItems = nil;
    self.navigationItem.leftBarButtonItem = nil;
    UIView *customV = [self navigationItemCustomView:iconImage title:title observer:os action:sel];
    if(([[[UIDevice currentDevice] systemVersion] floatValue]>=7.0?20:0)) {
        UIBarButtonItem *negativeSpacer = [[UIBarButtonItem alloc]
                                           initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace
                                           target:nil action:nil];
        negativeSpacer.width = -5;
        self.navigationItem.leftBarButtonItems = @[negativeSpacer, [[UIBarButtonItem alloc] initWithCustomView:customV]];
    } else {
        self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:customV];
    }
}

- (void)PY_setNavigationItemTitleFont:(UIFont *)font
{
    objc_setAssociatedObject(self, (__bridge const void *)(kFont), font, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (void)PY_setNavigationItemTitleColor:(UIColor *)color
{
    objc_setAssociatedObject(self, (__bridge const void *)(kTitleColor), color, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end
