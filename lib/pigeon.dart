// Autogenerated from Pigeon (v10.0.0), do not edit directly.
// See also: https://pub.dev/packages/pigeon
// ignore_for_file: public_member_api_docs, non_constant_identifier_names, avoid_as, unused_import, unnecessary_parenthesis, prefer_null_aware_operators, omit_local_variable_types, unused_shown_name, unnecessary_import

import 'dart:async';
import 'dart:typed_data' show Float64List, Int32List, Int64List, Uint8List;

import 'package:flutter/foundation.dart' show ReadBuffer, WriteBuffer;
import 'package:flutter/services.dart';

/// ODID Message Type
enum MessageType {
  BasicId,
  Location,
  Auth,
  SelfId,
  System,
  OperatorId,
  MessagePack,
}

enum ScanPriority {
  High,
  Low,
}

/// ODID Message Source
enum MessageSource {
  BluetoothLegacy,
  BluetoothLongRange,
  WifiNan,
  WifiBeacon,
  Unknown,
}

/// Identification type
enum IdType {
  None,
  Serial_Number,
  CAA_Registration_ID,
  UTM_Assigned_ID,
  Specific_Session_ID,
}

/// Unmanned aircraft type
enum UaType {
  None,
  Aeroplane,
  Helicopter_or_Multirotor,
  Gyroplane,
  Hybrid_Lift,
  Ornithopter,
  Glider,
  Kite,
  Free_balloon,
  Captive_balloon,
  Airship,
  Free_fall_parachute,
  Rocket,
  Tethered_powered_aircraft,
  Ground_obstacle,
  Other,
}

/// Aircraft flight status
enum AircraftStatus {
  Undeclared,
  Ground,
  Airborne,
  Emergency,
  Remote_ID_System_Failure,
}

/// Height value type
enum HeightType {
  Takeoff,
  Ground,
}

/// Horizontal accuracy
enum HorizontalAccuracy {
  Unknown,
  kilometers_18_52,
  kilometers_7_408,
  kilometers_3_704,
  kilometers_1_852,
  meters_926,
  meters_555_6,
  meters_185_2,
  meters_92_6,
  meters_30,
  meters_10,
  meters_3,
  meters_1,
}

/// Vertical accuracy
enum VerticalAccuracy {
  Unknown,
  meters_150,
  meters_45,
  meters_25,
  meters_10,
  meters_3,
  meters_1,
}

/// Speed accuracy
enum SpeedAccuracy {
  Unknown,
  meter_per_second_10,
  meter_per_second_3,
  meter_per_second_1,
  meter_per_second_0_3,
}

/// State of the Bluetooth adapter
enum BluetoothState {
  Unknown,
  Resetting,
  Unsupported,
  Unauthorized,
  PoweredOff,
  PoweredOn,
}

/// State of the Wifi adapter
enum WifiState {
  Disabling,
  Disabled,
  Enabling,
  Enabled,
}

enum AuthType {
  None,
  UAS_ID_Signature,
  Operator_ID_Signature,
  Message_Set_Signature,
  Network_Remote_ID,
  Specific_Authentication,
  Private_Use_0xA,
  Private_Use_0xB,
  Private_Use_0xC,
  Private_Use_0xD,
  Private_Use_0xE,
  Private_Use_0xF,
}

enum AircraftCategory {
  Undeclared,
  EU_Open,
  EU_Specific,
  EU_Certified,
}

enum AircraftClass {
  Undeclared,
  EU_Class_0,
  EU_Class_1,
  EU_Class_2,
  EU_Class_3,
  EU_Class_4,
  EU_Class_5,
  EU_Class_6,
}

enum OperatorLocationType {
  TakeOff,
  LiveGNSS,
  FixedLocation,
  Invalid,
}

enum ClassificationType {
  Undeclared,
  EU,
}

class BasicIdMessage {
  BasicIdMessage({
    required this.receivedTimestamp,
    required this.macAddress,
    this.source,
    this.rssi,
    required this.uasId,
    this.idType,
    this.uaType,
  });

  int receivedTimestamp;

  String macAddress;

  MessageSource? source;

  int? rssi;

  /// The primary identifier of UAS
  /// (Dronetag devices use their serial number as their UAS ID)
  String uasId;

  /// Identification type
  IdType? idType;

  /// Type of the aircraft
  UaType? uaType;

