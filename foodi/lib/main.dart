import 'package:flutter/material.dart';
import 'package:foodi/pages/food/popular_food_detail.dart';
import 'package:foodi/pages/food/recommended_food_detail.dart';
import 'package:foodi/pages/home/main_food_page.dart';
import 'package:get/get.dart';
import 'package:foodi/helper/dependencies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RecommenededFoodDetail(),
    );
  }
}
