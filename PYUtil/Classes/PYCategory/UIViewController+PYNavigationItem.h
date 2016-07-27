//
//  UIViewController+pyNavigationItem.h
//  bz17
//
//  Created by yunhe.lin on 16/7/22.
//  Copyright © 2016年 17. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (PYNavigationItem)

/*!
 *  设置导航栏标题
 *
 *  @param title
 */
- (void)py_addTitle:(NSString *)title;

/*!
 *  添加左侧按钮
 *
 *  @param iconImage
 *  @param title
 *  @param os
 *  @param sel
 */
- (void)py_addLeftNavigationItem:(UIImage *)iconImage title:(NSString *)title observer:(id)os action:(SEL)sel;

/*!
 *  设置按钮的字体颜色
 *
 *  @param color 字体颜色
 */
- (void)py_setNavigationItemTitleColor:(UIColor *)color;

/*!
 *  设置按钮字体的font
 *
 *  @param font
 */
- (void)py_setNavigationItemTitleFont:(UIFont *)font;

@end