  Object encode() {
    return <Object?>[
      receivedTimestamp,
      macAddress,
      source?.index,
      rssi,
      uasId,
      idType?.index,
      uaType?.index,
    ];
  }

  static BasicIdMessage decode(Object result) {
    result as List<Object?>;
    return BasicIdMessage(
      receivedTimestamp: result[0]! as int,
      macAddress: result[1]! as String,
      source: result[2] != null
          ? MessageSource.values[result[2]! as int]
          : null,
      rssi: result[3] as int?,
      uasId: result[4]! as String,
      idType: result[5] != null
          ? IdType.values[result[5]! as int]
          : null,
      uaType: result[6] != null
          ? UaType.values[result[6]! as int]
          : null,
    );
  }
}

class LocationMessage {
  LocationMessage({
    required this.receivedTimestamp,
    required this.macAddress,
    this.source,
    this.rssi,
    this.status,
    this.heightType,
    this.direction,
    this.speedHorizontal,
    this.speedVertical,
    this.latitude,
    this.longitude,
    this.altitudePressure,
    this.altitudeGeodetic,
    this.height,
    this.horizontalAccuracy,
    this.verticalAccuracy,
    this.baroAccuracy,
    this.speedAccuracy,
    this.time,
    this.timeAccuracy,
  });

  int receivedTimestamp;

  String macAddress;

  MessageSource? source;

  int? rssi;

  /// The reported current status of the aircraft
  AircraftStatus? status;

  /// The type of reported height
  ///
  /// (The default type is takeoff height)
  HeightType? heightType;

  /// Direction of the aircraft heading (in degrees)
  double? direction;

  /// Horizontal speed of the aircraft
  double? speedHorizontal;

  /// Vertical speed of the aircraft
  double? speedVertical;

  /// Location latitude of the aircraft
  double? latitude;

  /// Location longitude of the aircraft
  double? longitude;

  /// Altitude calculcated from barometric pressure (in meters)
  double? altitudePressure;

  /// Altitude calculated from GNSS data (in meters)
  double? altitudeGeodetic;

  /// Current height of the aircraft
  double? height;

  /// Horizontal accuracy of reported position via GNSS
  HorizontalAccuracy? horizontalAccuracy;

  /// Vertical accuracy of reported altitude via GNSS
  VerticalAccuracy? verticalAccuracy;

  /// Vertical accuracy of reported altitude via barometric pressure
  VerticalAccuracy? baroAccuracy;

  /// Speed accuracy of reported position via GNSS
  SpeedAccuracy? speedAccuracy;

  /// Time of the location report
  int? time;

  /// Accuracy of timestamp values
  double? timeAccuracy;

  Object encode() {
    return <Object?>[
      receivedTimestamp,
      macAddress,
      source?.index,
      rssi,
      status?.index,
      heightType?.index,
      direction,
      speedHorizontal,
      speedVertical,
      latitude,
      longitude,
      altitudePressure,
      altitudeGeodetic,
      height,
      horizontalAccuracy?.index,
      verticalAccuracy?.index,
      baroAccuracy?.index,
      speedAccuracy?.index,
      time,
      timeAccuracy,
    ];
  }

  static LocationMessage decode(Object result) {
    result as List<Object?>;
    return LocationMessage(
      receivedTimestamp: result[0]! as int,
      macAddress: result[1]! as String,
      source: result[2] != null
          ? MessageSource.values[result[2]! as int]
          : null,
      rssi: result[3] as int?,
      status: result[4] != null
          ? AircraftStatus.values[result[4]! as int]
          : null,
      heightType: result[5] != null
          ? HeightType.values[result[5]! as int]
          : null,
      direction: result[6] as double?,
      speedHorizontal: result[7] as double?,
      speedVertical: result[8] as double?,
      latitude: result[9] as double?,
      longitude: result[10] as double?,
      altitudePressure: result[11] as double?,
      altitudeGeodetic: result[12] as double?,
      height: result[13] as double?,
      horizontalAccuracy: result[14] != null
          ? HorizontalAccuracy.values[result[14]! as int]
          : null,
      verticalAccuracy: result[15] != null
          ? VerticalAccuracy.values[result[15]! as int]
          : null,
      baroAccuracy: result[16] != null
          ? VerticalAccuracy.values[result[16]! as int]
          : null,
      speedAccuracy: result[17] != null
          ? SpeedAccuracy.values[result[17]! as int]
          : null,
      time: result[18] as int?,
      timeAccuracy: result[19] as double?,
    );
  }
}

