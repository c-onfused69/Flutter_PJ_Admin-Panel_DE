import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/route_middleware.dart';

import 'routes.dart';

class TRouteMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    print(
        '.........................Middleware Called.........................');
    final isAuthenticated = false;
// ignore: dead_code
    return isAuthenticated
        ? null
        : const RouteSettings(name: TRoutes.firstScreen);
  }
}
