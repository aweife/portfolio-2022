import 'package:flutter/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';

/// Returns the style for a page title based on the [deviceScreenType] passed in.
TextStyle titleTextStyle(DeviceScreenType deviceScreenType) {
  double titleSize = deviceScreenType == DeviceScreenType.mobile ? 45 : 60;

  return TextStyle(
    fontWeight: FontWeight.w800,
    height: 0.9,
    fontSize: titleSize,
  );
}

/// Return the style for description text on a page based on the [deviceScreenType] passed in.
TextStyle descriptionTextStyle(DeviceScreenType deviceScreenType) {
  double descriptionSize =
      deviceScreenType == DeviceScreenType.mobile ? 15 : 20;

  return TextStyle(
    fontSize: descriptionSize,
    height: 1.7,
  );
}
