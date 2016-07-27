//
//  NSString+pyUtil.h
//  Pods
//
//  Created by yunhe.lin on 16/7/26.
//
//

#import <Foundation/Foundation.h>

@interface NSString (PYUtil)

/*!
 *  获取字符串size
 *
 *  @param font
 *
 *  @return
 */
- (CGSize)py_sizeForFont:(UIFont *)font;

/*!
 *  获取指定size小字符串size
 *
 *  @param font
 *  @param size
 *
 *  @return 
 */
- (CGSize)py_sizeForFont:(UIFont *)font contentSize:(CGSize)size;

/*!
 *  获取指定size小字符串size NSLineBreakMode 条件
 *
 *  @param font          font description
 *  @param size          size description
 *  @param lineBreakMode lineBreakMode description
 *
 *  @return
 */
- (CGSize)py_sizeForFont:(UIFont *)font contentSize:(CGSize)size lineBreakMode:(NSLineBreakMode)lineBreakMode;

/*!
 *  是否包含str 这个字符串
 *
 *  @param str
 *
 *  @return
 */
- (BOOL)py_hasContainStr:(NSString *)str;

#pragma mark -  获取AttributedString

/*!
 *  获取富文本
 *
 *  @param lineSpace 行间距
 *
 *  @return
 */
- (NSAttributedString *)py_attributedStringForLineSpace:(CGFloat)lineSpace strFont:(UIFont *)font;
@end
