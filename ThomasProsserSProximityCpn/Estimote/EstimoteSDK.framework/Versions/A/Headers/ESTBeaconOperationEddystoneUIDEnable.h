//
//   ______     _   _                 _          _____ _____  _  __
//  |  ____|   | | (_)               | |        / ____|  __ \| |/ /
//  | |__   ___| |_ _ _ __ ___   ___ | |_ ___  | (___ | |  | | ' /
//  |  __| / __| __| | '_ ` _ \ / _ \| __/ _ \  \___ \| |  | |  <
//  | |____\__ \ |_| | | | | | | (_) | ||  __/  ____) | |__| | . \
//  |______|___/\__|_|_| |_| |_|\___/ \__\___| |_____/|_____/|_|\_\
//
//
//  Copyright © 2015 Estimote. All rights reserved.

#import <Foundation/Foundation.h>
#import "ESTBeaconOperationProtocol.h"
#import "ESTSettingOperation.h"
#import "ESTSettingEddystoneUIDEnable.h"

NS_ASSUME_NONNULL_BEGIN


/**
 *  ESTBeaconOperationEddystoneUIDEnable allows to create read/write operations for Eddystone UID Enable setting of a device.
 */
@interface ESTBeaconOperationEddystoneUIDEnable : ESTSettingOperation <ESTBeaconOperationProtocol>

/**
 *  Method allows to create read operation for Eddystone UID Enable setting.
 *
 *  @param completion Block invoked when the operation is complete.
 *
 *  @return Initialized object.
 */
+ (instancetype)readOperationWithCompletion:(ESTSettingEddystoneUIDEnableCompletionBlock)completion;

/**
 *  Method allows to create write operation for Eddystone UID Enable setting.
 *
 *  @param setting      Value to be written to a device.
 *  @param completion Block invoked when the operation is complete.
 *
 *  @return Initialized object.
 */
+ (instancetype)writeOperationWithSetting:(ESTSettingEddystoneUIDEnable *)setting completion:(ESTSettingEddystoneUIDEnableCompletionBlock)completion;

@end

NS_ASSUME_NONNULL_END
