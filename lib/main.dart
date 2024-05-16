import 'package:flutter/material.dart';
import 'package:flutter_junia/screens/profile_screen.dart';
import 'package:provider/provider.dart';
import 'package:flutter_junia/screens/about_screen.dart';
import 'package:flutter_junia/screens/home_screen.dart';
import 'package:flutter_junia/screens/login_screen.dart';
import 'package:flutter_junia/screens/message_screen.dart';
import 'package:flutter_junia/screens/register_screen.dart';
import 'package:flutter_junia/screens/users_screen.dart';
import 'providers/auth_provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => AuthProvider(),
    child: const MainApp(),
  ));
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
        '/profile': (context) => const ProfileScreen(),
        '/users': (context) => const UsersScreen(),
      },
    );
  }
}
