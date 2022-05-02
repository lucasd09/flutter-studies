import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'pages/home/home_page.dart';
import 'pages/home/clubs/clubs_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(
          name: '/',
          page: () => const HomePage(), children: [
            GetPage(
              name: '/clubs',
              page: () => const ClubsPage()
            )
          ])
      ],
    );
  }
}

