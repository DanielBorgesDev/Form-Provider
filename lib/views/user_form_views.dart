import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/user_provider.dart';
import '../views/display_data_screen.dart';

class UserFormScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Usuário'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Consumer<UserProvider>(
          builder: (context, userProvider, _) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  decoration: InputDecoration(labelText: 'Primeiro Nome'),
                  onChanged: (value) {
                    userProvider.updateUser(
                        userProvider.user.copyWith(firstName: value));
                  },
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Sobrenome'),
                  onChanged: (value) {
                    userProvider.updateUser(
                        userProvider.user.copyWith(lastName: value));
                  },
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Email'),
                  onChanged: (value) {
                    userProvider
                        .updateUser(userProvider.user.copyWith(email: value));
                  },
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Título'),
                  onChanged: (value) {
                    userProvider
                        .updateUser(userProvider.user.copyWith(title: value));
                  },
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Telefone'),
                  onChanged: (value) {
                    userProvider
                        .updateUser(userProvider.user.copyWith(phone: value));
                  },
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Assunto da Ideia'),
                  onChanged: (value) {
                    userProvider.updateUser(
                        userProvider.user.copyWith(subjectIdea: value));
                  },
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Descrição da Ideia'),
                  onChanged: (value) {
                    userProvider.updateUser(
                        userProvider.user.copyWith(descriptionOfIdea: value));
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DisplayDataScreen(),
                      ),
                    );
                  },
                  child: Text('Proximo'),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
