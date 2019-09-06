//
//  CZFunctionMacro.h
//  CZFunctionComponent
//
//  Created by juyiwei on 2019/9/6.
//  Copyright © 2019 居祎炜. All rights reserved.
//

#ifndef CZFunctionMacro_h
#define CZFunctionMacro_h

// tag 基础值偏移
#define CZ_TAG_CONTROLLER_BASE    100000
#define CZ_TAG_VIEW_BASE          200000
#define CZ_TAG_OTHER_BASE         300000

// Log
#ifdef DEBUG
#define DLog(format, ...) printf("> class: <%p %s:(%d) > \n  method: %s \n%s\n\n_", self, [[[NSString stringWithUTF8String:__FILE__] lastPathComponent] UTF8String], __LINE__, __PRETTY_FUNCTION__, [[NSString stringWithFormat:(format), ##__VA_ARGS__] UTF8String] )
#else
#define DLog(...)
#endif

// 循环引用
#ifndef CZ_WEAKIFY
#define CZ_WEAKIFY(o)    autoreleasepool{} __weak typeof(o) o##Weak = o;
#endif

#ifndef CZ_STRONGIFY
#define CZ_STRONGIFY(o)  autoreleasepool{} __strong typeof(o) o = o##Weak;
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



#endif /* CZFunctionMacro_h */
