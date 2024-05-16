import 'package:flutter/material.dart';
import 'package:flutter_junia/api/user.dart';
import 'package:flutter_junia/model/user_model.dart';
import 'package:flutter_junia/widgets/myscaffold.dart';


class UsersScreen extends StatefulWidget {
  const UsersScreen({super.key});
  
  @override
  State<StatefulWidget> createState() {
    return _UsersScreenState();
  }
}

class _UsersScreenState extends State<UsersScreen> {
  late Future<List<UserModel>> futureUsers;
  @override
  void initState() {
    super.initState();
    futureUsers = User().fetchUsers();
  }


  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      name: 'Users',
      body: FutureBuilder<List<UserModel>>(
        future: futureUsers,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Erreur: ${snapshot.error} ${snapshot.stackTrace}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('Aucun utilisateur trouvé.'));
          } else {
            List<UserModel> users = snapshot.data!;
            return ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                UserModel user = users[index];
                return ListTile(
                  title: Text(user.firstName + ' ' + user.lastName),
                  subtitle: Text(user.email),
                  onTap: () {},
                );
              },
            );
          }
        },
      ),
    );
  }
}