class OperatorIdMessage {
  OperatorIdMessage({
    required this.receivedTimestamp,
    required this.macAddress,
    this.source,
    this.rssi,
    required this.operatorId,
  });

  /// Operator ID
  int receivedTimestamp;

  String macAddress;

  MessageSource? source;

  int? rssi;

  String operatorId;

  Object encode() {
    return <Object?>[
      receivedTimestamp,
      macAddress,
      source?.index,
      rssi,
      operatorId,
    ];
  }

  static OperatorIdMessage decode(Object result) {
    result as List<Object?>;
    return OperatorIdMessage(
      receivedTimestamp: result[0]! as int,
      macAddress: result[1]! as String,
      source: result[2] != null
          ? MessageSource.values[result[2]! as int]
          : null,
      rssi: result[3] as int?,
      operatorId: result[4]! as String,
    );
  }
}

class AuthenticationMessage {
  AuthenticationMessage({
    required this.receivedTimestamp,
    required this.macAddress,
    this.source,
    this.rssi,
    this.authType,
    required this.authDataPage,
    required this.authLastPageIndex,
    required this.authLength,
    required this.authTimestamp,
    required this.authData,
  });

  int receivedTimestamp;

  String macAddress;

  MessageSource? source;

  int? rssi;

  AuthType? authType;

  int authDataPage;

  int authLastPageIndex;

  int authLength;

  int authTimestamp;

  String authData;

  Object encode() {
    return <Object?>[
      receivedTimestamp,
      macAddress,
      source?.index,
      rssi,
      authType?.index,
      authDataPage,
      authLastPageIndex,
      authLength,
      authTimestamp,
      authData,
    ];
  }

  static AuthenticationMessage decode(Object result) {
    result as List<Object?>;
    return AuthenticationMessage(
      receivedTimestamp: result[0]! as int,
      macAddress: result[1]! as String,
      source: result[2] != null
          ? MessageSource.values[result[2]! as int]
          : null,
      rssi: result[3] as int?,
      authType: result[4] != null
          ? AuthType.values[result[4]! as int]
          : null,
      authDataPage: result[5]! as int,
      authLastPageIndex: result[6]! as int,
      authLength: result[7]! as int,
      authTimestamp: result[8]! as int,
      authData: result[9]! as String,
    );
  }
}

class SelfIdMessage {
  SelfIdMessage({
    required this.receivedTimestamp,
    required this.macAddress,
    this.source,
    this.rssi,
    required this.descriptionType,
    required this.operationDescription,
  });

  int receivedTimestamp;

  String macAddress;

  MessageSource? source;

  int? rssi;

  int descriptionType;

  String operationDescription;

  Object encode() {
    return <Object?>[
      receivedTimestamp,
      macAddress,
      source?.index,
      rssi,
      descriptionType,
      operationDescription,
    ];
  }

  static SelfIdMessage decode(Object result) {
    result as List<Object?>;
    return SelfIdMessage(
      receivedTimestamp: result[0]! as int,
      macAddress: result[1]! as String,
      source: result[2] != null
          ? MessageSource.values[result[2]! as int]
          : null,
      rssi: result[3] as int?,
      descriptionType: result[4]! as int,
      operationDescription: result[5]! as String,
    );
  }
}

class SystemDataMessage {
  SystemDataMessage({
    required this.receivedTimestamp,
    required this.macAddress,
    this.source,
    this.rssi,
    this.operatorLocationType,
    this.classificationType,
    required this.operatorLatitude,
    required this.operatorLongitude,
    required this.areaCount,
    required this.areaRadius,
    required this.areaCeiling,
    required this.areaFloor,
    this.category,
    this.classValue,
    required this.operatorAltitudeGeo,
  });

  int receivedTimestamp;

  String macAddress;

  MessageSource? source;

  int? rssi;

  OperatorLocationType? operatorLocationType;

  ClassificationType? classificationType;

  double operatorLatitude;

  double operatorLongitude;

  int areaCount;

  int areaRadius;

  double areaCeiling;

  double areaFloor;

  AircraftCategory? category;

  AircraftClass? classValue;

  double operatorAltitudeGeo;

  Object encode() {
    return <Object?>[
      receivedTimestamp,
      macAddress,
      source?.index,
      rssi,
      operatorLocationType?.index,
      classificationType?.index,
      operatorLatitude,
      operatorLongitude,
      areaCount,
      areaRadius,
      areaCeiling,
      areaFloor,
      category?.index,
      classValue?.index,
      operatorAltitudeGeo,
    ];
  }

