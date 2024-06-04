import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vital_child/client/01_authorization/1_login/login.dart';
import 'package:vital_child/utils/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,
        theme: VcTheme.lightTheme,

        // show a circular progress indicator while authentication repo is deciding what relevant screen to show
        home: const LoginScreen());
  }
}
