import 'package:enerji_clean/lib/app/pages/home/home_view.dart';
import 'package:enerji_clean/lib/app/pages/sphlash_screen/sphlash_screen_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
     
        primarySwatch: Colors.blue,
      ),
      home:HomeView(),
    );
  }
}

