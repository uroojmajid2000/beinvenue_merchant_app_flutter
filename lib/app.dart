import 'package:bienvenue_merchant_app_flutter/screens/Splash/splash_screen.dart';
import 'package:bienvenue_merchant_app_flutter/utils/routes.dart';
import 'package:bienvenue_merchant_app_flutter/utils/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp(
      title: 'Bienvenue',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.themeData(),
      routes: Routes.routes,
      initialRoute: SplashScreen.id,
    );
  }
}
