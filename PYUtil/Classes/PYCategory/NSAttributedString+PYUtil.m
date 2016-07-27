//
//  NSAttributedString+PYUtil.m
//  Pods
//
//  Created by yunhe.lin on 16/7/26.
//
//

#import "NSAttributedString+PYUtil.h"

@implementation NSAttributedString (PYUtil)

- (CGSize)py_attributedStringRectForContentSize:(CGSize)contentSize
{
    NSStringDrawingOptions options =  NSStringDrawingUsesLineFragmentOrigin |NSStringDrawingUsesFontLeading;
    return [self boundingRectWithSize:contentSize
                              options:options
                              context:nil].size;
}

+ (NSAttributedString *)py_attributedStringForSpace:(NSInteger)length
{
    NSMutableString *mutableString = [[NSMutableString alloc] initWithCapacity:length];
    for (NSInteger idx = 0; idx < length; idx++) {
        [mutableString appendString:@" "];
    }
    
    return  [[NSAttributedString alloc] initWithString:mutableString
                                            attributes:@{NSFontAttributeName: [UIFont fontWithName:@"Helvetica" size:3.6]}];
}

@end
