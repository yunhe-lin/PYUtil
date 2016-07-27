//
//  NSAttributedString+PYUtil.h
//  Pods
//
//  Created by yunhe.lin on 16/7/26.
//
//

#import <Foundation/Foundation.h>

@interface NSAttributedString (PYUtil)

/*!
 *  获取富文本的size
 *
 *  @param contentSize z
 *
 *  @return
 */
- (CGSize)py_attributedStringRectForContentSize:(CGSize)contentSize;

/*!
 *  获取空string 指定长度
 *
 *  @param poinSize
 *
 *  @return
 */
+ (NSAttributedString *)py_attributedStringForSpace:(NSInteger)length;

@end
