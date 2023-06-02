import 'package:flutter/material.dart';
import 'package:rotimatic_p1/views/shop/shop_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color.fromARGB(246, 246, 150, 55),
          secondary: const Color(0xffF68945),
        ),
      ),
      // home: const HomePage(),
      home: const ShopScreen(),
    );
  }
}
