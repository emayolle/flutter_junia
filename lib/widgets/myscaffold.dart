import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
 import '../providers/auth_provider.dart';
class MyScaffold extends StatelessWidget {
  final Widget body;
  final String name;
  final List<Widget> actions;
  const MyScaffold(
      {Key? key,
      required this.body,
      required this.name,
      this.actions = const []})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
        final authProvider = Provider.of<AuthProvider>(context);


    return Scaffold(
      appBar: AppBar(
        title: Text(this.name, style: const TextStyle(color: Colors.white)),
        elevation: 10.0,
        centerTitle: true,
        actions: <Widget>[
          if (authProvider.isLoggedIn)
            IconButton(
              icon: const Icon(Icons.person, color: Colors.white),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/profile',
                );
              },
            ),
          if (!authProvider.isLoggedIn)
            IconButton(
              icon: const Icon(Icons.person_add, color: Colors.white),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/register',
                );
              },
            ),
          IconButton(
            icon: Icon( authProvider.isLoggedIn ? Icons.logout : Icons.login, color: Colors.white),
            onPressed: () {
               if (authProvider.isLoggedIn) {
                authProvider.logout();
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/login',
                  (Route<dynamic> route) => false,
                );
              } else {
                Navigator.pushNamed(
                  context,
                  '/login',
                );
              }
            },
          ),
        ],
      ),
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      body: body,
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.add),
      ),
    );
  }
}
