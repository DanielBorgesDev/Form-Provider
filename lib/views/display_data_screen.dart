import 'package:app_provider/views/organization_form_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/user_provider.dart';

class DisplayDataScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context).user;

    return Scaffold(
      appBar: AppBar(
        title: Text('Preencha o Cadastro'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Nome: ${user.firstName ?? ''} '),
                Text('Ultimo Nome: ${user.lastName ?? ''} '),
                Text('Email: ${user.email ?? ''}'),
                Text('Titulo: ${user.title ?? ''}'),
                Text('Telefone: ${user.phone ?? ''}'),
                Text('Assunto da ideia: ${user.subjectIdea ?? ''}'),
                Text('Descrição da ideia: ${user.descriptionOfIdea ?? ''}'),
                SizedBox(
                    height:
                        20), // Adiciona um espaçamento entre o texto e o botão
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OrganizationFormView(),
                      ),
                    );
                  },
                  child: Text('Continuar o cadastro'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
