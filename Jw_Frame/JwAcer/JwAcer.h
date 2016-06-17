//
//  JwAcer.h
//  Jw_Weather
//
//  Created by Jw on 16/3/31.
//  Copyright © 2016年 Jw. All rights reserved.
//

//272636

#define kCityList @"cityList"

#define locationCity @"locationCity"

#define JwBColor JwColorRGB(63, 183, 244)

#define JwBZColor JwColorRGB(16, 34, 65)

//获取当前系统的版本号
#define JwFloatValue [[[UIDevice currentDevice] systemVersion] floatValue]

/**
 *  RGB颜色
 */
#define JwColorRGB(r, g, b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0]
/**
 *  RGBA颜色
 */
#define JwColorRGBA(r,g,b,a)  [UIColor colorWithRed:(r)/255.f green:(g)/255.f blue:(b)/255.f alpha:(a)]

//获取屏幕 宽度、高度
#define JwFrame ([UIScreen mainScreen].applicationFrame)
#define JwWidth ([UIScreen mainScreen].bounds.size.width)
#define JwHeight ([UIScreen mainScreen].bounds.size.height)

//调试状态
#ifdef DEBUG
//打开LOG功能
#define JwLog(...) NSLog(__VA_ARGS__)
#else//发布状态
//关闭LOG功能
#define JwLog(...)
#endif

//具体打印
#ifdef DEBUG
#define JwLogLINE(FORMAT, ...) fprintf(stderr,"%s:%d\t%s\n",[[[NSString stringWithUTF8String:__FILE__] lastPathComponent] UTF8String], __LINE__, [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);
#else
#define JwLogLINE(...)
#endif