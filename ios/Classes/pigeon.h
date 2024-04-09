// Autogenerated from Pigeon (v10.1.6), do not edit directly.
// See also: https://pub.dev/packages/pigeon

#import <Foundation/Foundation.h>

@protocol FlutterBinaryMessenger;
@protocol FlutterMessageCodec;
@class FlutterError;
@class FlutterStandardTypedData;

NS_ASSUME_NONNULL_BEGIN

/// Higher priority drains battery but receives more data
typedef NS_ENUM(NSUInteger, DTGScanPriority) {
  DTGScanPriorityHigh = 0,
  DTGScanPriorityLow = 1,
};

/// ODID Message Source
typedef NS_ENUM(NSUInteger, DTGMessageSource) {
  DTGMessageSourceBluetoothLegacy = 0,
  DTGMessageSourceBluetoothLongRange = 1,
  DTGMessageSourceWifiNan = 2,
  DTGMessageSourceWifiBeacon = 3,
  DTGMessageSourceUnknown = 4,
};

/// State of the Bluetooth adapter
typedef NS_ENUM(NSUInteger, DTGBluetoothState) {
  DTGBluetoothStateUnknown = 0,
  DTGBluetoothStateResetting = 1,
  DTGBluetoothStateUnsupported = 2,
  DTGBluetoothStateUnauthorized = 3,
  DTGBluetoothStatePoweredOff = 4,
  DTGBluetoothStatePoweredOn = 5,
};

/// State of the Wifi adapter
typedef NS_ENUM(NSUInteger, DTGWifiState) {
  DTGWifiStateDisabling = 0,
  DTGWifiStateDisabled = 1,
  DTGWifiStateEnabling = 2,
  DTGWifiStateEnabled = 3,
};

@class DTGODIDPayload;

/// Payload send from native to dart contains raw data and metadata
@interface DTGODIDPayload : NSObject
/// `init` unavailable to enforce nonnull fields, see the `make` class method.
- (NSArray *)toList;
- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)makeWithRawData:(FlutterStandardTypedData *)rawData
    receivedTimestamp:(NSNumber *)receivedTimestamp
    macAddress:(NSString *)macAddress
    rssi:(nullable NSNumber *)rssi
    source:(DTGMessageSource)source;
@property(nonatomic, strong) FlutterStandardTypedData * rawData;
@property(nonatomic, strong) NSNumber * receivedTimestamp;
@property(nonatomic, copy) NSString * macAddress;
@property(nonatomic, strong, nullable) NSNumber * rssi;
@property(nonatomic, assign) DTGMessageSource source;
@end

/// The codec used by DTGApi.
NSObject<FlutterMessageCodec> *DTGApiGetCodec(void);

@protocol DTGApi
- (void)startScanBluetoothWithCompletion:(void (^)(FlutterError *_Nullable))completion;
- (void)startScanWifiWithCompletion:(void (^)(FlutterError *_Nullable))completion;
- (void)stopScanBluetoothWithCompletion:(void (^)(FlutterError *_Nullable))completion;
- (void)stopScanWifiWithCompletion:(void (^)(FlutterError *_Nullable))completion;
- (void)setBtScanPriorityPriority:(DTGScanPriority)priority completion:(void (^)(FlutterError *_Nullable))completion;
- (void)isScanningBluetoothWithCompletion:(void (^)(NSNumber *_Nullable, FlutterError *_Nullable))completion;
- (void)isScanningWifiWithCompletion:(void (^)(NSNumber *_Nullable, FlutterError *_Nullable))completion;
- (void)bluetoothStateWithCompletion:(void (^)(NSNumber *_Nullable, FlutterError *_Nullable))completion;
- (void)wifiStateWithCompletion:(void (^)(NSNumber *_Nullable, FlutterError *_Nullable))completion;
- (void)btExtendedSupportedWithCompletion:(void (^)(NSNumber *_Nullable, FlutterError *_Nullable))completion;
- (void)btMaxAdvDataLenWithCompletion:(void (^)(NSNumber *_Nullable, FlutterError *_Nullable))completion;
- (void)wifiNaNSupportedWithCompletion:(void (^)(NSNumber *_Nullable, FlutterError *_Nullable))completion;
@end

extern void DTGApiSetup(id<FlutterBinaryMessenger> binaryMessenger, NSObject<DTGApi> *_Nullable api);

/// The codec used by DTGPayloadApi.
NSObject<FlutterMessageCodec> *DTGPayloadApiGetCodec(void);

@protocol DTGPayloadApi
/// @return `nil` only when `error != nil`.
- (nullable DTGODIDPayload *)buildPayloadRawData:(FlutterStandardTypedData *)rawData source:(DTGMessageSource)source macAddress:(NSString *)macAddress rssi:(NSNumber *)rssi receivedTimestamp:(NSNumber *)receivedTimestamp error:(FlutterError *_Nullable *_Nonnull)error;
@end

extern void DTGPayloadApiSetup(id<FlutterBinaryMessenger> binaryMessenger, NSObject<DTGPayloadApi> *_Nullable api);

NS_ASSUME_NONNULL_END