//
//  UINavigationBar+PYUtil.h
//  Pods
//
//  Created by yunhe.lin on 16/7/27.
//
//

#import <UIKit/UIKit.h>

@interface UINavigationBar (PYUtil)

/*!
 *  设置navigationBar 背景色
 *
 *  @param backgroundColor
 */
- (void)py_setBackgroundColor:(UIColor *)backgroundColor;

/*!
 *  设置UINavigationBar上元素透明度
 *
 *  @param alpha 
 */
- (void)py_setElementAlpha:(CGFloat)alpha;

/*!
 *  设置UINavigationBar 高度
 *
 *  @param translationY
 */
- (void)py_setTranslationY:(CGFloat)translationY;

/*!
 *  重置UINavigationBar
 */
- (void)py_reset;

@end
