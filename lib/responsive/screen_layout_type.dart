import 'package:flutter/material.dart';
import 'package:portfolio_sabin/responsive/device_screen_type.dart';
import 'package:portfolio_sabin/responsive/responsive_builder.dart';

import 'size_information.dart';

class ScreenLayoutType extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget? desktop;
  const ScreenLayoutType(
      {Key? key, required this.mobile, this.tablet, this.desktop})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (BuildContext context, SizingInformation sizeInfo) {
        if (sizeInfo.deviceScreenType == DeviceScreenType.Mobile) {
          return mobile;
        }
        if (sizeInfo.deviceScreenType == DeviceScreenType.Tablet) {
          return tablet ?? mobile;
        }
        return desktop ?? mobile;
      },
    );
  }
}
