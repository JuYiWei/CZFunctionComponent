//
//  CZTest.m
//  CZTest
//
//  Created by juyiwei on 2019/4/10.
//  Copyright © 2019 居祎炜. All rights reserved.
//

#import "CZTest.h"

@implementation CZTest

#pragma mark - 随机颜色

+ (UIColor *)randomColor {
    CGFloat r = (CGFloat)arc4random()/UINT_MAX;
    CGFloat g = (CGFloat)arc4random()/UINT_MAX;
    CGFloat b = (CGFloat)arc4random()/UINT_MAX;
    
    return [UIColor colorWithRed:r green:g blue:b alpha:1.0f];
}

#pragma mark - 随机 ID

// 随机标准 ID
+ (NSString *)randomIdentifier {
    return [NSUUID UUID].UUIDString;
}

// 随机数字 ID 指定位数
+ (NSString *)randomNumberIdentifierWithLength:(NSInteger)len {
    NSMutableString *muString = [NSMutableString string];
    for (NSInteger a=0; a<len; a++) {
        [muString appendString:[self randomNumberCharacter]];
    }
    
    return muString;
}

// 随机英文数字 ID 指定位数
+ (NSString *)randomEnglishNumberIdentifierWithLength:(NSInteger)len {
    NSMutableString *muString = [NSMutableString string];
    for (NSInteger a=0; a<len; a++) {
        NSInteger ran = arc4random() % 10;
        if (ran >5) {
            [muString appendString:[CZTest randomNumberCharacter]];
        } else {
            [muString appendString:[CZTest randomEnglishCharacter]];
        }
    }
    
    return muString;
}

#pragma mark - 随机数值

// 随机正负
+ (NSInteger)randomUnsigned {
    return (arc4random() % 100 > 50) ? 1 : -1;
}

// 随机整数
+ (NSInteger)randomIntValue:(NSInteger)max {
    return arc4random() % max * [CZTest randomUnsigned];
}

// 随机小数
+ (CGFloat)randomFloatValue:(NSInteger)max {
    return (arc4random() % 100) / 100. * max * [CZTest randomUnsigned];
}

// 随机整数字符串
+ (NSString *)randomIntString:(NSInteger)max {
    return [NSString stringWithFormat:@"%ld", [CZTest randomIntValue:max]];
}

// 随机小数字符串
+ (NSString *)randomFloatString:(NSInteger)max {
    return [NSString stringWithFormat:@"%.3f", [CZTest randomFloatValue:max]];
}


#pragma mark - 随机字符串

// 随机字符串
+ (NSString *)randomString {
    NSInteger len = arc4random() % 30;
    return [CZTest randomStringWithLength:len];
}

// 随机字符串 指定长度
+ (NSString *)randomStringWithLength:(NSInteger)len {
    NSMutableString *muString = [NSMutableString string];
    for (NSInteger a=0; a<len; a++) {
        NSInteger ran = arc4random() % 10;
        if (ran >5) {
            [muString appendString:[CZTest randomLetterCharacter]];
        } else {
            [muString appendString:[CZTest randomChineseCharacter]];
        }
    }
    return muString;
}

// 随机数字字符串
+ (NSString *)randomNumberString {
    NSInteger len = arc4random() % 30;
    return [CZTest randomNumberStringWithLength:len];
}

// 随机数字字符串 指定长度
+ (NSString *)randomNumberStringWithLength:(NSInteger)len {
    NSMutableString *muString = [NSMutableString string];
    for (NSInteger a=0; a<len; a++) {
        [muString appendString:[self randomNumberCharacter]];
    }
    
    return muString;
}

// 随机数字字母符号字符串
+ (NSString *)randomEnglishString {
    NSInteger len = arc4random() % 30;
    return [CZTest randomEnglishStringWithLength:len];
}

// 随机数字字母符号字符串 指定长度
+ (NSString *)randomEnglishStringWithLength:(NSInteger)len {
    NSMutableString *muString = [NSMutableString string];
    for (NSInteger a=0; a<len; a++) {
        [muString appendString:[self randomLetterCharacter]];
    }
    
    return muString;
}

// 随机中文字符串
+ (NSString *)randomChineseString {
    NSInteger len = arc4random() % 30;
    return [CZTest randomChineseStringWithLength:len];
}

// 随机中文字符串 指定长度
+ (NSString *)randomChineseStringWithLength:(NSInteger)len {
    NSMutableString *muString = [NSMutableString string];
    for (NSInteger a=0; a<len; a++) {
        [muString appendString:[CZTest randomChineseCharacter]];
    }
    return muString;
}

#pragma mark - 随机字符

// 随机单个数字
+ (NSString *)randomNumberCharacter {
    NSString *content = @"0123456789";
    NSInteger loc = arc4random() % content.length;
    NSString *string = [content substringWithRange:NSMakeRange(loc, 1)];
    
    return string;
}

// 随机单个字母
+ (NSString *)randomEnglishCharacter {
    NSString *content = @"qwertyuiopasdfghjklzxcvbnm";
    NSInteger loc = arc4random() % content.length;
    NSString *string = [content substringWithRange:NSMakeRange(loc, 1)];
    
    return string;
}

// 随机单个数字字母符号
+ (NSString *)randomLetterCharacter {
    NSString *content = @"0123456789qwertyuiopasdfghjklzxcvbnm[];',./{}:<>?_+-=)(*&^%$#@!";
    NSInteger loc = arc4random() % content.length;
    NSString *string = [content substringWithRange:NSMakeRange(loc, 1)];
    
    return string;
}

// 随机单个中文字
+ (NSString *)randomChineseCharacter {
    NSStringEncoding gbkEncoding = CFStringConvertEncodingToNSStringEncoding(kCFStringEncodingGB_18030_2000);
    NSInteger randomH = 0xA1+arc4random()%(0xFE - 0xA1+1);
    NSInteger randomL = 0xB0+arc4random()%(0xF7 - 0xB0+1);
    NSInteger number = (randomH<<8)+randomL;
    NSData *data = [NSData dataWithBytes:&number length:2];
    NSString *string = [[NSString alloc] initWithData:data encoding:gbkEncoding];
    
    return string;
}


@end
