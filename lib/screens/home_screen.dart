import 'package:flutter/material.dart';
import 'package:flutter_junia/widgets/myscaffold.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<StatefulWidget> createState() {
    return _HomeScreen();
  }
}

class _HomeScreen extends State<HomeScreen> {
  void btAbout() {
    Navigator.pushNamed(
      context,
      '/about',
    );
  }

  void btMessage() {
    Navigator.pushNamed(
      context,
      '/message',
      arguments: 'Message passé en paramètre',
    );
  }

  @override
  Widget build(BuildContext context) {
    return const MyScaffold(
      name: 'Home',
      body: Center(),
    );
  }
}
