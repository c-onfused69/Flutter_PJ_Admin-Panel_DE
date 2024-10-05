import 'package:desh_engineering_app_backend/common/widgets/layouts/headers/header.dart';
import 'package:flutter/material.dart';

/// Widget for the tablet layout
class TabletLayout extends StatelessWidget {
  TabletLayout({super.key, this.body});

  final Widget? body;

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        drawer: const Drawer(),
        appBar: THeader(scaffoldKey: scaffoldKey),
        // BODY
        body: body ?? const SizedBox());
  }
}
