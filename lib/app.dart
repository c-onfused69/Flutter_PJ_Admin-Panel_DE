import 'package:desh_engineering_app_backend/common/widgets/layouts/headers/header.dart';
import 'package:desh_engineering_app_backend/common/widgets/layouts/templates/site_layout.dart';
import 'package:desh_engineering_app_backend/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'routes/routes.dart';

import 'utils/constants/text_strings.dart';
import 'utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: TTexts.appName,
      themeMode: ThemeMode.light,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      getPages: TAppRoute.pages,
      initialRoute: TRoutes.,
      unknownRoute: GetPage(
          name: '/page-not-found',
          page: () => Scaffold(body: Center(child: Text('Page Not Found')))),
    );
  }
}

class ResponsiveDesignScreen extends StatelessWidget {
  const ResponsiveDesignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const TSiteTemplate(
      useLayout: false,
      desktop: Desktop(),
      tablet: Tablet(),
      mobile: Mobile(),
    );
  }
}

class Desktop extends StatelessWidget {
  const Desktop({super.key});

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
                Expanded(
                  child: GridView.count(
                    padding: const EdgeInsets.all(20.0),
                    crossAxisSpacing: 20.0,
                    mainAxisSpacing: 20.0,
                    crossAxisCount: 3,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(8),
                        color: Colors.lightBlue[100],
                        child: const Center(child: Text('BOX 1')),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        color: Colors.amber[100],
                        child: const Center(child: Text('BOX 2')),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        color: Colors.pink[100],
                        child: const Center(child: Text('BOX 3')),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        color: Colors.green[100],
                        child: const Center(child: Text('BOX 4')),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        color: Colors.grey[300],
                        child: const Center(child: Text('BOX 5')),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        color: Colors.purple[100],
                        child: const Center(child: Text('BOX 6')),
                      ),
                    ],
                  ),
                ),
              ],
            ), // Column
          ),
        ],
      ),
    );
  }
}

class Tablet extends StatelessWidget {
  const Tablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: const THeader(),
      // BODY
      body: GridView.count(
        padding: const EdgeInsets.all(20.0),
        crossAxisSpacing: 20.0,
        mainAxisSpacing: 20.0,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.lightBlue[100],
            child: const Center(child: Text('BOX 1')),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.amber[100],
            child: const Center(child: Text('BOX 2')),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.pink[100],
            child: const Center(child: Text('BOX 3')),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.green[100],
            child: const Center(child: Text('BOX 4')),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.grey[300],
            child: const Center(child: Text('BOX 5')),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.purple[100],
            child: const Center(child: Text('BOX 6')),
          ),
        ],
      ),
    );
  }
}

class Mobile extends StatelessWidget {
  const Mobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: const THeader(),
      // BODY
      body: GridView.count(
        padding: const EdgeInsets.all(20.0),
        crossAxisSpacing: 20.0,
        mainAxisSpacing: 20.0,
        crossAxisCount: 1,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.lightBlue[100],
            child: const Center(child: Text('BOX 1')),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.amber[100],
            child: const Center(child: Text('BOX 2')),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.pink[100],
            child: const Center(child: Text('BOX 3')),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.green[100],
            child: const Center(child: Text('BOX 4')),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.grey[300],
            child: const Center(child: Text('BOX 5')),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.purple[100],
            child: const Center(child: Text('BOX 6')),
          ),
        ],
      ),
    );
  }
}