  static SystemDataMessage decode(Object result) {
    result as List<Object?>;
    return SystemDataMessage(
      receivedTimestamp: result[0]! as int,
      macAddress: result[1]! as String,
      source: result[2] != null
          ? MessageSource.values[result[2]! as int]
          : null,
      rssi: result[3] as int?,
      operatorLocationType: result[4] != null
          ? OperatorLocationType.values[result[4]! as int]
          : null,
      classificationType: result[5] != null
          ? ClassificationType.values[result[5]! as int]
          : null,
      operatorLatitude: result[6]! as double,
      operatorLongitude: result[7]! as double,
      areaCount: result[8]! as int,
      areaRadius: result[9]! as int,
      areaCeiling: result[10]! as double,
      areaFloor: result[11]! as double,
      category: result[12] != null
          ? AircraftCategory.values[result[12]! as int]
          : null,
      classValue: result[13] != null
          ? AircraftClass.values[result[13]! as int]
          : null,
      operatorAltitudeGeo: result[14]! as double,
    );
  }
}

class ConnectionMessage {
  ConnectionMessage({
    required this.receivedTimestamp,
    required this.macAddress,
    this.source,
    this.rssi,
    required this.transportType,
    required this.lastSeen,
    required this.firstSeen,
    required this.msgDelta,
  });

  int receivedTimestamp;

  String macAddress;

  MessageSource? source;

  int? rssi;

  String transportType;

  int lastSeen;

  int firstSeen;

  int msgDelta;

  Object encode() {
    return <Object?>[
      receivedTimestamp,
      macAddress,
      source?.index,
      rssi,
      transportType,
      lastSeen,
      firstSeen,
      msgDelta,
    ];
  }

  static ConnectionMessage decode(Object result) {
    result as List<Object?>;
    return ConnectionMessage(
      receivedTimestamp: result[0]! as int,
      macAddress: result[1]! as String,
      source: result[2] != null
          ? MessageSource.values[result[2]! as int]
          : null,
      rssi: result[3] as int?,
      transportType: result[4]! as String,
      lastSeen: result[5]! as int,
      firstSeen: result[6]! as int,
      msgDelta: result[7]! as int,
    );
  }
}

class Api {
  /// Constructor for [Api].  The [binaryMessenger] named argument is
  /// available for dependency injection.  If it is left null, the default
  /// BinaryMessenger will be used which routes to the host platform.
  Api({BinaryMessenger? binaryMessenger})
      : _binaryMessenger = binaryMessenger;
  final BinaryMessenger? _binaryMessenger;

  static const MessageCodec<Object?> codec = StandardMessageCodec();

  Future<void> startScanBluetooth() async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.Api.startScanBluetooth', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(null) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }

  Future<void> startScanWifi() async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.Api.startScanWifi', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(null) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }

  Future<void> stopScanBluetooth() async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.Api.stopScanBluetooth', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(null) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }

  Future<void> stopScanWifi() async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.Api.stopScanWifi', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(null) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }

  Future<void> setBtScanPriority(ScanPriority arg_priority) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.Api.setBtScanPriority', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_priority.index]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }

  Future<bool> isScanningBluetooth() async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.Api.isScanningBluetooth', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(null) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else if (replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyList[0] as bool?)!;
    }
  }

  Future<bool> isScanningWifi() async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.Api.isScanningWifi', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(null) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else if (replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyList[0] as bool?)!;
    }
  }

  Future<int> bluetoothState() async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.Api.bluetoothState', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(null) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else if (replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyList[0] as int?)!;
    }
  }

  Future<int> wifiState() async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.Api.wifiState', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(null) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else if (replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyList[0] as int?)!;
    }
  }

  Future<bool> btExtendedSupported() async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.Api.btExtendedSupported', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(null) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else if (replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyList[0] as bool?)!;
    }
  }

  Future<int> btMaxAdvDataLen() async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.Api.btMaxAdvDataLen', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(null) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else if (replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyList[0] as int?)!;
    }
  }

  Future<bool> wifiNaNSupported() async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.Api.wifiNaNSupported', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(null) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else if (replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyList[0] as bool?)!;
    }
  }
}

