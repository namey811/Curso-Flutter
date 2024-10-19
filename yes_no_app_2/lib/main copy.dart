import 'package:flutter/material.dart';
import 'package:yes_no_app_2/config/theme/app_theme.dart';
import 'package:yes_no_app_2/presentation/screen/chat/chat_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Chat Unitecnar',
        debugShowCheckedModeBanner: false,
        theme: AppTheme(selectedColor: 0).theme(),
        home: const ChatScreen());
  }
}
