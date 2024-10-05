
import 'package:desh_engineering_app_backend/common/widgets/responsive/responsive_design.dart';
import 'package:desh_engineering_app_backend/common/widgets/responsive/screens/desktop_layout.dart';
import 'package:desh_engineering_app_backend/common/widgets/responsive/screens/mobile_layout.dart';
import 'package:desh_engineering_app_backend/common/widgets/responsive/screens/tablet_layout.dart';
import 'package:flutter/material.dart';

/// Template for the overall site layout, responsive to different screen sizes
class TSiteTemplate extends StatelessWidget {
const TSiteTemplate({super.key,  this.desktop,  this.tablet,  this.mobile, this.useLayout = true});

/// Widget for desktop layout
final Widget? desktop;

/// Widget for tablet layout
final Widget? tablet;

/// Widget for mobile layout
final Widget? mobile;

/// Flag to determine whether to use the layout
final bool useLayout;


@override
Widget build (BuildContext context) {
return Scaffold(
    body: TResponsiveWidget(
        desktop: useLayout ? DesktopLayout(body: desktop):desktop ?? Container(),
        tablet: useLayout ? TabletLayout(body: tablet ?? desktop):tablet ?? desktop ?? Container(),
        mobile: useLayout ? MobileLayout(body: mobile ?? desktop): mobile ?? desktop ?? Container(),)
);
}
}