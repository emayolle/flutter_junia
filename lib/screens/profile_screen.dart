import 'package:flutter/material.dart';
import 'package:flutter_junia/providers/auth_provider.dart';
import 'package:flutter_junia/widgets/myscaffold.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<AuthProvider>(context);

    return MyScaffold(
      name: 'Profile',
      body: Center(
        child: Column(
          children: <Widget>[
            Text(auth.email),
            Text(auth.firstName),
            Text(auth.lastName),
          ],
        ),
      ),
    );
  }
}
