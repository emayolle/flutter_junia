import 'package:flutter/material.dart';
import 'package:flutter_junia/screens/about_screen.dart';
import 'package:flutter_junia/screens/home_screen.dart';
import 'package:flutter_junia/screens/login_screen.dart';
import 'package:flutter_junia/screens/message_screen.dart';
import 'package:flutter_junia/screens/register_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.indigo,
        ),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/about': (context) => const AboutScreen(),
        '/message': (context) => const MessageScreen(),
        '/register': (context) => const RegisterScreen(),
        '/login': (context) => LoginScreen(),
      },
    );
  }
}
