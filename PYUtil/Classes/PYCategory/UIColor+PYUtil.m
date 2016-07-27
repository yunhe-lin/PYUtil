//
//  UIColor+PYUtil.m
//  Pods
//
//  Created by yunhe.lin on 16/7/27.
//
//

#import "UIColor+PYUtil.h"

@implementation UIColor (PYUtil)

+ (UIColor *)py_colorWithHex:(NSInteger)hex
{
    return [self py_colorWithHex:hex colorAlpha:1.f];
}

+ (UIColor *)py_colorWithHex:(NSInteger)hex colorAlpha:(CGFloat)alpha
{
    return [UIColor colorWithRed:((float)((hex & 0xFF0000) >> 16))/255.0
                           green:((float)((hex & 0xFF00) >> 8))/255.0
                            blue:((float)(hex & 0xFF))/255.0 alpha:alpha];
}

@end