class _MessageApiCodec extends StandardMessageCodec {
  const _MessageApiCodec();
  @override
  void writeValue(WriteBuffer buffer, Object? value) {
    if (value is AuthenticationMessage) {
      buffer.putUint8(128);
      writeValue(buffer, value.encode());
    } else if (value is BasicIdMessage) {
      buffer.putUint8(129);
      writeValue(buffer, value.encode());
    } else if (value is ConnectionMessage) {
      buffer.putUint8(130);
      writeValue(buffer, value.encode());
    } else if (value is LocationMessage) {
      buffer.putUint8(131);
      writeValue(buffer, value.encode());
    } else if (value is OperatorIdMessage) {
      buffer.putUint8(132);
      writeValue(buffer, value.encode());
    } else if (value is SelfIdMessage) {
      buffer.putUint8(133);
      writeValue(buffer, value.encode());
    } else if (value is SystemDataMessage) {
      buffer.putUint8(134);
      writeValue(buffer, value.encode());
    } else {
      super.writeValue(buffer, value);
    }
  }

  @override
  Object? readValueOfType(int type, ReadBuffer buffer) {
    switch (type) {
      case 128: 
        return AuthenticationMessage.decode(readValue(buffer)!);
      case 129: 
        return BasicIdMessage.decode(readValue(buffer)!);
      case 130: 
        return ConnectionMessage.decode(readValue(buffer)!);
      case 131: 
        return LocationMessage.decode(readValue(buffer)!);
      case 132: 
        return OperatorIdMessage.decode(readValue(buffer)!);
      case 133: 
        return SelfIdMessage.decode(readValue(buffer)!);
      case 134: 
        return SystemDataMessage.decode(readValue(buffer)!);
      default:
        return super.readValueOfType(type, buffer);
    }
  }
}

class MessageApi {
  /// Constructor for [MessageApi].  The [binaryMessenger] named argument is
  /// available for dependency injection.  If it is left null, the default
  /// BinaryMessenger will be used which routes to the host platform.
  MessageApi({BinaryMessenger? binaryMessenger})
      : _binaryMessenger = binaryMessenger;
  final BinaryMessenger? _binaryMessenger;

  static const MessageCodec<Object?> codec = _MessageApiCodec();

  Future<int?> determineMessageType(Uint8List arg_payload, int arg_offset) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.MessageApi.determineMessageType', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_payload, arg_offset]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return (replyList[0] as int?);
    }
  }

  Future<BasicIdMessage?> fromBufferBasic(Uint8List arg_payload, int arg_offset, String arg_macAddress) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.MessageApi.fromBufferBasic', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_payload, arg_offset, arg_macAddress]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return (replyList[0] as BasicIdMessage?);
    }
  }

  Future<LocationMessage?> fromBufferLocation(Uint8List arg_payload, int arg_offset, String arg_macAddress) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.MessageApi.fromBufferLocation', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_payload, arg_offset, arg_macAddress]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return (replyList[0] as LocationMessage?);
    }
  }

  Future<OperatorIdMessage?> fromBufferOperatorId(Uint8List arg_payload, int arg_offset, String arg_macAddress) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.MessageApi.fromBufferOperatorId', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_payload, arg_offset, arg_macAddress]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return (replyList[0] as OperatorIdMessage?);
    }
  }

  Future<SelfIdMessage?> fromBufferSelfId(Uint8List arg_payload, int arg_offset, String arg_macAddress) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.MessageApi.fromBufferSelfId', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_payload, arg_offset, arg_macAddress]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return (replyList[0] as SelfIdMessage?);
    }
  }

  Future<AuthenticationMessage?> fromBufferAuthentication(Uint8List arg_payload, int arg_offset, String arg_macAddress) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.MessageApi.fromBufferAuthentication', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_payload, arg_offset, arg_macAddress]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return (replyList[0] as AuthenticationMessage?);
    }
  }

  Future<SystemDataMessage?> fromBufferSystemData(Uint8List arg_payload, int arg_offset, String arg_macAddress) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.MessageApi.fromBufferSystemData', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_payload, arg_offset, arg_macAddress]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return (replyList[0] as SystemDataMessage?);
    }
  }

  Future<ConnectionMessage?> fromBufferConnection(Uint8List arg_payload, int arg_offset, String arg_macAddress) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.MessageApi.fromBufferConnection', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_payload, arg_offset, arg_macAddress]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return (replyList[0] as ConnectionMessage?);
    }
  }
}
