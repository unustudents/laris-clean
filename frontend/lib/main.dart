import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:laris_clean/infrastructure/theme/theme_app.dart';

import 'infrastructure/navigation/navigation.dart';
import 'infrastructure/navigation/routes.dart';

void main() async {
  var initialRoute = await Routes.initialRoute;
  runApp(Main(initialRoute));
}

class Main extends StatelessWidget {
  final String initialRoute;
  const Main(this.initialRoute, {super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: initialRoute,
      getPages: Nav.routes,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      // theme: ThemeData(
      //   appBarTheme: const AppBarTheme(
      //     centerTitle: true,
      //     elevation: 10,
      //     backgroundColor: Colors.limeAccent,
      //   ),
      // ),
    );
  }
}
