import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'application/theme_provider.dart';
import 'routing/router.dart';
import 'utils/styles.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp() {
    final FluroRouter router = FluroRouter();
    Routes.configureRoutes(router);
    Routes.router = router;
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<DarkThemeProvider>(
      create: (BuildContext context) => DarkThemeProvider(),
      child: Consumer<DarkThemeProvider>(
        builder: (BuildContext context, model, Widget? child) {
          return MaterialApp(
            title: 'Gradient Chat',
            debugShowCheckedModeBanner: false,
            theme: Styles().theme,
            onGenerateRoute: Routes.router.generator,
          );
        },
      ),
    );
  }
}
