//
//  CZTest.h
//  CZTest
//
//  Created by juyiwei on 2019/4/10.
//  Copyright © 2019 居祎炜. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

#define CZTestIntString     [CZTest randomNumberString]
#define CZTestFloatString   [NSString stringWithFormat:@"%.2f", ([[CZTest randomNumberString] floatValue] / 100.)]
#define CZTestString        [CZTest randomChineseString]

@interface CZTest : NSObject

#pragma mark - 颜色

/**
 随机颜色

 @return return value description
 */
+ (UIColor *)randomColor;

#pragma mark - 随机 ID

/**
 随机标准 ID

 @return return value description
 */
+ (NSString *)randomIdentifier;

/**
 随机数字 ID 指定位数

 @param len len description
 @return return value description
 */
+ (NSString *)randomNumberIdentifierWithLength:(NSInteger)len;

/**
 随机英文数字 ID 指定位数

 @param len len description
 @return return value description
 */
+ (NSString *)randomEnglishNumberIdentifierWithLength:(NSInteger)len;

#pragma mark - 随机数值

/**
 随机正负

 @return return value description
 */
+ (NSInteger)randomUnsigned;

/**
 随机整数

 @param max max description
 @return return value description
 */
+ (NSInteger)randomIntValue:(NSInteger)max;

/**
 随机小数

 @param max max description
 @return return value description
 */
+ (CGFloat)randomFloatValue:(NSInteger)max;

/**
 随机整数字符串

 @param max max description
 @return return value description
 */
+ (NSString *)randomIntString:(NSInteger)max;

/**
 随机小数字符串

 @param max max description
 @return return value description
 */
+ (NSString *)randomFloatString:(NSInteger)max;

#pragma mark - 随机字符串

/** 随机字符 */
+ (NSString *)randomString;

/** 随机字符 指定长度 */
+ (NSString *)randomStringWithLength:(NSInteger)len;

/** 随机数字字符串 */
+ (NSString *)randomNumberString;

/** 随机数字字符串 指定长度 */
+ (NSString *)randomNumberStringWithLength:(NSInteger)len;

/** 随机数字字母符号字符串 */
+ (NSString *)randomEnglishString;

/** 随机数字字母符号 指定长度 */
+ (NSString *)randomEnglishStringWithLength:(NSInteger)len;

/** 随机中文字符串 */
+ (NSString *)randomChineseString;

/** 随机中文字符 指定长度 */
+ (NSString *)randomChineseStringWithLength:(NSInteger)len;

#pragma mark - 随机字符

/** 随机数字 */
+ (NSString *)randomNumberCharacter;

/** 随机字母 */
+ (NSString *)randomEnglishCharacter;

/** 随机数字字母符号 */
+ (NSString *)randomLetterCharacter;

/** 随机数字字母符号 */
+ (NSString *)randomChineseCharacter;


@end

NS_ASSUME_NONNULL_END
