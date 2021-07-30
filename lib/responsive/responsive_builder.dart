import 'package:flutter/material.dart';
import 'package:portfolio_sabin/utils/utility.dart';
import 'size_information.dart';

class ResponsiveBuilder extends StatelessWidget {
  final Widget Function(BuildContext context, SizingInformation sizeInfo)
      builder;

  const ResponsiveBuilder({Key? key, required this.builder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints boxConstraint) {
        var sizingInfo = SizingInformation(
            deviceScreenType: Utility().getDeviceType(mediaQuery),
            screenSize: mediaQuery.size,
            localWidgetSize:
                Size(boxConstraint.maxWidth, boxConstraint.maxHeight));
        return builder(context, sizingInfo);
      },
    );
  }
}
