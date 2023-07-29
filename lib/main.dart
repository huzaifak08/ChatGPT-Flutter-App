import 'package:chatgpt_app/Constants/constants.dart';
import 'package:chatgpt_app/Screens/chat_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: scaffoldBackgroundColor,
        appBarTheme: AppBarTheme(
          color: cardColor,
          titleTextStyle: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        // textTheme: TextTheme(
        //   bodyLarge: TextStyle(color: Colors.white),
        // ),
        // inputDecorationTheme: InputDecorationTheme(
        //     border:
        //         OutlineInputBorder(borderRadius: BorderRadius.circular(23))),
      ),
      home: const ChatScreen(),
    );
  }
}
