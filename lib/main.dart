import 'package:flutter/material.dart';
import 'package:flutter_application_3/config/theme/app_theme.dart';
import 'package:flutter_application_3/presentation/screens/chat/chat_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme(selectedColor: 1).theme(),
      title: 'Yes no App',
      debugShowCheckedModeBanner: false,
      home: const ChatScreen(),
    );
  }
}
