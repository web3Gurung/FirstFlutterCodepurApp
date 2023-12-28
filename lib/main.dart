import 'package:flutter/material.dart';
import 'package:open_app/pages/home_page.dart';
import 'package:open_app/pages/login_page.dart';
import 'package:open_app/utils/routes.dart';
import 'package:open_app/widgets/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      darkTheme: MyTheme.darkTheme,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => const LoginPage(),
        MyRoutes.homeRoute: (context) => const HomePage(),
        MyRoutes.loginRoute: (context) => const LoginPage()
      },
    );
  }
}
