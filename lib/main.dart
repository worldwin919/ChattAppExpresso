import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meals/screens/ChatScreen.dart';
import 'package:meals/screens/HomeScreen.dart';

import 'Theme/theme.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(   
      debugShowCheckedModeBanner: false,
      title: 'Chat App UI',
      theme: lightTheme(),
      darkTheme: darkTheme(),
      home: const HomeScreen(),
      getPages: [
        GetPage(name: '/', page: () => const HomeScreen()),
        GetPage(name: '/chat', page: () => const ChatScreen()),
      ],
    );
  }
}
