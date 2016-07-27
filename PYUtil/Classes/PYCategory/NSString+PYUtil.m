//
//  NSString+pyUtil.m
//  Pods
//
//  Created by yunhe.lin on 16/7/26.
//
//

#import "NSString+pyUtil.h"

@implementation NSString (PYUtil)

- (CGSize)py_sizeForFont:(UIFont *)font contentSize:(CGSize)size
{
    CGSize titleSize = [self boundingRectWithSize:size
                                          options:NSStringDrawingUsesLineFragmentOrigin
                                       attributes:@{NSFontAttributeName:font}
                                          context:nil].size;
    return titleSize;
}
- (CGSize)py_sizeForFont:(UIFont *)font
{
    return [self sizeWithFont:font];
}

- (CGSize)py_sizeForFont:(UIFont *)font contentSize:(CGSize)size lineBreakMode:(NSLineBreakMode)lineBreakMode
{
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    paragraphStyle.lineBreakMode = lineBreakMode;
    NSDictionary *attributes = @{NSFontAttributeName: font,
                                 NSParagraphStyleAttributeName:paragraphStyle.copy
                                 };
    return [self boundingRectWithSize:size
                              options:NSStringDrawingUsesLineFragmentOrigin
                           attributes:attributes
                              context:nil].size;
}

- (BOOL)py_hasContainStr:(NSString *)str
{
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 8.0) {
        return [self containsString:str];
    }
    return [self componentsSeparatedByString:str].count > 0;
}

- (NSAttributedString *)py_attributedStringForLineSpace:(CGFloat)lineSpace strFont:(UIFont *)font
{
    NSMutableParagraphStyle *pragraphStyle = [[NSMutableParagraphStyle alloc] init];
    pragraphStyle.lineSpacing = lineSpace;
    NSDictionary *atsDict = @{
                              NSFontAttributeName : font,
                              NSParagraphStyleAttributeName : pragraphStyle,
                              };
    return [[NSAttributedString alloc] initWithString:self attributes:atsDict];
}

@end
