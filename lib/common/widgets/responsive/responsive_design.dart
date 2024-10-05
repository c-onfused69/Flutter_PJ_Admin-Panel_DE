import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';

/// Widget for displaying different layouts based on screen size
class TResponsiveWidget extends StatelessWidget {
  const TResponsiveWidget(
      {super.key,
      required this.desktop,
      required this.tablet,
      required this.mobile});

  /// Widget for desktop layout
  final Widget desktop;

  /// Widget for tablet layout
  final Widget tablet;

  /// Widget for mobile layout
  final Widget mobile;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        if (constraints.maxWidth >= TSizes.desktopScreenSize) {
          return desktop;
        } else if (constraints.maxWidth < TSizes.desktopScreenSize &&
            constraints.maxWidth >= TSizes.tabletScreenSize) {
          return tablet;
        } else {
          return mobile;
        }
      },
    );
  }
}
