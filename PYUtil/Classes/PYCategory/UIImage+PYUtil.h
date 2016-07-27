//
//  UIImage+pyUtil.h
//  Pods
//
//  Created by yunhe.lin on 16/7/27.
//
//

#import <UIKit/UIKit.h>

@interface UIImage (PYUtil)

/*!
 *  获取image
 *
 *  @param color 颜色
 *
 *  @return image
 */
+ (UIImage *)py_imageWithColor:(UIColor *)color;

/*!
 *  图片添加模糊效果
 *
 *  @param blur blur description
 */
- (UIImage *)py_addBlurryWithBlurLevel:(CGFloat)blur;

/*!
 *  裁剪图片
 *
 *  @param targetSize 目标大小
 *
 *  @return 裁剪后的image
 */
- (UIImage *)py_imageByScalingAndCroppingForSize:(CGSize)targetSize;

/*!
 *  压缩到指定大小
 *
 *  @param size
 *
 *  @return
 */
- (UIImage *)py_scaleToSize:(CGSize)size;

@end
