import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jazzcash_ui/screens/home/home.dart';

void main() {
  runApp(ScreenUtilInit(designSize: const Size(360, 690),builder: (context, child) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const int _blackPrimaryValue = 0xFF000000;

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Jazz Cash UI',
      home: HomeScreen(),
    );
  }
}
