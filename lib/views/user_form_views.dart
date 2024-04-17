import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/user_provider.dart';
import '../views/display_data_screen.dart';

class UserFormScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBar(
          title: Text(''),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.white),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(16.0), 
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Cadastro de Usuário',
                  style: TextStyle(color: Colors.white, fontSize: 32.0),
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 54, 54, 54),
      body: Padding(
        padding: EdgeInsets.all(50.0),
        child: Consumer<UserProvider>(
          builder: (context, userProvider, _) {
            return Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 27, 27, 27),
                borderRadius: BorderRadius.circular(10.0),
              ),
              padding: EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: 'Primeiro Nome',
                    labelStyle: TextStyle(color: Colors.white)
                    ),
                  onChanged: (value) {
                    userProvider.updateUser(
                        userProvider.user.copyWith(firstName: value));
                  },
                ),
                TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: 'Sobrenome',
                    labelStyle: TextStyle(color: Colors.white)
                    ),
                  onChanged: (value) {
                    userProvider.updateUser(
                        userProvider.user.copyWith(lastName: value));
                  },
                ),
                TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.white)
                    ),
                  onChanged: (value) {
                    userProvider
                        .updateUser(userProvider.user.copyWith(email: value));
                  },
                ),
                TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: 'Título',
                    labelStyle: TextStyle(color: Colors.white)
                    ),
                  onChanged: (value) {
                    userProvider
                        .updateUser(userProvider.user.copyWith(title: value));
                  },
                ),
                TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: 'Telefone',
                    labelStyle: TextStyle(color: Colors.white)
                    ),
                  onChanged: (value) {
                    userProvider
                        .updateUser(userProvider.user.copyWith(phone: value));
                  },
                ),
                TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: 'Assunto da Ideia',
                    labelStyle: TextStyle(color: Colors.white)
                    ),
                  onChanged: (value) {
                    userProvider.updateUser(
                        userProvider.user.copyWith(subjectIdea: value));
                  },
                ),
                TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: 'Descrição da Ideia',
                    labelStyle: TextStyle(color: Colors.white)
                    ),
                  onChanged: (value) {
                    userProvider.updateUser(
                        userProvider.user.copyWith(descriptionOfIdea: value));
                  },
                ),
                SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DisplayDataScreen(),
                      ),
                    );
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 0, 0, 0)),
                    ),
                  child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text('Proximo', style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontSize: 16.0)),
                  ),
                 ),
                ),
              ],
             )
            );
          },
        ),
      ),
    );
  }
}
