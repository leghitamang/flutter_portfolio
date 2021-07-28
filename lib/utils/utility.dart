import 'package:flutter/cupertino.dart';
import 'package:portfolio_sabin/responsive/device_screen_type.dart';
import 'package:portfolio_sabin/utils/constants.dart';

class Utility {
  DeviceScreenType? getDeviceScreenType(MediaQueryData mediaQueryData) {
    double deviceWidth = mediaQueryData.size.shortestSide;
    DeviceScreenType? screenType;
    if (deviceWidth <= kMobileBreakPoint) {
      screenType = DeviceScreenType.Mobile;
    }
    if (deviceWidth > kMobileBreakPoint && deviceWidth <= kTabletBreakPoint) {
      screenType = DeviceScreenType.Tablet;
    }
    if (deviceWidth > kTabletBreakPoint) {
      screenType = DeviceScreenType.Desktop;
    }
    return screenType;
  }
}
