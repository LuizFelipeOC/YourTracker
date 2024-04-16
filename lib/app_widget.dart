import 'package:flutter/material.dart';

import 'app/routes/routes.dart';
import 'app/shared/themes/dark_theme.dart';
import 'app/shared/themes/ligth_theme.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: LightTheme().theme,
      darkTheme: DarkTheme().themeData,
      routerConfig: Routes.routes,
    );
  }
}
