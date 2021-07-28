import 'package:flutter/painting.dart';
import 'device_screen_type.dart';

class SizingInformation {
  final DeviceScreenType? deviceScreenType;
  final Size screenSize;
  final Size localWidgetSize;

  SizingInformation({
    this.deviceScreenType,
    required this.screenSize,
    required this.localWidgetSize,
  });

  @override
  String toString() {
    return 'DeviceType:$deviceScreenType ScreenSize: $screenSize LocalWidgetSIze : $localWidgetSize';
  }
}
