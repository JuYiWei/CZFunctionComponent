//
//  CZFunctionComponentConstant.h
//  CZFunctionComponent
//
//  Created by juyiwei on 2019/6/12.
//  Copyright © 2019 居祎炜. All rights reserved.
//

#import <Foundation/Foundation.h>

// 循环引用
#ifndef CZWeakify
#define CZWeakify(o)    autoreleasepool{} __weak typeof(o) o##Weak = o;
#endif

#ifndef CZStrongify
#define CZStrongify(o)  autoreleasepool{} __strong typeof(o) o = o##Weak;
#endif

// 单例头宏(ARC .h)
#ifndef CZ_SINGLETON_HEADER

#define CZ_SINGLETON_HEADER(className)                      \
+ (instancetype)sharedInstance;                             \

#endif

// 单例实现宏(ARC .m)
#ifndef CZ_SINGLETON_IMPLEMENTATION

#define CZ_SINGLETON_IMPLEMENTATION(className)              \
static className *singleton;                               \
+ (instancetype)sharedInstance {                            \
static dispatch_once_t onceToken;                       \
dispatch_once(&onceToken, ^{                            \
singleton = [[className alloc] init];              \
});                                                     \
return singleton;                                       \
}                                                           \

#endif


NS_ASSUME_NONNULL_BEGIN

FOUNDATION_EXTERN NSString *const CZFunctionComponentDomain;

@interface CZFunctionComponentConstant : NSObject

@end

NS_ASSUME_NONNULL_END
