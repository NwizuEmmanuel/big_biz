import 'package:big_biz/providers/shop_navigator.dart';
import 'package:big_biz/screens/tel_form_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:provider/provider.dart';

void main() {
  FlutterNativeSplash.removeAfter(initializeFunction);
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=> ShopNavigator())
      ],
      child: const MyApp(),
    ),
  );
}

void initializeFunction(BuildContext context) async {}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TelFormPage(),
    );
  }
}
