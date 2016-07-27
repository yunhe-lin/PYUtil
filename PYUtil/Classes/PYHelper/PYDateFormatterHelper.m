//
//  PYDateFormatterHelper.m
//  Pods
//
//  Created by yunhe.lin on 16/7/26.
//
//

#import "PYDateFormatterHelper.h"

static NSString        *pyDateFormaterStr = @"yyyy-dd-mm";
static NSDateFormatter *pyDateFormatter = nil;

@implementation PYDateFormatterHelper

+ (instancetype)PY_dateFormatterHelper
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        pyDateFormatter = [[NSDateFormatter alloc] init];
        [self PY_setDateFormat:pyDateFormatter];
    });
    return pyDateFormatter;
}

+ (void)PY_setDateFormat:(NSString *)dateFormat
{
    [pyDateFormatter setDateFormat:dateFormat];
}

@end
