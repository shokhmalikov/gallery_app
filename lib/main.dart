import 'package:flutter/material.dart';
import 'package:gallery_app/pages/home/home_page.dart';
import 'package:gallery_app/pages/splash/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        HomePage.path:(context) => const HomePage(),
        SplashPage.path:(context) => const SplashPage(),
      },
      initialRoute: SplashPage.path,
    );
  }
}