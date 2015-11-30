//
//  DeviceDataConstant.h
//  RESideMenuStoryboardsExample
//
//  Created by 李静 on 14-11-3.
//  Copyright (c) 2014年 Roman Efimov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DeviceDataConstant : NSObject
FOUNDATION_EXPORT const int CO2_THRESHOLD;
FOUNDATION_EXPORT const int TEMPERATURE_THRESHOLD;
FOUNDATION_EXPORT const int HUMIDITY_THRESHOLD;
FOUNDATION_EXPORT const int PM25_THRESHOLD;
FOUNDATION_EXPORT const int PM25_VERY_GOOD;
FOUNDATION_EXPORT const int PM25_GOOD;
FOUNDATION_EXPORT const int PM25_WEAK;
FOUNDATION_EXPORT const int PM25_BAD;
FOUNDATION_EXPORT const int PM25_VERY_BAD;
FOUNDATION_EXPORT const int PM25_HIGH_THRESHOLD;

FOUNDATION_EXPORT const int VOC_NORMAL;
FOUNDATION_EXPORT const int VOC_MIDDLE;
FOUNDATION_EXPORT const int VOC_HIGH;

FOUNDATION_EXPORT const int CH4_THRESHOLD;
FOUNDATION_EXPORT const int CO_THRESHOLD;
//表达语句
FOUNDATION_EXPORT NSString *const EXPRESS_NO_DATA;
FOUNDATION_EXPORT NSString *const EXPRESS_CH4_DANGEROUS;
FOUNDATION_EXPORT NSString *const EXPRESS_CH4_NORMAL;
FOUNDATION_EXPORT NSString *const EXPRESS_CO_DANGEROUS;
FOUNDATION_EXPORT NSString *const EXPRESS_CO_NORMAL;
FOUNDATION_EXPORT NSString *const EXPRESS_TEMPERATURE_NORMAL;
FOUNDATION_EXPORT NSString *const EXPRESS_TEMPERATURE_COLD;
FOUNDATION_EXPORT NSString *const EXPRESS_TEMPERATURE_HOT;
FOUNDATION_EXPORT NSString *const EXPRESS_HUMIDITY_NORMAL;
FOUNDATION_EXPORT NSString *const EXPRESS_HUMIDITY_OVER;
FOUNDATION_EXPORT NSString *const EXPRESS_HUMIDITY_LESS;
FOUNDATION_EXPORT NSString *const EXPRESS_CO2_NORMAL;
FOUNDATION_EXPORT NSString *const EXPRESS_CO2_OVER;
FOUNDATION_EXPORT NSString *const EXPRESS_CO2_OVER_MORE;
FOUNDATION_EXPORT NSString *const EXPRESS_PM25_NORMAL;
FOUNDATION_EXPORT NSString *const EXPRESS_PM25_OVER;
FOUNDATION_EXPORT NSString *const EXPRESS_PM25_OVER_MORE;

FOUNDATION_EXPORT NSString *const EXPRESS_OUTLINE;
FOUNDATION_EXPORT NSString *const EXPRESS_VOC_NORMAL;
FOUNDATION_EXPORT NSString *const EXPRESS_VOC_MIDDLE;
FOUNDATION_EXPORT NSString *const EXPRESS_VOC_HIGH;
FOUNDATION_EXPORT NSString *const SENSOR_HARDWARE_GAS_HINT;
FOUNDATION_EXPORT NSString *const SENSOR_HARDWARE_AIR_HINT;
FOUNDATION_EXPORT NSString *const SENSOR_WIFI_GAS_HINT;
FOUNDATION_EXPORT NSString *const SENSOR_WIFI_AIR_HINT;
FOUNDATION_EXPORT NSString *const SENSOR_WIFI_GUIDE;
FOUNDATION_EXPORT NSString *const SENSOR_WIFI_AIR_HINT;
FOUNDATION_EXPORT NSString *const SENSOR_WIFI_AIR_HINT;
FOUNDATION_EXPORT NSString *const SENSOR_HARDWARE_POWER_GAS_HINT;
FOUNDATION_EXPORT NSString *const SENSOR_HARDWARE_POWER_AIR_HINT;
FOUNDATION_EXPORT NSString *const SENSOR_WIFI_GAS_SUCCESS_HINT;
@end