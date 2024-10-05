import 'package:desh_engineering_app_backend/common/widgets/layouts/headers/header.dart';
import 'package:flutter/material.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key, this.body});

  final Widget? body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const Expanded(child: Drawer()),
          Expanded(
            flex: 5,
            child: Column(
              children: [
                // HEADER
                const THeader(),
                // BODY
                body ?? const SizedBox(),
              ],
            ), // Column
          ),
        ],
      ),
    );
  }
}
