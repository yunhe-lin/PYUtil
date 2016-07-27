//
//  UIColor+PYUtil.h
//  Pods
//
//  Created by yunhe.lin on 16/7/27.
//
//

#import <UIKit/UIKit.h>

@interface UIColor (PYUtil)

/*!
 *  获取颜色 --
 *
 *  @param hex
 *
 *  @return
 */
+ (UIColor *)py_colorWithHex:(NSInteger)hex;

/*!
 *  包含透明度
 *
 *  @param hex
 *  @param alpha
 *
 *  @return
 */
+ (UIColor *)py_colorWithHex:(NSInteger)hex colorAlpha:(CGFloat)alpha;

@end
