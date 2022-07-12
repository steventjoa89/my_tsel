import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_tsel/app/routes/app_pages.dart';
import 'package:my_tsel/app/routes/routes.dart';
import 'package:my_tsel/app/widgets/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(Duration(seconds: 3)),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return SplashScreen();
        } else {
          return GetMaterialApp(
            title: 'My Telkomsel',
            initialRoute: Routes.HOME,
            getPages: AppPages.routes,
          );
        }
      },
    );
  }
}
